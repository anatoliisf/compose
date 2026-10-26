--!strict

local Benchmark = require "../../.lute/dependencies/verify/src/benchmark"
local Verify = require "../../.lute/dependencies/verify/src/core"
local Frameworks = require "../harness/frameworks"
local Workloads = require "../workloads"
local Lock = require "../../dependencies.lock"
local Environment = require "../cost-model"

export type WorkMetric = { name: string, label: string, read: (Environment.Counters) -> number }

local WORK: { WorkMetric } = {
	{
		name = "writes",
		label = "Writes",
		read = function(counters: Environment.Counters): number
			return counters.propertyWrites
		end,
	},
	{
		name = "created",
		label = "Created",
		read = function(counters: Environment.Counters): number
			return counters.instancesCreated
		end,
	},
	{
		name = "connections",
		label = "Connections",
		read = function(counters: Environment.Counters): number
			return counters.connectionsMade
		end,
	},
	{
		name = "deferred",
		label = "Deferred",
		read = function(counters: Environment.Counters): number
			return counters.tasksDeferred
		end,
	},
}

local function store(name: string, report: Verify.Report): Benchmark.Stored
	local measurements: { Benchmark.StoredMeasurement } = {}
	for _, result in report.results do
		if result.status ~= "passed" or result.evidence == nil then
			continue
		end
		for _, measurement in result.evidence.measurements do
			table.insert(measurements, {
				name = measurement.name,
				unit = measurement.input.unit,
				environment = measurement.input.context.environment,
				samples = table.clone(measurement.input.samples),
			})
		end
	end
	return { schemaVersion = 1, name = name, measurements = measurements }
end

local function median(samples: { number }): number
	assert(#samples > 0, "median needs samples")
	local sorted = table.clone(samples)
	table.sort(sorted)
	local middle = (#sorted + 1) // 2
	return if #sorted % 2 == 1 then sorted[middle] else (sorted[middle] + sorted[middle + 1]) / 2
end

local function ratio(value: number, reference: number): string
	return if reference > 0 then ("%.2fx"):format(value / reference) else "n/a (zero baseline)"
end

local function escape(value: string): string
	return (value:gsub("|", "\\|"):gsub("\n", " "))
end

local function workOf(byName: { [string]: Benchmark.StoredMeasurement }, prefix: string): string?
	local cells: { string } = {}
	for _, metric in WORK do
		local measurement = byName[prefix .. "/work/" .. metric.name]
		if measurement == nil then
			return nil
		end
		table.insert(cells, ("%d"):format(median(measurement.samples)))
	end
	return table.concat(cells, " | ")
end

local function markdown(
	run: Benchmark.Stored,
	workloads: { Workloads.Workload },
	frameworks: { Frameworks.Framework }
): (string, boolean)
	local byName: { [string]: Benchmark.StoredMeasurement } = {}
	for _, measurement in run.measurements do
		byName[measurement.name] = measurement
	end
	local lines = {
		"# Framework comparison",
		"",
		"Headless cost-model samples. Time is per complete workload sample, including its iteration count. Ratios divide by Compose; lower is smaller. Heap is the mounted retained Luau estimate. Writes, Created, Connections and Deferred count the engine property writes, instances, signal connections and deferred tasks of the timed iterations. A zero heap baseline has no ratio. These results do not measure Roblox engine performance.",
		"",
		"| Workload | Iterations | Framework | Median time (us) | / Compose | Median heap (KiB) | / Compose | Teardown (KiB) | Writes | Created | Connections | Deferred |",
		"| --- | ---: | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |",
	}
	local complete = true
	for _, workload in workloads do
		local composeTime = byName[workload.id .. "/compose"]
		local composeHeap = byName[workload.id .. "/compose/memory/mounted"]
		for _, framework in frameworks do
			local prefix = workload.id .. "/" .. framework.name
			local time = byName[prefix]
			local heap = byName[prefix .. "/memory/mounted"]
			local teardown = byName[prefix .. "/memory/teardown"]
			if workload.cases[framework.name] == nil then
				local reason = assert(
					workload.unsupported and workload.unsupported[framework.name],
					"unsupported reason is missing"
				)
				table.insert(
					lines,
					("| %s | %d | %s | unsupported: %s | — | — | — | — | — | — | — | — |"):format(
						workload.id,
						workload.iterations,
						framework.name,
						escape(reason)
					)
				)
			elseif time and heap and teardown and composeTime and composeHeap and workOf(byName, prefix) then
				local timeMedian, heapMedian = median(time.samples), median(heap.samples)
				table.insert(
					lines,
					("| %s | %d | %s | %.3f | %s | %.3f | %s | %.3f | %s |"):format(
						workload.id,
						workload.iterations,
						framework.name,
						timeMedian,
						ratio(timeMedian, median(composeTime.samples)),
						heapMedian,
						ratio(heapMedian, median(composeHeap.samples)),
						median(teardown.samples),
						assert(workOf(byName, prefix))
					)
				)
			else
				complete = false
				table.insert(
					lines,
					("| %s | %d | %s | missing evidence | — | — | — | — | — | — | — | — |"):format(
						workload.id,
						workload.iterations,
						framework.name
					)
				)
			end
		end
	end
	table.insert(lines, "\n## Source identities\n")
	table.insert(
		lines,
		"Compose revision: `"
			.. run.name
			.. "`. Full source state, tools, environment and command are in `context.json`.\n"
	)
	table.insert(lines, "| Dependency | Version | Commit | Tree | Rights |")
	table.insert(lines, "| --- | --- | --- | --- | --- |")
	for _, dependency in Lock.dependencies do
		if dependency.name == "verify" then
			continue
		end
		table.insert(
			lines,
			("| %s | %s | `%s` | `%s` | %s |"):format(
				dependency.name,
				dependency.version,
				dependency.commit,
				dependency.tree,
				dependency.rights
			)
		)
	end
	table.insert(
		lines,
		"\nRaw samples, calibration attempts, parity results and heap readings are in the evidence artifact. Unsupported rows are omissions with reasons, not performance results. Missing evidence does not qualify as a complete comparison.\n"
	)
	return table.concat(lines, "\n"), complete
end

return { WORK = WORK, markdown = markdown, median = median, store = store }

# Framework comparison

This page records measurements of Compose and other Roblox UI libraries on the same 24 runtime workloads.

- Compose commit: `1559013` (bench/fair-react-comparison, 2026-10-27)
- Run: [Framework comparison #40614245361](https://github.com/anatoliisf/compose/actions/runs/40614245361) on the GitHub-hosted Ubuntu runner
- Verdict: release. Only passed measurements appear in the table.
- Method: [Manual framework comparison](benchmarks.md#manual-framework-comparison). The workflow runs the parity checks before timing, and both are headless cost-model measurements. They do not measure Roblox engine rendering.

Each ratio divides a measurement by the Compose measurement. A value below 1.00x is smaller. To update this record, run the workflow again. Then replace this page with its results.

These samples use a headless cost model. Time covers one complete workload sample, including all its iterations. Lower ratios mean smaller measurements. Heap estimates retained Luau memory while mounted. Writes, Created, Connections and Deferred count property writes, instances, signal connections and deferred tasks during timed iterations. A zero heap baseline has no ratio. These results do not measure Roblox engine performance.

| Workload | Iterations | Framework | Median time (us) | / Compose | Median heap (KiB) | / Compose | Teardown (KiB) | Writes | Created | Connections | Deferred |
| --- | ---: | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| cold-mount-100 | 1 | bare | 455.514 | 1.39x | 571.000 | 0.98x | 16.000 | 100 | 101 | 0 | 0 |
| cold-mount-100 | 1 | compose | 326.994 | 1.00x | 583.000 | 1.00x | 25.000 | 100 | 101 | 0 | 0 |
| cold-mount-100 | 1 | fusion | 554.012 | 1.69x | 571.000 | 0.98x | 8.000 | 803 | 101 | 0 | 0 |
| cold-mount-100 | 1 | vide | 531.273 | 1.62x | 569.000 | 0.98x | 8.000 | 703 | 101 | 0 | 0 |
| cold-mount-100 | 1 | react | 976.782 | 2.99x | 681.000 | 1.17x | 77.000 | 200 | 101 | 0 | 0 |
| cold-mount-100 | 1 | blend | 1029.801 | 3.15x | 716.000 | 1.23x | 16.000 | 803 | 101 | 0 | 0 |
| cold-mount-100 | 1 | roact | 537.322 | 1.64x | 670.000 | 1.15x | 8.000 | 201 | 101 | 0 | 0 |
| cold-mount-100 | 1 | seam | 640.112 | 1.96x | 576.000 | 0.99x | 8.000 | 100 | 101 | 1 | 0 |
| cold-mount-100 | 1 | signals | 316.998 | 0.97x | 576.000 | 0.99x | 18.000 | 100 | 101 | 0 | 0 |
| cold-mount-100 | 1 | react-reflex | 783.554 | 2.40x | 674.000 | 1.16x | 76.000 | 200 | 101 | 0 | 0 |
| cold-mount-100 | 1 | fusion-charm | 604.594 | 1.85x | 587.000 | 1.01x | 24.000 | 803 | 101 | 0 | 0 |
| cold-mount-100 | 1 | compose-adapter | 385.101 | 1.18x | 573.000 | 0.98x | 16.000 | 100 | 101 | 0 | 0 |
| cold-mount-100 | 1 | react-upstream | 1007.102 | 3.08x | 674.000 | 1.16x | 77.000 | 200 | 101 | 0 | 0 |
| cold-mount-1000 | 1 | bare | 4292.871 | 0.75x | 5605.000 | 1.00x | 121.000 | 1000 | 1001 | 0 | 0 |
| cold-mount-1000 | 1 | compose | 5688.160 | 1.00x | 5609.000 | 1.00x | 129.000 | 1000 | 1001 | 0 | 0 |
| cold-mount-1000 | 1 | fusion | 7461.100 | 1.31x | 5655.000 | 1.01x | 128.000 | 8003 | 1001 | 0 | 0 |
| cold-mount-1000 | 1 | vide | 6152.662 | 1.08x | 5653.000 | 1.01x | 128.000 | 7003 | 1001 | 0 | 0 |
| cold-mount-1000 | 1 | react | 8071.877 | 1.42x | 6630.000 | 1.18x | 653.000 | 2000 | 1001 | 0 | 0 |
| cold-mount-1000 | 1 | blend | 9857.080 | 1.73x | 6952.000 | 1.24x | 128.000 | 8003 | 1001 | 0 | 0 |
| cold-mount-1000 | 1 | roact | 6748.614 | 1.19x | 6572.000 | 1.17x | 128.000 | 2001 | 1001 | 0 | 0 |
| cold-mount-1000 | 1 | seam | 5659.147 | 0.99x | 5667.000 | 1.01x | 128.000 | 1000 | 1001 | 1 | 0 |
| cold-mount-1000 | 1 | signals | 4915.272 | 0.86x | 5660.000 | 1.01x | 152.000 | 1000 | 1001 | 0 | 0 |
| cold-mount-1000 | 1 | react-reflex | 9939.305 | 1.75x | 6629.000 | 1.18x | 652.000 | 2000 | 1001 | 0 | 0 |
| cold-mount-1000 | 1 | fusion-charm | 7348.926 | 1.29x | 5663.000 | 1.01x | 128.000 | 8003 | 1001 | 0 | 0 |
| cold-mount-1000 | 1 | compose-adapter | 5772.534 | 1.01x | 5615.000 | 1.00x | 128.000 | 1000 | 1001 | 0 | 0 |
| cold-mount-1000 | 1 | react-upstream | 7976.429 | 1.40x | 6630.000 | 1.18x | 653.000 | 2000 | 1001 | 0 | 0 |
| cold-mount-10000 | 1 | bare | 64569.672 | 0.80x | 57029.000 | 1.00x | 2049.000 | 10000 | 10001 | 0 | 0 |
| cold-mount-10000 | 1 | compose | 80437.590 | 1.00x | 57132.000 | 1.00x | 2051.000 | 10000 | 10001 | 0 | 0 |
| cold-mount-10000 | 1 | fusion | 100897.558 | 1.25x | 57763.000 | 1.01x | 2049.000 | 80003 | 10001 | 0 | 0 |
| cold-mount-10000 | 1 | vide | 91728.788 | 1.14x | 57578.000 | 1.01x | 2049.000 | 70003 | 10001 | 0 | 0 |
| cold-mount-10000 | 1 | react | 119832.687 | 1.49x | 67562.000 | 1.18x | 7728.000 | 20000 | 10001 | 0 | 0 |
| cold-mount-10000 | 1 | blend | 136216.870 | 1.69x | 70449.000 | 1.23x | 2057.000 | 80003 | 10001 | 0 | 0 |
| cold-mount-10000 | 1 | roact | 98119.526 | 1.22x | 66766.000 | 1.17x | 2049.000 | 20001 | 10001 | 0 | 0 |
| cold-mount-10000 | 1 | seam | 84871.406 | 1.06x | 58021.000 | 1.02x | 2056.000 | 10000 | 10001 | 1 | 0 |
| cold-mount-10000 | 1 | signals | 71257.374 | 0.89x | 57589.000 | 1.01x | 2304.000 | 10000 | 10001 | 0 | 0 |
| cold-mount-10000 | 1 | react-reflex | 105858.688 | 1.32x | 67563.000 | 1.18x | 7728.000 | 20000 | 10001 | 0 | 0 |
| cold-mount-10000 | 1 | fusion-charm | 91769.680 | 1.14x | 57747.000 | 1.01x | 2056.000 | 80003 | 10001 | 0 | 0 |
| cold-mount-10000 | 1 | compose-adapter | 73045.196 | 0.91x | 57122.000 | 1.00x | 2049.000 | 10000 | 10001 | 0 | 0 |
| cold-mount-10000 | 1 | react-upstream | 101938.110 | 1.27x | 67554.000 | 1.18x | 7728.000 | 20000 | 10001 | 0 | 0 |
| mount-dispose | 5 | bare | 4587.408 | 1.06x | 136.000 | 0.99x | 128.000 | 1000 | 1005 | 0 | 0 |
| mount-dispose | 5 | compose | 4338.667 | 1.00x | 138.000 | 1.00x | 137.000 | 1000 | 1005 | 0 | 0 |
| mount-dispose | 5 | fusion | 6228.122 | 1.44x | 129.000 | 0.93x | 128.000 | 8015 | 1005 | 0 | 0 |
| mount-dispose | 5 | vide | 5026.915 | 1.16x | 129.000 | 0.93x | 128.000 | 7015 | 1005 | 0 | 0 |
| mount-dispose | 5 | react | 7399.837 | 1.71x | 246.000 | 1.78x | 245.000 | 2000 | 1005 | 0 | 0 |
| mount-dispose | 5 | blend | 10113.528 | 2.33x | 129.000 | 0.93x | 128.000 | 8015 | 1005 | 0 | 0 |
| mount-dispose | 5 | roact | 5609.482 | 1.29x | 136.000 | 0.99x | 136.000 | 2005 | 1005 | 0 | 0 |
| mount-dispose | 5 | seam | 4779.538 | 1.10x | 129.000 | 0.93x | 128.000 | 1000 | 1005 | 5 | 0 |
| mount-dispose | 5 | signals | 3827.624 | 0.88x | 141.000 | 1.02x | 132.000 | 1000 | 1005 | 0 | 0 |
| mount-dispose | 5 | react-reflex | 7781.008 | 1.79x | 246.000 | 1.78x | 245.000 | 2000 | 1005 | 0 | 0 |
| mount-dispose | 5 | fusion-charm | 6581.090 | 1.52x | 129.000 | 0.93x | 128.000 | 8015 | 1005 | 0 | 0 |
| mount-dispose | 5 | compose-adapter | 4462.409 | 1.03x | 129.000 | 0.93x | 120.000 | 1000 | 1005 | 0 | 0 |
| mount-dispose | 5 | react-upstream | 8230.527 | 1.90x | 246.000 | 1.78x | 245.000 | 2000 | 1005 | 0 | 0 |
| update-leaf | 50 | bare | 9.124 | 0.46x | 2816.000 | 1.00x | 64.000 | 50 | 0 | 0 | 0 |
| update-leaf | 50 | compose | 19.970 | 1.00x | 2812.000 | 1.00x | 65.000 | 50 | 0 | 0 | 0 |
| update-leaf | 50 | fusion | 77.552 | 3.88x | 2827.000 | 1.01x | 64.000 | 50 | 0 | 0 | 0 |
| update-leaf | 50 | vide | 45.454 | 2.28x | 2826.000 | 1.00x | 64.000 | 50 | 0 | 0 | 0 |
| update-leaf | 50 | react | 37.327 | 1.87x | 3325.000 | 1.18x | 324.000 | 50 | 0 | 0 | 0 |
| update-leaf | 50 | blend | 47.622 | 2.38x | 3484.000 | 1.24x | 64.000 | 50 | 0 | 0 | 0 |
| update-leaf | 50 | roact | 27.321 | 1.37x | 3286.000 | 1.17x | 64.000 | 50 | 0 | 0 | 0 |
| update-leaf | 50 | seam | 74.749 | 3.74x | 2849.000 | 1.01x | 64.000 | 50 | 0 | 0 | 0 |
| update-leaf | 50 | signals | 50.672 | 2.54x | 2833.000 | 1.01x | 72.000 | 50 | 0 | 0 | 0 |
| update-leaf | 50 | react-reflex | 67.872 | 3.40x | 3328.000 | 1.18x | 325.000 | 50 | 0 | 50 | 0 |
| update-leaf | 50 | fusion-charm | 172.666 | 8.65x | 2845.000 | 1.01x | 64.000 | 50 | 0 | 0 | 0 |
| update-leaf | 50 | compose-adapter | 33.110 | 1.66x | 2826.000 | 1.00x | 64.000 | 50 | 0 | 0 | 0 |
| update-leaf | 50 | react-upstream | 37.667 | 1.89x | 3325.000 | 1.18x | 324.000 | 50 | 0 | 0 | 0 |
| update-fanout | 20 | bare | 457.721 | 0.59x | 1715.000 | 0.92x | 56.000 | 6000 | 0 | 0 | 0 |
| update-fanout | 20 | compose | 772.638 | 1.00x | 1861.000 | 1.00x | 65.000 | 6000 | 0 | 0 | 0 |
| update-fanout | 20 | fusion | 5655.716 | 7.32x | 1989.000 | 1.07x | 96.000 | 6000 | 0 | 0 | 0 |
| update-fanout | 20 | vide | 2637.445 | 3.41x | 1908.000 | 1.03x | 64.000 | 6000 | 0 | 0 | 0 |
| update-fanout | 20 | react | 932.569 | 1.21x | 2182.000 | 1.17x | 258.000 | 6000 | 0 | 0 | 0 |
| update-fanout | 20 | blend | 2257.090 | 2.92x | 2295.000 | 1.23x | 64.000 | 6000 | 0 | 0 | 0 |
| update-fanout | 20 | roact | 1257.811 | 1.63x | 2126.000 | 1.14x | 64.000 | 6000 | 0 | 0 | 0 |
| update-fanout | 20 | seam | 2082.517 | 2.70x | 2205.000 | 1.18x | 80.000 | 6000 | 0 | 0 | 0 |
| update-fanout | 20 | signals | 2570.664 | 3.33x | 2011.000 | 1.08x | 88.000 | 6000 | 0 | 0 | 0 |
| update-fanout | 20 | react-reflex | 953.851 | 1.23x | 2185.000 | 1.17x | 258.000 | 6000 | 0 | 20 | 0 |
| update-fanout | 20 | fusion-charm | 5706.884 | 7.39x | 1991.000 | 1.07x | 96.000 | 6000 | 0 | 0 | 0 |
| update-fanout | 20 | compose-adapter | 785.287 | 1.02x | 1868.000 | 1.00x | 64.000 | 6000 | 0 | 0 | 0 |
| update-fanout | 20 | react-upstream | 932.819 | 1.21x | 2174.000 | 1.17x | 258.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | bare | 455.198 | 0.36x | 1722.000 | 0.89x | 64.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | compose | 1252.012 | 1.00x | 1925.000 | 1.00x | 73.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | fusion | 7625.112 | 6.09x | 2248.000 | 1.17x | 128.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | vide | 3117.411 | 2.49x | 2053.000 | 1.07x | 64.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | react | 1490.302 | 1.19x | 2578.000 | 1.34x | 491.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | blend | 3924.510 | 3.13x | 2567.000 | 1.33x | 64.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | roact | 2444.143 | 1.95x | 2581.000 | 1.34x | 64.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | seam | 4583.326 | 3.66x | 2996.000 | 1.56x | 101.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | signals | 3901.406 | 3.12x | 2350.000 | 1.22x | 104.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | react-reflex | 14584.760 | 11.65x | 3575.000 | 1.86x | 522.000 | 6000 | 0 | 6000 | 0 |
| update-batched | 20 | fusion-charm | 15025.135 | 12.00x | 2846.000 | 1.48x | 144.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | compose-adapter | 1447.397 | 1.16x | 2021.000 | 1.05x | 72.000 | 6000 | 0 | 0 | 0 |
| update-batched | 20 | react-upstream | 1498.824 | 1.20x | 2578.000 | 1.34x | 483.000 | 6000 | 0 | 0 | 0 |
| update-repeated | 10 | bare | 19.890 | 0.15x | 14.000 | 0.78x | 0.000 | 10 | 0 | 0 | 0 |
| update-repeated | 10 | compose | 130.287 | 1.00x | 18.000 | 1.00x | 1.000 | 10 | 0 | 0 | 0 |
| update-repeated | 10 | fusion | unsupported: No public transaction API coalesces the 500 source writes into one host property write. | — | — | — | — | — | — | — | — |
| update-repeated | 10 | vide | 421.768 | 3.24x | 16.000 | 0.89x | 0.000 | 10 | 0 | 0 | 0 |
| update-repeated | 10 | react | 6453.381 | 49.53x | 177.000 | 9.83x | 177.000 | 10 | 0 | 0 | 0 |
| update-repeated | 10 | blend | 2807.582 | 21.55x | 20.000 | 1.11x | 0.000 | 10 | 0 | 0 | 10 |
| update-repeated | 10 | roact | unsupported: Roact has no public batch transaction that coalesces 500 binding writes into one host property write. | — | — | — | — | — | — | — | — |
| update-repeated | 10 | seam | 1253.984 | 9.62x | 19.000 | 1.06x | 0.000 | 10 | 0 | 0 | 0 |
| update-repeated | 10 | signals | 778.737 | 5.98x | 17.000 | 0.94x | 0.000 | 10 | 0 | 0 | 0 |
| update-repeated | 10 | react-reflex | 254.204 | 1.95x | 19.000 | 1.06x | 1.000 | 10 | 0 | 10 | 0 |
| update-repeated | 10 | fusion-charm | 1545.015 | 11.86x | 28.000 | 1.56x | 1.000 | 10 | 0 | 0 | 0 |
| update-repeated | 10 | compose-adapter | 150.577 | 1.16x | 17.000 | 0.94x | 0.000 | 10 | 0 | 0 | 0 |
| update-repeated | 10 | react-upstream | 6179.007 | 47.43x | 177.000 | 9.83x | 177.000 | 10 | 0 | 0 | 0 |
| branch-swap | 20 | bare | 1315.017 | 0.58x | 147.000 | 0.96x | 128.000 | 500 | 510 | 0 | 0 |
| branch-swap | 20 | compose | 2267.607 | 1.00x | 153.000 | 1.00x | 129.000 | 500 | 510 | 0 | 0 |
| branch-swap | 20 | fusion | 2867.464 | 1.26x | 143.000 | 0.93x | 128.000 | 4030 | 510 | 0 | 0 |
| branch-swap | 20 | vide | 2608.272 | 1.15x | 143.000 | 0.93x | 128.000 | 3530 | 510 | 0 | 0 |
| branch-swap | 20 | react | 4707.554 | 2.08x | 499.000 | 3.26x | 143.000 | 1010 | 510 | 0 | 0 |
| branch-swap | 20 | blend | 5256.433 | 2.32x | 166.000 | 1.08x | 128.000 | 4030 | 510 | 0 | 0 |
| branch-swap | 20 | roact | 3457.595 | 1.52x | 155.000 | 1.01x | 135.000 | 1010 | 510 | 0 | 0 |
| branch-swap | 20 | seam | 2987.424 | 1.32x | 3011.000 | 19.68x | 149.000 | 500 | 510 | 10 | 0 |
| branch-swap | 20 | signals | unsupported: Signals has no native conditional Instance ownership primitive; adding a scene reconciler would change this state-only lane. | — | — | — | — | — | — | — | — |
| branch-swap | 20 | react-reflex | 4906.936 | 2.16x | 502.000 | 3.28x | 147.000 | 1010 | 510 | 20 | 0 |
| branch-swap | 20 | fusion-charm | 3382.902 | 1.49x | 161.000 | 1.05x | 128.000 | 4030 | 510 | 0 | 0 |
| branch-swap | 20 | compose-adapter | 2466.036 | 1.09x | 160.000 | 1.05x | 128.000 | 500 | 510 | 0 | 0 |
| branch-swap | 20 | react-upstream | 4876.039 | 2.15x | 499.000 | 3.26x | 144.000 | 1010 | 510 | 0 | 0 |
| ordered-window-scroll | 50 | bare | unsupported: the workload measures a Compose primitive's idle scroll cost; there is no hand-written equivalent to compare | — | — | — | — | — | — | — | — |
| ordered-window-scroll | 50 | compose | 318.811 | 1.00x | 1123.000 | 1.00x | 0.000 | 0 | 0 | 0 | 0 |
| ordered-window-scroll | 50 | fusion | unsupported: No native ordered window collection with the workload's retained range and geometry contract. | — | — | — | — | — | — | — | — |
| ordered-window-scroll | 50 | vide | unsupported: No native ordered window collection with the workload's retained range and geometry contract. | — | — | — | — | — | — | — | — |
| ordered-window-scroll | 50 | react | unsupported: No native ordered window collection with the workload's retained range and geometry contract. | — | — | — | — | — | — | — | — |
| ordered-window-scroll | 50 | blend | unsupported: No native ordered window collection with the workload's retained range and geometry contract. | — | — | — | — | — | — | — | — |
| ordered-window-scroll | 50 | roact | unsupported: No native ordered window collection with the workload's retained range and geometry contract. | — | — | — | — | — | — | — | — |
| ordered-window-scroll | 50 | seam | unsupported: No native ordered window collection with the workload's retained range and geometry contract. | — | — | — | — | — | — | — | — |
| ordered-window-scroll | 50 | signals | unsupported: No native ordered window collection with the workload's retained range and geometry contract. | — | — | — | — | — | — | — | — |
| ordered-window-scroll | 50 | react-reflex | unsupported: No native ordered window collection with the workload's retained range and geometry contract. | — | — | — | — | — | — | — | — |
| ordered-window-scroll | 50 | fusion-charm | unsupported: No native ordered window collection with the workload's retained range and geometry contract. | — | — | — | — | — | — | — | — |
| ordered-window-scroll | 50 | compose-adapter | unsupported: No native ordered window collection with the workload's retained range and geometry contract. | — | — | — | — | — | — | — | — |
| ordered-window-scroll | 50 | react-upstream | unsupported: No native ordered window collection with the workload's retained range and geometry contract. | — | — | — | — | — | — | — | — |
| keyed-append | 10 | bare | 735.932 | 0.80x | 1763.000 | 0.78x | 64.000 | 100 | 50 | 0 | 0 |
| keyed-append | 10 | compose | 914.452 | 1.00x | 2254.000 | 1.00x | 65.000 | 100 | 50 | 0 | 0 |
| keyed-append | 10 | fusion | unsupported: The pinned native ForPairs mapper can reassign a removed key's scope to a retained key. The shrink step fails retained-node identity. | — | — | — | — | — | — | — | — |
| keyed-append | 10 | vide | 1064.058 | 1.16x | 2337.000 | 1.04x | 64.000 | 400 | 50 | 0 | 0 |
| keyed-append | 10 | react | 8980.260 | 9.82x | 2645.000 | 1.17x | 133.000 | 150 | 50 | 0 | 0 |
| keyed-append | 10 | blend | 2462.731 | 2.69x | 3107.000 | 1.38x | 64.000 | 3500 | 50 | 0 | 0 |
| keyed-append | 10 | roact | 3867.344 | 4.23x | 2044.000 | 0.91x | 64.000 | 150 | 50 | 0 | 0 |
| keyed-append | 10 | seam | 7402.767 | 8.10x | 3504.000 | 1.55x | 133.000 | 350 | 50 | 100 | 50 |
| keyed-append | 10 | signals | unsupported: Signals supplies state and effects, with no native keyed Instance collection or row lifetime primitive. | — | — | — | — | — | — | — | — |
| keyed-append | 10 | react-reflex | 8434.706 | 9.22x | 2648.000 | 1.17x | 137.000 | 150 | 50 | 10 | 0 |
| keyed-append | 10 | fusion-charm | unsupported: The pinned native ForPairs mapper can reassign a removed key's scope to a retained key. The shrink step fails retained-node identity. | — | — | — | — | — | — | — | — |
| keyed-append | 10 | compose-adapter | 916.685 | 1.00x | 2256.000 | 1.00x | 64.000 | 100 | 50 | 0 | 0 |
| keyed-append | 10 | react-upstream | 8443.509 | 9.23x | 2645.000 | 1.17x | 133.000 | 150 | 50 | 0 | 0 |
| keyed-prepend | 10 | bare | 910.716 | 0.38x | 1763.000 | 0.78x | 64.000 | 3100 | 50 | 0 | 0 |
| keyed-prepend | 10 | compose | 2412.235 | 1.00x | 2255.000 | 1.00x | 66.000 | 3100 | 50 | 0 | 0 |
| keyed-prepend | 10 | fusion | unsupported: The pinned native ForPairs mapper can reassign a removed key's scope to a retained key. The shrink step fails retained-node identity. | — | — | — | — | — | — | — | — |
| keyed-prepend | 10 | vide | 2946.072 | 1.22x | 2337.000 | 1.04x | 64.000 | 3400 | 50 | 0 | 0 |
| keyed-prepend | 10 | react | 11956.479 | 4.96x | 2592.000 | 1.15x | 141.000 | 3150 | 50 | 0 | 0 |
| keyed-prepend | 10 | blend | 2967.054 | 1.23x | 3107.000 | 1.38x | 64.000 | 3500 | 50 | 0 | 0 |
| keyed-prepend | 10 | roact | 5221.080 | 2.16x | 2044.000 | 0.91x | 64.000 | 3150 | 50 | 0 | 0 |
| keyed-prepend | 10 | seam | 9044.428 | 3.75x | 3497.000 | 1.55x | 141.000 | 3350 | 50 | 100 | 50 |
| keyed-prepend | 10 | signals | unsupported: Signals supplies state and effects, with no native keyed Instance collection or row lifetime primitive. | — | — | — | — | — | — | — | — |
| keyed-prepend | 10 | react-reflex | 12158.715 | 5.04x | 2596.000 | 1.15x | 136.000 | 3150 | 50 | 10 | 0 |
| keyed-prepend | 10 | fusion-charm | unsupported: The pinned native ForPairs mapper can reassign a removed key's scope to a retained key. The shrink step fails retained-node identity. | — | — | — | — | — | — | — | — |
| keyed-prepend | 10 | compose-adapter | 2743.360 | 1.14x | 2339.000 | 1.04x | 80.000 | 3100 | 50 | 0 | 0 |
| keyed-prepend | 10 | react-upstream | 12259.136 | 5.08x | 2593.000 | 1.15x | 133.000 | 3150 | 50 | 0 | 0 |
| keyed-insert | 10 | bare | 877.777 | 0.53x | 1763.000 | 0.78x | 64.000 | 1600 | 50 | 0 | 0 |
| keyed-insert | 10 | compose | 1662.262 | 1.00x | 2258.000 | 1.00x | 62.000 | 1600 | 50 | 0 | 0 |
| keyed-insert | 10 | fusion | unsupported: The pinned native ForPairs mapper can reassign a removed key's scope to a retained key. The shrink step fails retained-node identity. | — | — | — | — | — | — | — | — |
| keyed-insert | 10 | vide | 1965.770 | 1.18x | 2337.000 | 1.03x | 64.000 | 1900 | 50 | 0 | 0 |
| keyed-insert | 10 | react | 11229.299 | 6.76x | 2618.000 | 1.16x | 133.000 | 1650 | 50 | 0 | 0 |
| keyed-insert | 10 | blend | 2532.707 | 1.52x | 3107.000 | 1.38x | 64.000 | 3500 | 50 | 0 | 0 |
| keyed-insert | 10 | roact | 4265.580 | 2.57x | 2051.000 | 0.91x | 72.000 | 1650 | 50 | 0 | 0 |
| keyed-insert | 10 | seam | 7989.292 | 4.81x | 3497.000 | 1.55x | 133.000 | 1850 | 50 | 100 | 50 |
| keyed-insert | 10 | signals | unsupported: Signals supplies state and effects, with no native keyed Instance collection or row lifetime primitive. | — | — | — | — | — | — | — | — |
| keyed-insert | 10 | react-reflex | 12097.974 | 7.28x | 2621.000 | 1.16x | 144.000 | 1650 | 50 | 10 | 0 |
| keyed-insert | 10 | fusion-charm | unsupported: The pinned native ForPairs mapper can reassign a removed key's scope to a retained key. The shrink step fails retained-node identity. | — | — | — | — | — | — | — | — |
| keyed-insert | 10 | compose-adapter | 2037.639 | 1.23x | 2306.000 | 1.02x | 68.000 | 1600 | 50 | 0 | 0 |
| keyed-insert | 10 | react-upstream | 13357.070 | 8.04x | 2618.000 | 1.16x | 133.000 | 1650 | 50 | 0 | 0 |
| keyed-remove | 10 | bare | 787.310 | 0.44x | 1759.000 | 0.78x | 64.000 | 1510 | 50 | 0 | 0 |
| keyed-remove | 10 | compose | 1790.776 | 1.00x | 2254.000 | 1.00x | 62.000 | 1510 | 50 | 0 | 0 |
| keyed-remove | 10 | fusion | unsupported: The pinned native ForPairs mapper can reassign a removed key's scope to a retained key. The shrink step fails retained-node identity. | — | — | — | — | — | — | — | — |
| keyed-remove | 10 | vide | 2376.852 | 1.33x | 2337.000 | 1.04x | 56.000 | 1810 | 50 | 0 | 0 |
| keyed-remove | 10 | react | 11788.046 | 6.58x | 2544.000 | 1.13x | 133.000 | 1560 | 50 | 0 | 0 |
| keyed-remove | 10 | blend | 3596.476 | 2.01x | 3098.000 | 1.37x | 64.000 | 3400 | 50 | 0 | 0 |
| keyed-remove | 10 | roact | 4892.925 | 2.73x | 2050.000 | 0.91x | 72.000 | 1560 | 50 | 0 | 0 |
| keyed-remove | 10 | seam | 8819.218 | 4.92x | 3496.000 | 1.55x | 132.000 | 1810 | 50 | 100 | 50 |
| keyed-remove | 10 | signals | unsupported: Signals supplies state and effects, with no native keyed Instance collection or row lifetime primitive. | — | — | — | — | — | — | — | — |
| keyed-remove | 10 | react-reflex | 11728.506 | 6.55x | 2547.000 | 1.13x | 136.000 | 1560 | 50 | 10 | 0 |
| keyed-remove | 10 | fusion-charm | unsupported: The pinned native ForPairs mapper can reassign a removed key's scope to a retained key. The shrink step fails retained-node identity. | — | — | — | — | — | — | — | — |
| keyed-remove | 10 | compose-adapter | 2072.532 | 1.16x | 2302.000 | 1.02x | 68.000 | 1510 | 50 | 0 | 0 |
| keyed-remove | 10 | react-upstream | 12239.278 | 6.83x | 2544.000 | 1.13x | 141.000 | 1560 | 50 | 0 | 0 |
| keyed-replace | 10 | bare | 26076.788 | 0.48x | 2223.000 | 0.82x | 512.000 | 6000 | 3000 | 0 | 0 |
| keyed-replace | 10 | compose | 54324.116 | 1.00x | 2715.000 | 1.00x | 514.000 | 6000 | 3000 | 0 | 0 |
| keyed-replace | 10 | fusion | 103744.334 | 1.91x | 4032.000 | 1.49x | 1022.000 | 27300 | 3000 | 0 | 0 |
| keyed-replace | 10 | vide | 57641.719 | 1.06x | 2832.000 | 1.04x | 512.000 | 24000 | 3000 | 0 | 0 |
| keyed-replace | 10 | react | 78221.782 | 1.44x | 4539.000 | 1.67x | 615.000 | 9000 | 3000 | 0 | 0 |
| keyed-replace | 10 | blend | 116853.300 | 2.15x | 6173.000 | 2.27x | 512.000 | 30000 | 3000 | 0 | 0 |
| keyed-replace | 10 | roact | 34543.844 | 0.64x | 2514.000 | 0.93x | 512.000 | 9000 | 3000 | 0 | 0 |
| keyed-replace | 10 | seam | 105351.011 | 1.94x | 31575.000 | 11.63x | 724.000 | 22500 | 3000 | 6000 | 3000 |
| keyed-replace | 10 | signals | unsupported: Signals supplies state and effects, with no native keyed Instance collection or row lifetime primitive. | — | — | — | — | — | — | — | — |
| keyed-replace | 10 | react-reflex | 74209.684 | 1.37x | 4542.000 | 1.67x | 618.000 | 9000 | 3000 | 10 | 0 |
| keyed-replace | 10 | fusion-charm | 90680.208 | 1.67x | 4020.000 | 1.48x | 1025.000 | 27300 | 3000 | 0 | 0 |
| keyed-replace | 10 | compose-adapter | 48349.998 | 0.89x | 2463.000 | 0.91x | 256.000 | 6000 | 3000 | 0 | 0 |
| keyed-replace | 10 | react-upstream | 73594.949 | 1.35x | 4547.000 | 1.67x | 615.000 | 9000 | 3000 | 0 | 0 |
| keyed-reverse | 10 | bare | 627.438 | 0.39x | 1759.000 | 0.78x | 64.000 | 3000 | 0 | 0 | 0 |
| keyed-reverse | 10 | compose | 1628.980 | 1.00x | 2258.000 | 1.00x | 66.000 | 3000 | 0 | 0 | 0 |
| keyed-reverse | 10 | fusion | 12754.576 | 7.83x | 3170.000 | 1.40x | 192.000 | 3000 | 0 | 0 | 0 |
| keyed-reverse | 10 | vide | 1731.206 | 1.06x | 2320.000 | 1.03x | 64.000 | 3000 | 0 | 0 | 0 |
| keyed-reverse | 10 | react | 33221.263 | 20.39x | 2529.000 | 1.12x | 140.000 | 3000 | 0 | 0 | 0 |
| keyed-reverse | 10 | blend | 1252.243 | 0.77x | 3056.000 | 1.35x | 64.000 | 3000 | 0 | 0 | 0 |
| keyed-reverse | 10 | roact | 4271.575 | 2.62x | 2043.000 | 0.90x | 64.000 | 3000 | 0 | 0 | 0 |
| keyed-reverse | 10 | seam | 6547.144 | 4.02x | 3044.000 | 1.35x | 137.000 | 3000 | 0 | 0 | 0 |
| keyed-reverse | 10 | signals | unsupported: Signals supplies state and effects, with no native keyed Instance collection or row lifetime primitive. | — | — | — | — | — | — | — | — |
| keyed-reverse | 10 | react-reflex | 34056.362 | 20.91x | 2532.000 | 1.12x | 143.000 | 3000 | 0 | 10 | 0 |
| keyed-reverse | 10 | fusion-charm | 12704.047 | 7.80x | 3180.000 | 1.41x | 192.000 | 3000 | 0 | 0 | 0 |
| keyed-reverse | 10 | compose-adapter | 1971.840 | 1.21x | 2338.000 | 1.04x | 80.000 | 3000 | 0 | 0 | 0 |
| keyed-reverse | 10 | react-upstream | 32982.198 | 20.25x | 2529.000 | 1.12x | 140.000 | 3000 | 0 | 0 | 0 |
| keyed-rotate | 10 | bare | 593.598 | 0.36x | 1759.000 | 0.78x | 64.000 | 3000 | 0 | 0 | 0 |
| keyed-rotate | 10 | compose | 1667.670 | 1.00x | 2258.000 | 1.00x | 66.000 | 3000 | 0 | 0 | 0 |
| keyed-rotate | 10 | fusion | 12130.641 | 7.27x | 3170.000 | 1.40x | 192.000 | 3000 | 0 | 0 | 0 |
| keyed-rotate | 10 | vide | 1749.063 | 1.05x | 2320.000 | 1.03x | 64.000 | 3000 | 0 | 0 | 0 |
| keyed-rotate | 10 | react | 22466.380 | 13.47x | 2529.000 | 1.12x | 140.000 | 3000 | 0 | 0 | 0 |
| keyed-rotate | 10 | blend | 1135.886 | 0.68x | 3056.000 | 1.35x | 64.000 | 3000 | 0 | 0 | 0 |
| keyed-rotate | 10 | roact | 4212.065 | 2.53x | 2043.000 | 0.90x | 64.000 | 3000 | 0 | 0 | 0 |
| keyed-rotate | 10 | seam | 6441.464 | 3.86x | 3044.000 | 1.35x | 132.000 | 3000 | 0 | 0 | 0 |
| keyed-rotate | 10 | signals | unsupported: Signals supplies state and effects, with no native keyed Instance collection or row lifetime primitive. | — | — | — | — | — | — | — | — |
| keyed-rotate | 10 | react-reflex | 21232.115 | 12.73x | 2532.000 | 1.12x | 134.000 | 3000 | 0 | 10 | 0 |
| keyed-rotate | 10 | fusion-charm | 12373.799 | 7.42x | 3180.000 | 1.41x | 192.000 | 3000 | 0 | 0 | 0 |
| keyed-rotate | 10 | compose-adapter | 1986.742 | 1.19x | 2338.000 | 1.04x | 80.000 | 3000 | 0 | 0 | 0 |
| keyed-rotate | 10 | react-upstream | 21402.341 | 12.83x | 2529.000 | 1.12x | 140.000 | 3000 | 0 | 0 | 0 |
| keyed-shuffle | 10 | bare | 645.425 | 0.39x | 1759.000 | 0.78x | 64.000 | 2990 | 0 | 0 | 0 |
| keyed-shuffle | 10 | compose | 1663.423 | 1.00x | 2258.000 | 1.00x | 66.000 | 2990 | 0 | 0 | 0 |
| keyed-shuffle | 10 | fusion | 12076.655 | 7.26x | 3170.000 | 1.40x | 192.000 | 2990 | 0 | 0 | 0 |
| keyed-shuffle | 10 | vide | 1763.054 | 1.06x | 2320.000 | 1.03x | 64.000 | 2990 | 0 | 0 | 0 |
| keyed-shuffle | 10 | react | 19776.426 | 11.89x | 2529.000 | 1.12x | 140.000 | 2990 | 0 | 0 | 0 |
| keyed-shuffle | 10 | blend | 1225.251 | 0.74x | 3056.000 | 1.35x | 64.000 | 3000 | 0 | 0 | 0 |
| keyed-shuffle | 10 | roact | 4036.618 | 2.43x | 2043.000 | 0.90x | 64.000 | 2990 | 0 | 0 | 0 |
| keyed-shuffle | 10 | seam | 6410.024 | 3.85x | 3044.000 | 1.35x | 132.000 | 2990 | 0 | 0 | 0 |
| keyed-shuffle | 10 | signals | unsupported: Signals supplies state and effects, with no native keyed Instance collection or row lifetime primitive. | — | — | — | — | — | — | — | — |
| keyed-shuffle | 10 | react-reflex | 20017.133 | 12.03x | 2532.000 | 1.12x | 134.000 | 2990 | 0 | 10 | 0 |
| keyed-shuffle | 10 | fusion-charm | 12270.099 | 7.38x | 3180.000 | 1.41x | 192.000 | 2990 | 0 | 0 | 0 |
| keyed-shuffle | 10 | compose-adapter | 2001.454 | 1.20x | 2338.000 | 1.04x | 80.000 | 2990 | 0 | 0 | 0 |
| keyed-shuffle | 10 | react-upstream | 19781.581 | 11.89x | 2529.000 | 1.12x | 140.000 | 2990 | 0 | 0 | 0 |
| events | 5 | bare | 5866.510 | 0.79x | 129.000 | 0.93x | 128.000 | 1000 | 1005 | 1000 | 0 |
| events | 5 | compose | 7458.141 | 1.00x | 138.000 | 1.00x | 137.000 | 1000 | 1005 | 1000 | 0 |
| events | 5 | fusion | 9247.780 | 1.24x | 129.000 | 0.93x | 128.000 | 9015 | 1005 | 1000 | 0 |
| events | 5 | vide | 7142.869 | 0.96x | 129.000 | 0.93x | 128.000 | 8015 | 1005 | 1000 | 0 |
| events | 5 | react | 10249.779 | 1.37x | 276.000 | 2.00x | 275.000 | 2000 | 1005 | 1000 | 0 |
| events | 5 | blend | 14872.304 | 1.99x | 129.000 | 0.93x | 128.000 | 9015 | 1005 | 1000 | 0 |
| events | 5 | roact | 9433.601 | 1.26x | 128.000 | 0.93x | 128.000 | 2005 | 1005 | 1000 | 0 |
| events | 5 | seam | 7827.198 | 1.05x | 129.000 | 0.93x | 128.000 | 1000 | 1005 | 1005 | 0 |
| events | 5 | signals | 5860.371 | 0.79x | 144.000 | 1.04x | 152.000 | 1000 | 1005 | 1000 | 0 |
| events | 5 | react-reflex | 10097.067 | 1.35x | 276.000 | 2.00x | 267.000 | 2000 | 1005 | 1000 | 0 |
| events | 5 | fusion-charm | 9038.073 | 1.21x | 137.000 | 0.99x | 129.000 | 9015 | 1005 | 1000 | 0 |
| events | 5 | compose-adapter | 7321.613 | 0.98x | 129.000 | 0.93x | 129.000 | 1000 | 1005 | 1000 | 0 |
| events | 5 | react-upstream | 11228.752 | 1.51x | 276.000 | 2.00x | 274.000 | 2000 | 1005 | 1000 | 0 |
| animate-many | 1 | bare | 962.945 | 0.25x | 1547.000 | 0.67x | 32.000 | 6000 | 0 | 0 | 0 |
| animate-many | 1 | compose | 3848.521 | 1.00x | 2316.000 | 1.00x | 33.000 | 6000 | 0 | 1 | 0 |
| animate-many | 1 | fusion | 97214.132 | 25.26x | 2754.000 | 1.19x | 164.000 | 3600 | 0 | 0 | 0 |
| animate-many | 1 | vide | 5714.685 | 1.48x | 1967.000 | 0.85x | 44.000 | 6000 | 0 | 0 | 30 |
| animate-many | 1 | react | unsupported: React and ReactRoblox have no native spring primitive. Adding another animation library would change the comparison. | — | — | — | — | — | — | — | — |
| animate-many | 1 | blend | 6925.279 | 1.80x | 2734.000 | 1.18x | 104.000 | 6200 | 0 | 200 | 0 |
| animate-many | 1 | roact | unsupported: Roact has no native spring primitive. | — | — | — | — | — | — | — | — |
| animate-many | 1 | seam | 15843.851 | 4.12x | 3602.000 | 1.56x | 69.000 | 3600 | 0 | 0 | 0 |
| animate-many | 1 | signals | unsupported: Signals has no native spring primitive. | — | — | — | — | — | — | — | — |
| animate-many | 1 | react-reflex | unsupported: React and ReactRoblox have no native spring primitive. Adding another animation library would change the comparison. | — | — | — | — | — | — | — | — |
| animate-many | 1 | fusion-charm | 103037.922 | 26.77x | 2763.000 | 1.19x | 164.000 | 3600 | 0 | 0 | 0 |
| animate-many | 1 | compose-adapter | 3794.534 | 0.99x | 2331.000 | 1.01x | 48.000 | 6000 | 0 | 1 | 0 |
| animate-many | 1 | react-upstream | unsupported: React and ReactRoblox have no native spring primitive. Adding another animation library would change the comparison. | — | — | — | — | — | — | — | — |
| status-panel | 20 | bare | 86.836 | 0.35x | 148.000 | 0.81x | 2.000 | 82 | 21 | 0 | 0 |
| status-panel | 20 | compose | 246.281 | 1.00x | 182.000 | 1.00x | 0.000 | 82 | 21 | 0 | 0 |
| status-panel | 20 | fusion | 1539.241 | 6.25x | 249.000 | 1.37x | 6.000 | 229 | 21 | 0 | 0 |
| status-panel | 20 | vide | 246.702 | 1.00x | 190.000 | 1.04x | 2.000 | 208 | 21 | 0 | 0 |
| status-panel | 20 | react | 1670.014 | 6.78x | 228.000 | 1.25x | 16.000 | 103 | 21 | 0 | 0 |
| status-panel | 20 | blend | 500.272 | 2.03x | 258.000 | 1.42x | 2.000 | 438 | 21 | 0 | 0 |
| status-panel | 20 | roact | 427.581 | 1.74x | 178.000 | 0.98x | 2.000 | 103 | 21 | 0 | 0 |
| status-panel | 20 | seam | unsupported: Seam's native computed-property type guard rejects the workload's synthetic Frame.Text property, whose default type is nil. | — | — | — | — | — | — | — | — |
| status-panel | 20 | signals | unsupported: Signals supplies state and effects, with no native keyed Instance collection or row lifetime primitive. | — | — | — | — | — | — | — | — |
| status-panel | 20 | react-reflex | 1835.984 | 7.45x | 238.000 | 1.31x | 28.000 | 103 | 21 | 60 | 0 |
| status-panel | 20 | fusion-charm | 1734.941 | 7.04x | 263.000 | 1.45x | 14.000 | 229 | 21 | 0 | 0 |
| status-panel | 20 | compose-adapter | 195.515 | 0.79x | 195.000 | 1.07x | 10.000 | 82 | 21 | 0 | 0 |
| status-panel | 20 | react-upstream | 1615.881 | 6.56x | 228.000 | 1.25x | 17.000 | 103 | 21 | 0 | 0 |
| mount-cycles | 1 | bare | 11091.907 | 0.71x | 249.000 | 1.92x | 256.000 | 1800 | 1830 | 1800 | 0 |
| mount-cycles | 1 | compose | 15680.426 | 1.00x | 130.000 | 1.00x | 129.000 | 1800 | 1830 | 1800 | 0 |
| mount-cycles | 1 | fusion | 18633.383 | 1.19x | 257.000 | 1.98x | 256.000 | 16290 | 1830 | 1800 | 0 |
| mount-cycles | 1 | vide | 15050.283 | 0.96x | 257.000 | 1.98x | 257.000 | 14490 | 1830 | 1800 | 0 |
| mount-cycles | 1 | react | 22453.220 | 1.43x | 315.000 | 2.42x | 315.000 | 3600 | 1830 | 1800 | 0 |
| mount-cycles | 1 | blend | 31323.527 | 2.00x | 136.000 | 1.05x | 136.000 | 16290 | 1830 | 1800 | 0 |
| mount-cycles | 1 | roact | 17538.297 | 1.12x | 129.000 | 0.99x | 128.000 | 3630 | 1830 | 1800 | 0 |
| mount-cycles | 1 | seam | 14393.595 | 0.92x | 121.000 | 0.93x | 128.000 | 1800 | 1830 | 1830 | 0 |
| mount-cycles | 1 | signals | 13605.675 | 0.87x | 253.000 | 1.95x | 260.000 | 1800 | 1830 | 1800 | 0 |
| mount-cycles | 1 | react-reflex | 23353.604 | 1.49x | 315.000 | 2.42x | 314.000 | 3600 | 1830 | 1800 | 0 |
| mount-cycles | 1 | fusion-charm | 17166.364 | 1.09x | 265.000 | 2.04x | 264.000 | 16290 | 1830 | 1800 | 0 |
| mount-cycles | 1 | compose-adapter | 15363.591 | 0.98x | 257.000 | 1.98x | 257.000 | 1800 | 1830 | 1800 | 0 |
| mount-cycles | 1 | react-upstream | 20405.091 | 1.30x | 315.000 | 2.42x | 314.000 | 3600 | 1830 | 1800 | 0 |
| scene-3d | 20 | bare | 1902.309 | 0.46x | 1067.000 | 0.85x | 32.000 | 6000 | 0 | 0 | 0 |
| scene-3d | 20 | compose | 4130.360 | 1.00x | 1258.000 | 1.00x | 34.000 | 6000 | 0 | 0 | 0 |
| scene-3d | 20 | fusion | 52992.234 | 12.83x | 1670.000 | 1.33x | 96.000 | 6000 | 0 | 0 | 0 |
| scene-3d | 20 | vide | 5081.949 | 1.23x | 1287.000 | 1.02x | 32.000 | 6000 | 0 | 0 | 0 |
| scene-3d | 20 | react | 3022.923 | 0.73x | 1556.000 | 1.24x | 306.000 | 6000 | 0 | 0 | 0 |
| scene-3d | 20 | blend | 4871.060 | 1.18x | 1598.000 | 1.27x | 32.000 | 6000 | 0 | 0 | 0 |
| scene-3d | 20 | roact | unsupported: Roact assigns Instance.Name from reconciliation keys. Named children use dictionary keys, whose mounting order cannot satisfy this workload's ordered named-tree contract. | — | — | — | — | — | — | — | — |
| scene-3d | 20 | seam | 10842.810 | 2.63x | 2265.000 | 1.80x | 54.000 | 6000 | 0 | 0 | 0 |
| scene-3d | 20 | signals | 7844.224 | 1.90x | 1817.000 | 1.44x | 72.000 | 6000 | 0 | 0 | 0 |
| scene-3d | 20 | react-reflex | 3166.115 | 0.77x | 1563.000 | 1.24x | 314.000 | 6000 | 0 | 40 | 0 |
| scene-3d | 20 | fusion-charm | 53768.144 | 13.02x | 1674.000 | 1.33x | 96.000 | 6000 | 0 | 0 | 0 |
| scene-3d | 20 | compose-adapter | 4323.788 | 1.05x | 1275.000 | 1.01x | 33.000 | 6000 | 0 | 0 | 0 |
| scene-3d | 20 | react-upstream | 3069.403 | 0.74x | 1556.000 | 1.24x | 314.000 | 6000 | 0 | 0 | 0 |
| unwind | 10 | bare | 2132.427 | 0.87x | 129.000 | 1.00x | 120.000 | 590 | 590 | 0 | 0 |
| unwind | 10 | compose | 2446.417 | 1.00x | 129.000 | 1.00x | 129.000 | 590 | 590 | 0 | 0 |
| unwind | 10 | fusion | 3364.199 | 1.38x | 128.000 | 0.99x | 128.000 | 5310 | 590 | 0 | 0 |
| unwind | 10 | vide | 3058.070 | 1.25x | 128.000 | 0.99x | 128.000 | 2360 | 590 | 0 | 0 |
| unwind | 10 | react | unsupported: A failed native render, including an error boundary, leaves abandoned cost-model host nodes after root unmount. It does not satisfy the partial-build rollback contract. | — | — | — | — | — | — | — | — |
| unwind | 10 | blend | unsupported: An error during native observable subscription leaves the partially created cost-model nodes without a returned cleanup resource. It does not satisfy failed-build rollback. | — | — | — | — | — | — | — | — |
| unwind | 10 | roact | unsupported: Roact's public mount API returns its cleanup handle only after a successful mount; failed render rollback is not guaranteed. | — | — | — | — | — | — | — | — |
| unwind | 10 | seam | 2881.704 | 1.18x | 128.000 | 0.99x | 128.000 | 590 | 590 | 0 | 0 |
| unwind | 10 | signals | 2345.219 | 0.96x | 121.000 | 0.94x | 121.000 | 590 | 590 | 0 | 0 |
| unwind | 10 | react-reflex | unsupported: A failed native render, including an error boundary, leaves abandoned cost-model host nodes after root unmount. It does not satisfy the partial-build rollback contract. | — | — | — | — | — | — | — | — |
| unwind | 10 | fusion-charm | 3637.747 | 1.49x | 128.000 | 0.99x | 128.000 | 5310 | 590 | 0 | 0 |
| unwind | 10 | compose-adapter | 2807.458 | 1.15x | 129.000 | 1.00x | 128.000 | 590 | 590 | 0 | 0 |
| unwind | 10 | react-upstream | unsupported: A failed native render, including an error boundary, leaves abandoned cost-model host nodes after root unmount. It does not satisfy the partial-build rollback contract. | — | — | — | — | — | — | — | — |

## Source identities

Compose revision: `1559013219bbd26dfcebbe84cb420e3dd692a509`. Full source state, tools, environment and command are in `context.json`.

| Dependency | Version | Commit | Tree | Rights |
| --- | --- | --- | --- | --- |
| fusion | 0.3 | `77e603534ff4013f4049611826ff0309d6000b15` | `715bdf3acd2205f106fc78f5171a56b056323bd0` | MIT |
| vide | 0.4.1 | `5ed4c01940e6bd578fb83253cfbeda0a6c05177c` | `8890f5044158a71592249e2d91646715b98ca4aa` | MIT |
| react | 17.2.1 | `2e652e7ecf269b2611f5b58642c6740fc616f858` | `4aee0834a5e16530171de5ada97126de47cf9c22` | MIT |
| luau-polyfill | 1.2.6 | `cff549d58f24c25f47188459cb24b545cc804830` | `a460ce6c6d9ed0a1ead2100ef8a8f4918df9b2b3` | MIT |
| symbol | 1.0.1 | `15781517cf5df85a8dd0b2181b0c3f86bcc7b6c0` | `69b5eb96fd7f36dadd3c3845afeca585f86dff87` | MIT |
| react-promise | 3.5.0 | `22ee6a02ad333d8182e72fc0d02e43f9d82b8109` | `e2f1f8eb417ae562cc4d53b8f20c534193c0b985` | MIT |
| blend | 12.51.1 | `75c7ed8f4f6a1b04c6885b7980451153b17222b4` | `2009d55e28e2b20153bba3d986db4d8e7eb5df18` | MIT |
| roact | v1.4.4 | `956891b70fdc5410e44e9664719cd0a9f7e6fabd` | `e2b1b9bdf99349d27b8f43b92b3b684a921edc8a` | MIT |
| seam | v1.1.0 | `bc45faa36e2f059ca6fe25f7f7896c16a163abf6` | `44606c00e1f0301f9574b437c322d12042aa9b33` | MIT |
| signals | 0.9.0-unreleased | `25b9a8335e1d5da7b917576356b9ae4c890bcb17` | `2b883aca6fac60b2af44c5deffd739e510e9619a` | MIT |
| reflex | v4.3.1 | `fa0cc3c1ebaafdc70ced5bfc0fa8b2300b8694b2` | `7bec758e4cb240c4e13a8b788de876e7b58f5f01` | MIT |
| charm | charm-v0.11.1 | `af4eb5262d640cf89c56217ab7feb403e939cbd2` | `c1383c7832d8ba663eb68b21b9b7341c874a7007` | MIT |
| react-upstream | v17.1.3 | `7455fb005c68ec63326fcfb6b311da99800980b6` | `096ed4ad4c787f62fa5044ecfb41ed1008619619` | MIT |
| polyfill-upstream | v1.2.3 | `8100f5c609c78d8e0876e502aa3e1f59472b00b7` | `ac7e8886467f0b316614c2c839c883566bec8ad3` | MIT |
| promise-upstream | v3.3.0 | `4508fc738f73c555ceebeb89e7dff1427b8f1e8b` | `427bec669c31bb81aae57dea74d7d9d30308901a` | MIT |
| symbol-upstream | v1.0.0 | `ec62c72f79d94829af867223fc7297912e54deca` | `950e084e0e501b8ce955c6fd2b5b6b509ebef1e9` | MIT |
| reflex-promise | v4.0.0 | `2c6f433903275e689ba1d48402d4a9d6fdc605a5` | `a71184ef76af30ec1270a70b523f352057410942` | MIT |

Raw samples, calibration attempts, parity results and heap readings are in the evidence artifact. Unsupported rows are omissions with reasons, not performance results. Missing evidence does not qualify as a complete comparison.

# Compose performance

Latest: `8531975dee718773422df5cea014367da7a1c67c` on 2026-10-26T134936Z, measured on the CI Ubuntu runner by the paired performance shards.
Each value is the median of the candidate arm's samples; p95 is shown beside it. Change compares the previous main commit.

| Benchmark | Median | p95 | Change |
| --- | --- | --- | --- |
| animate-many/bare | 1.65 ms | 1.79 ms | +1.8% |
| animate-many/compose | 9.31 ms | 10.49 ms | +1.1% |
| animate-many/memory/mounted | 2399 KiB | 2399 KiB | +0.0% |
| animate-many/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.extreme/bare/burst | 1.40 ms | 1.44 ms | -10.8% |
| animated-navigation.extreme/bare/cold | 5.32 ms | 8.20 ms | -24.4% |
| animated-navigation.extreme/bare/settle | 0.7 µs | 1.5 µs | -55.8% |
| animated-navigation.extreme/bare/steady | 19.01 ms | 19.51 ms | +5.7% |
| animated-navigation.extreme/bare/teardown | 3.47 ms | 3.86 ms | -22.9% |
| animated-navigation.extreme/compose/burst | 10.43 ms | 10.60 ms | -15.6% |
| animated-navigation.extreme/compose/cold | 13.27 ms | 16.37 ms | +10.6% |
| animated-navigation.extreme/compose/counts | 106.42 ms | 106.42 ms | -8.2% |
| animated-navigation.extreme/compose/settle | 0.7 µs | 1.7 µs | -51.4% |
| animated-navigation.extreme/compose/steady | 40.76 ms | 41.88 ms | -9.2% |
| animated-navigation.extreme/compose/teardown | 5.41 ms | 6.50 ms | -27.8% |
| animated-navigation.extreme/memory/mounted | 7535 KiB | 7535 KiB | +0.0% |
| animated-navigation.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.large/bare/burst | 712.1 µs | 775.7 µs | +13.4% |
| animated-navigation.large/bare/cold | 2.95 ms | 5.69 ms | +43.3% |
| animated-navigation.large/bare/settle | 1.1 µs | 1.4 µs | +26.4% |
| animated-navigation.large/bare/steady | 9.17 ms | 9.65 ms | +13.0% |
| animated-navigation.large/bare/teardown | 1.28 ms | 1.61 ms | -13.2% |
| animated-navigation.large/compose/burst | 5.16 ms | 5.21 ms | -12.6% |
| animated-navigation.large/compose/cold | 5.59 ms | 8.26 ms | -16.2% |
| animated-navigation.large/compose/counts | 76.70 ms | 76.70 ms | -10.7% |
| animated-navigation.large/compose/settle | 0.6 µs | 0.9 µs | -54.7% |
| animated-navigation.large/compose/steady | 33.58 ms | 34.18 ms | -6.6% |
| animated-navigation.large/compose/teardown | 1.91 ms | 2.11 ms | -28.8% |
| animated-navigation.large/memory/mounted | 3793 KiB | 3793 KiB | +0.0% |
| animated-navigation.large/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.medium/bare/burst | 134.2 µs | 150.0 µs | -22.6% |
| animated-navigation.medium/bare/cold | 370.3 µs | 939.4 µs | -12.3% |
| animated-navigation.medium/bare/settle | 0.3 µs | 0.5 µs | -10.0% |
| animated-navigation.medium/bare/steady | 1.61 ms | 1.63 ms | -24.8% |
| animated-navigation.medium/bare/teardown | 124.8 µs | 193.6 µs | -22.2% |
| animated-navigation.medium/compose/burst | 837.2 µs | 879.0 µs | -39.0% |
| animated-navigation.medium/compose/cold | 1.11 ms | 2.92 ms | -18.2% |
| animated-navigation.medium/compose/counts | 17.15 ms | 17.15 ms | -30.7% |
| animated-navigation.medium/compose/settle | 0.5 µs | 0.8 µs | +16.3% |
| animated-navigation.medium/compose/steady | 6.19 ms | 8.73 ms | -40.5% |
| animated-navigation.medium/compose/teardown | 351.9 µs | 424.2 µs | -8.6% |
| animated-navigation.medium/memory/mounted | 1282 KiB | 1282 KiB | +0.0% |
| animated-navigation.medium/memory/teardown | 0 KiB | 0 KiB | — |
| branch-swap/bare | 2.97 ms | 4.04 ms | -22.9% |
| branch-swap/compose | 3.10 ms | 5.52 ms | -21.3% |
| branch-swap/memory/mounted | 35 KiB | 35 KiB | +29.6% |
| branch-swap/memory/teardown | 0 KiB | 0 KiB | — |
| cold-mount-100/bare | 702.2 µs | 1.04 ms | +4.4% |
| cold-mount-100/compose | 542.0 µs | 1.14 ms | -8.2% |
| cold-mount-100/memory/mounted | 2240 KiB | 2240 KiB | +0.0% |
| cold-mount-100/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| cold-mount-1000/bare | 5.66 ms | 8.45 ms | +1.2% |
| cold-mount-1000/compose | 6.42 ms | 10.85 ms | -15.1% |
| cold-mount-1000/memory/mounted | 21914 KiB | 21914 KiB | +0.0% |
| cold-mount-1000/memory/teardown | 0 KiB | 0 KiB | — |
| cold-mount-10000/bare | 76.25 ms | 85.93 ms | +26.3% |
| cold-mount-10000/compose | 84.90 ms | 93.04 ms | -3.2% |
| cold-mount-10000/memory/mounted | 219990 KiB | 219990 KiB | +0.0% |
| cold-mount-10000/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| data-grid.extreme/bare/burst | 713.39 ms | 752.17 ms | +4.6% |
| data-grid.extreme/bare/cold | 452.18 ms | 491.68 ms | +3.4% |
| data-grid.extreme/bare/settle | 2.2 µs | 2.7 µs | +14.1% |
| data-grid.extreme/bare/steady | 18.28 ms | 22.44 ms | -5.0% |
| data-grid.extreme/bare/teardown | 457.5 µs | 581.8 µs | +4.4% |
| data-grid.extreme/compose/burst | 816.51 ms | 879.72 ms | +7.3% |
| data-grid.extreme/compose/cold | 502.28 ms | 523.14 ms | +7.1% |
| data-grid.extreme/compose/counts | 1345.69 ms | 1345.69 ms | -1.0% |
| data-grid.extreme/compose/settle | 2.0 µs | 2.3 µs | +26.7% |
| data-grid.extreme/compose/steady | 23.50 ms | 25.84 ms | +3.6% |
| data-grid.extreme/compose/teardown | 1.22 ms | 2.05 ms | +5.0% |
| data-grid.extreme/memory/mounted | 33055 KiB | 33055 KiB | +0.0% |
| data-grid.extreme/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| data-grid.large/bare/burst | 75.02 ms | 120.36 ms | -17.8% |
| data-grid.large/bare/cold | 48.23 ms | 53.58 ms | -16.7% |
| data-grid.large/bare/settle | 2.6 µs | 3.7 µs | +66.0% |
| data-grid.large/bare/steady | 6.45 ms | 10.23 ms | -25.4% |
| data-grid.large/bare/teardown | 236.2 µs | 455.2 µs | +44.1% |
| data-grid.large/compose/burst | 90.52 ms | 108.15 ms | -22.7% |
| data-grid.large/compose/cold | 50.57 ms | 55.49 ms | -20.8% |
| data-grid.large/compose/counts | 173.63 ms | 173.63 ms | -17.1% |
| data-grid.large/compose/settle | 2.0 µs | 2.9 µs | +21.1% |
| data-grid.large/compose/steady | 10.57 ms | 14.87 ms | -18.6% |
| data-grid.large/compose/teardown | 413.5 µs | 827.9 µs | -16.9% |
| data-grid.large/memory/mounted | 7474 KiB | 7474 KiB | +0.0% |
| data-grid.large/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| data-grid.medium/bare/burst | 53.20 ms | 55.40 ms | +0.9% |
| data-grid.medium/bare/cold | 33.37 ms | 36.92 ms | +0.1% |
| data-grid.medium/bare/settle | 2.0 µs | 2.6 µs | +4.8% |
| data-grid.medium/bare/steady | 7.43 ms | 11.40 ms | -16.5% |
| data-grid.medium/bare/teardown | 99.1 µs | 121.8 µs | -0.2% |
| data-grid.medium/compose/burst | 63.97 ms | 67.63 ms | +6.2% |
| data-grid.medium/compose/cold | 37.02 ms | 42.17 ms | +1.9% |
| data-grid.medium/compose/counts | 134.98 ms | 134.98 ms | +3.2% |
| data-grid.medium/compose/settle | 1.9 µs | 2.3 µs | +33.4% |
| data-grid.medium/compose/steady | 16.13 ms | 19.39 ms | +18.4% |
| data-grid.medium/compose/teardown | 312.0 µs | 342.0 µs | +6.9% |
| data-grid.medium/memory/mounted | 3935 KiB | 3935 KiB | +0.0% |
| data-grid.medium/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| dense-dashboard.extreme/bare/burst | 6.56 ms | 10.74 ms | +6.1% |
| dense-dashboard.extreme/bare/cold | 235.1 µs | 561.8 µs | +7.8% |
| dense-dashboard.extreme/bare/settle | 0.8 µs | 1.2 µs | +14.0% |
| dense-dashboard.extreme/bare/steady | 133.7 µs | 161.2 µs | +0.5% |
| dense-dashboard.extreme/bare/teardown | 223.7 µs | 293.8 µs | +9.9% |
| dense-dashboard.extreme/compose/burst | 17.34 ms | 21.00 ms | -3.3% |
| dense-dashboard.extreme/compose/cold | 544.2 µs | 1.90 ms | +2.1% |
| dense-dashboard.extreme/compose/counts | 24.50 ms | 24.50 ms | -0.9% |
| dense-dashboard.extreme/compose/settle | 1.0 µs | 1.3 µs | -5.1% |
| dense-dashboard.extreme/compose/steady | 851.9 µs | 938.5 µs | +1.7% |
| dense-dashboard.extreme/compose/teardown | 584.8 µs | 846.2 µs | +1.1% |
| dense-dashboard.extreme/memory/mounted | 1250 KiB | 1250 KiB | +0.0% |
| dense-dashboard.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| dense-dashboard.large/bare/burst | 3.40 ms | 6.03 ms | +30.3% |
| dense-dashboard.large/bare/cold | 136.1 µs | 294.0 µs | -0.2% |
| dense-dashboard.large/bare/settle | 0.8 µs | 2.3 µs | +25.8% |
| dense-dashboard.large/bare/steady | 133.3 µs | 162.1 µs | +0.5% |
| dense-dashboard.large/bare/teardown | 113.8 µs | 178.2 µs | +12.0% |
| dense-dashboard.large/compose/burst | 8.70 ms | 12.70 ms | +39.2% |
| dense-dashboard.large/compose/cold | 315.2 µs | 895.1 µs | +13.8% |
| dense-dashboard.large/compose/counts | 17.61 ms | 17.61 ms | +9.1% |
| dense-dashboard.large/compose/settle | 0.8 µs | 0.9 µs | +3.9% |
| dense-dashboard.large/compose/steady | 842.4 µs | 867.0 µs | +2.0% |
| dense-dashboard.large/compose/teardown | 297.5 µs | 443.6 µs | +23.2% |
| dense-dashboard.large/memory/mounted | 657 KiB | 657 KiB | +0.0% |
| dense-dashboard.large/memory/teardown | 0 KiB | 0 KiB | — |
| dense-dashboard.medium/bare/burst | 1.17 ms | 2.41 ms | +26.7% |
| dense-dashboard.medium/bare/cold | 70.6 µs | 188.0 µs | +6.2% |
| dense-dashboard.medium/bare/settle | 0.5 µs | 1.3 µs | +2.1% |
| dense-dashboard.medium/bare/steady | 105.4 µs | 114.7 µs | -0.8% |
| dense-dashboard.medium/bare/teardown | 35.7 µs | 47.4 µs | +4.0% |
| dense-dashboard.medium/compose/burst | 2.79 ms | 5.00 ms | +22.4% |
| dense-dashboard.medium/compose/cold | 193.6 µs | 326.5 µs | +8.4% |
| dense-dashboard.medium/compose/counts | 4.60 ms | 4.60 ms | -1.8% |
| dense-dashboard.medium/compose/settle | 0.7 µs | 1.1 µs | +33.3% |
| dense-dashboard.medium/compose/steady | 679.1 µs | 699.8 µs | -1.8% |
| dense-dashboard.medium/compose/teardown | 113.4 µs | 127.3 µs | +24.5% |
| dense-dashboard.medium/memory/mounted | 328 KiB | 328 KiB | -0.3% |
| dense-dashboard.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-identity-churn-10.extreme/bare/burst | 17.22 ms | 27.70 ms | +4.9% |
| entities-identity-churn-10.extreme/bare/cold | 9.32 ms | 16.81 ms | -3.1% |
| entities-identity-churn-10.extreme/bare/settle | 2.4 µs | 3.6 µs | -1.6% |
| entities-identity-churn-10.extreme/bare/steady | 25.92 ms | 30.86 ms | -3.2% |
| entities-identity-churn-10.extreme/bare/teardown | 390.6 µs | 1.17 ms | +8.5% |
| entities-identity-churn-10.extreme/compose/burst | 54.33 ms | 62.64 ms | +16.5% |
| entities-identity-churn-10.extreme/compose/cold | 35.40 ms | 46.28 ms | +0.9% |
| entities-identity-churn-10.extreme/compose/counts | 244.25 ms | 244.25 ms | +9.8% |
| entities-identity-churn-10.extreme/compose/settle | 2.7 µs | 4.0 µs | +12.0% |
| entities-identity-churn-10.extreme/compose/steady | 63.65 ms | 78.17 ms | +6.5% |
| entities-identity-churn-10.extreme/compose/teardown | 1.37 ms | 3.38 ms | +6.6% |
| entities-identity-churn-10.extreme/memory/mounted | 4382 KiB | 4382 KiB | +0.0% |
| entities-identity-churn-10.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn-10.large/bare/burst | 4.48 ms | 7.84 ms | -10.3% |
| entities-identity-churn-10.large/bare/cold | 4.05 ms | 6.37 ms | +16.6% |
| entities-identity-churn-10.large/bare/settle | 1.1 µs | 1.5 µs | +26.0% |
| entities-identity-churn-10.large/bare/steady | 11.07 ms | 11.77 ms | -4.5% |
| entities-identity-churn-10.large/bare/teardown | 114.9 µs | 186.7 µs | -0.1% |
| entities-identity-churn-10.large/compose/burst | 14.50 ms | 23.34 ms | +1.1% |
| entities-identity-churn-10.large/compose/cold | 12.02 ms | 19.14 ms | +5.0% |
| entities-identity-churn-10.large/compose/counts | 67.44 ms | 67.44 ms | +0.6% |
| entities-identity-churn-10.large/compose/settle | 1.3 µs | 2.0 µs | +8.0% |
| entities-identity-churn-10.large/compose/steady | 19.42 ms | 23.55 ms | -4.7% |
| entities-identity-churn-10.large/compose/teardown | 387.4 µs | 418.0 µs | -4.8% |
| entities-identity-churn-10.large/memory/mounted | 1762 KiB | 1762 KiB | -0.9% |
| entities-identity-churn-10.large/memory/teardown | 21 KiB | 21 KiB | -27.6% |
| entities-identity-churn-10.medium/bare/burst | 2.53 ms | 3.37 ms | +6.6% |
| entities-identity-churn-10.medium/bare/cold | 1.57 ms | 2.25 ms | +4.9% |
| entities-identity-churn-10.medium/bare/settle | 0.7 µs | 1.7 µs | -31.6% |
| entities-identity-churn-10.medium/bare/steady | 5.53 ms | 6.70 ms | +9.3% |
| entities-identity-churn-10.medium/bare/teardown | 64.9 µs | 86.7 µs | +0.5% |
| entities-identity-churn-10.medium/compose/burst | 6.51 ms | 9.55 ms | -14.1% |
| entities-identity-churn-10.medium/compose/cold | 5.43 ms | 9.27 ms | -12.1% |
| entities-identity-churn-10.medium/compose/counts | 29.43 ms | 29.43 ms | -10.3% |
| entities-identity-churn-10.medium/compose/settle | 0.7 µs | 1.2 µs | -52.6% |
| entities-identity-churn-10.medium/compose/steady | 9.30 ms | 13.31 ms | -2.8% |
| entities-identity-churn-10.medium/compose/teardown | 207.6 µs | 331.6 µs | -12.9% |
| entities-identity-churn-10.medium/memory/mounted | 917 KiB | 917 KiB | +0.7% |
| entities-identity-churn-10.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-identity-churn-50.extreme/bare/burst | 12.39 ms | 18.02 ms | -11.4% |
| entities-identity-churn-50.extreme/bare/cold | 8.11 ms | 17.16 ms | +19.4% |
| entities-identity-churn-50.extreme/bare/settle | 2.1 µs | 2.5 µs | +23.6% |
| entities-identity-churn-50.extreme/bare/steady | 43.14 ms | 56.79 ms | -18.9% |
| entities-identity-churn-50.extreme/bare/teardown | 286.4 µs | 364.0 µs | -8.7% |
| entities-identity-churn-50.extreme/compose/burst | 34.27 ms | 63.61 ms | -4.5% |
| entities-identity-churn-50.extreme/compose/cold | 25.93 ms | 35.01 ms | +0.6% |
| entities-identity-churn-50.extreme/compose/counts | 246.70 ms | 246.70 ms | -16.4% |
| entities-identity-churn-50.extreme/compose/settle | 2.2 µs | 3.0 µs | +11.9% |
| entities-identity-churn-50.extreme/compose/steady | 111.45 ms | 137.19 ms | -25.4% |
| entities-identity-churn-50.extreme/compose/teardown | 848.3 µs | 2.07 ms | -12.5% |
| entities-identity-churn-50.extreme/memory/mounted | 4364 KiB | 4364 KiB | +0.4% |
| entities-identity-churn-50.extreme/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| entities-identity-churn-50.large/bare/burst | 5.52 ms | 7.35 ms | -3.6% |
| entities-identity-churn-50.large/bare/cold | 3.09 ms | 7.13 ms | -28.9% |
| entities-identity-churn-50.large/bare/settle | 2.2 µs | 2.7 µs | -5.9% |
| entities-identity-churn-50.large/bare/steady | 19.42 ms | 28.93 ms | -5.5% |
| entities-identity-churn-50.large/bare/teardown | 116.3 µs | 266.1 µs | -11.1% |
| entities-identity-churn-50.large/compose/burst | 14.26 ms | 22.18 ms | -27.1% |
| entities-identity-churn-50.large/compose/cold | 11.31 ms | 22.14 ms | +29.3% |
| entities-identity-churn-50.large/compose/counts | 114.18 ms | 114.18 ms | -10.3% |
| entities-identity-churn-50.large/compose/settle | 1.8 µs | 3.2 µs | +3.5% |
| entities-identity-churn-50.large/compose/steady | 51.35 ms | 62.40 ms | -4.0% |
| entities-identity-churn-50.large/compose/teardown | 388.3 µs | 543.1 µs | -4.1% |
| entities-identity-churn-50.large/memory/mounted | 1824 KiB | 1824 KiB | +0.9% |
| entities-identity-churn-50.large/memory/teardown | 17 KiB | 17 KiB | +1600.0% |
| entities-identity-churn-50.medium/bare/burst | 2.36 ms | 2.96 ms | -21.7% |
| entities-identity-churn-50.medium/bare/cold | 911.0 µs | 2.04 ms | -26.1% |
| entities-identity-churn-50.medium/bare/settle | 1.0 µs | 1.3 µs | +0.0% |
| entities-identity-churn-50.medium/bare/steady | 7.08 ms | 12.29 ms | -11.3% |
| entities-identity-churn-50.medium/bare/teardown | 55.4 µs | 70.6 µs | -12.8% |
| entities-identity-churn-50.medium/compose/burst | 5.94 ms | 10.11 ms | -25.2% |
| entities-identity-churn-50.medium/compose/cold | 4.25 ms | 7.21 ms | -28.9% |
| entities-identity-churn-50.medium/compose/counts | 47.65 ms | 47.65 ms | -8.3% |
| entities-identity-churn-50.medium/compose/settle | 1.3 µs | 2.5 µs | +10.2% |
| entities-identity-churn-50.medium/compose/steady | 18.76 ms | 22.23 ms | -10.1% |
| entities-identity-churn-50.medium/compose/teardown | 166.6 µs | 340.8 µs | -18.6% |
| entities-identity-churn-50.medium/memory/mounted | 990 KiB | 990 KiB | -0.8% |
| entities-identity-churn-50.medium/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| entities-identity-churn.extreme/bare/burst | 17.79 ms | 25.91 ms | -0.4% |
| entities-identity-churn.extreme/bare/cold | 10.56 ms | 17.05 ms | +20.0% |
| entities-identity-churn.extreme/bare/settle | 1.8 µs | 2.4 µs | -11.6% |
| entities-identity-churn.extreme/bare/steady | 47.03 ms | 53.13 ms | +2.3% |
| entities-identity-churn.extreme/bare/teardown | 497.4 µs | 650.0 µs | +13.0% |
| entities-identity-churn.extreme/compose/burst | 50.81 ms | 62.12 ms | -7.1% |
| entities-identity-churn.extreme/compose/cold | 37.32 ms | 51.86 ms | +8.0% |
| entities-identity-churn.extreme/compose/counts | 280.40 ms | 280.40 ms | +3.0% |
| entities-identity-churn.extreme/compose/settle | 2.0 µs | 2.3 µs | +5.8% |
| entities-identity-churn.extreme/compose/steady | 104.82 ms | 126.16 ms | +2.4% |
| entities-identity-churn.extreme/compose/teardown | 1.23 ms | 1.64 ms | -4.4% |
| entities-identity-churn.extreme/memory/mounted | 4753 KiB | 4753 KiB | -2.3% |
| entities-identity-churn.extreme/memory/teardown | 97 KiB | 97 KiB | -53.6% |
| entities-identity-churn.large/bare/burst | 4.35 ms | 6.04 ms | -17.5% |
| entities-identity-churn.large/bare/cold | 3.67 ms | 8.93 ms | +9.7% |
| entities-identity-churn.large/bare/settle | 0.9 µs | 1.9 µs | -44.4% |
| entities-identity-churn.large/bare/steady | 13.98 ms | 18.04 ms | -3.9% |
| entities-identity-churn.large/bare/teardown | 113.8 µs | 141.5 µs | -6.2% |
| entities-identity-churn.large/compose/burst | 14.23 ms | 16.38 ms | -10.5% |
| entities-identity-churn.large/compose/cold | 13.13 ms | 19.32 ms | +4.2% |
| entities-identity-churn.large/compose/counts | 97.54 ms | 97.54 ms | -9.1% |
| entities-identity-churn.large/compose/settle | 1.2 µs | 1.6 µs | -44.3% |
| entities-identity-churn.large/compose/steady | 30.83 ms | 40.72 ms | -13.9% |
| entities-identity-churn.large/compose/teardown | 360.0 µs | 394.8 µs | -16.6% |
| entities-identity-churn.large/memory/mounted | 1705 KiB | 1705 KiB | -0.5% |
| entities-identity-churn.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn.medium/bare/burst | 3.18 ms | 5.29 ms | +16.6% |
| entities-identity-churn.medium/bare/cold | 1.36 ms | 2.80 ms | +4.2% |
| entities-identity-churn.medium/bare/settle | 0.9 µs | 1.3 µs | +14.6% |
| entities-identity-churn.medium/bare/steady | 8.04 ms | 9.50 ms | +13.2% |
| entities-identity-churn.medium/bare/teardown | 62.4 µs | 135.5 µs | -9.2% |
| entities-identity-churn.medium/compose/burst | 7.44 ms | 12.84 ms | +1.2% |
| entities-identity-churn.medium/compose/cold | 5.12 ms | 8.06 ms | +12.4% |
| entities-identity-churn.medium/compose/counts | 44.01 ms | 44.01 ms | -3.9% |
| entities-identity-churn.medium/compose/settle | 1.0 µs | 1.5 µs | +2.1% |
| entities-identity-churn.medium/compose/steady | 14.87 ms | 17.61 ms | -0.5% |
| entities-identity-churn.medium/compose/teardown | 209.0 µs | 316.0 µs | -2.8% |
| entities-identity-churn.medium/memory/mounted | 962 KiB | 962 KiB | +1.3% |
| entities-identity-churn.medium/memory/teardown | 13 KiB | 13 KiB | +1200.0% |
| entities-integrated.extreme/bare/burst | 5.86 ms | 6.45 ms | -14.4% |
| entities-integrated.extreme/bare/cold | 36.64 ms | 52.90 ms | -10.7% |
| entities-integrated.extreme/bare/settle | 1.3 µs | 1.7 µs | -44.0% |
| entities-integrated.extreme/bare/steady | 23.75 ms | 29.65 ms | -15.3% |
| entities-integrated.extreme/bare/teardown | 23.40 ms | 25.63 ms | -23.9% |
| entities-integrated.extreme/compose/burst | 18.39 ms | 22.51 ms | -22.5% |
| entities-integrated.extreme/compose/cold | 114.12 ms | 148.32 ms | +0.2% |
| entities-integrated.extreme/compose/counts | 361.83 ms | 361.83 ms | -14.5% |
| entities-integrated.extreme/compose/settle | 1.6 µs | 2.0 µs | -30.7% |
| entities-integrated.extreme/compose/steady | 87.60 ms | 133.57 ms | -23.9% |
| entities-integrated.extreme/compose/teardown | 33.11 ms | 37.04 ms | -27.3% |
| entities-integrated.extreme/memory/mounted | 40384 KiB | 40384 KiB | +0.0% |
| entities-integrated.extreme/memory/teardown | 8 KiB | 8 KiB | +0.0% |
| entities-integrated.large/bare/burst | 2.25 ms | 3.10 ms | -12.8% |
| entities-integrated.large/bare/cold | 8.42 ms | 20.74 ms | -17.4% |
| entities-integrated.large/bare/settle | 2.0 µs | 2.4 µs | +138.6% |
| entities-integrated.large/bare/steady | 12.10 ms | 19.20 ms | -0.6% |
| entities-integrated.large/bare/teardown | 6.49 ms | 7.09 ms | +27.7% |
| entities-integrated.large/compose/burst | 6.96 ms | 8.87 ms | -17.4% |
| entities-integrated.large/compose/cold | 32.79 ms | 46.05 ms | -6.2% |
| entities-integrated.large/compose/counts | 134.00 ms | 134.00 ms | -4.1% |
| entities-integrated.large/compose/settle | 2.1 µs | 2.6 µs | +66.9% |
| entities-integrated.large/compose/steady | 38.61 ms | 52.15 ms | -8.5% |
| entities-integrated.large/compose/teardown | 13.94 ms | 16.31 ms | +47.2% |
| entities-integrated.large/memory/mounted | 16705 KiB | 16705 KiB | +0.0% |
| entities-integrated.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-integrated.medium/bare/burst | 2.48 ms | 4.44 ms | +4.4% |
| entities-integrated.medium/bare/cold | 4.46 ms | 9.14 ms | -18.0% |
| entities-integrated.medium/bare/settle | 1.0 µs | 1.4 µs | -33.8% |
| entities-integrated.medium/bare/steady | 11.21 ms | 16.37 ms | -3.8% |
| entities-integrated.medium/bare/teardown | 2.10 ms | 2.57 ms | -38.9% |
| entities-integrated.medium/compose/burst | 7.69 ms | 9.51 ms | -1.0% |
| entities-integrated.medium/compose/cold | 18.80 ms | 28.61 ms | -6.0% |
| entities-integrated.medium/compose/counts | 97.83 ms | 97.83 ms | -14.8% |
| entities-integrated.medium/compose/settle | 1.6 µs | 1.8 µs | -5.4% |
| entities-integrated.medium/compose/steady | 39.23 ms | 53.09 ms | +9.3% |
| entities-integrated.medium/compose/teardown | 6.07 ms | 9.08 ms | -2.5% |
| entities-integrated.medium/memory/mounted | 9029 KiB | 9029 KiB | +0.0% |
| entities-integrated.medium/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| entities-relevance-saturated.extreme/bare/burst | 17.78 ms | 29.85 ms | -17.2% |
| entities-relevance-saturated.extreme/bare/cold | 12.41 ms | 24.83 ms | -17.1% |
| entities-relevance-saturated.extreme/bare/settle | 2.6 µs | 3.3 µs | -9.2% |
| entities-relevance-saturated.extreme/bare/steady | 94.69 ms | 124.54 ms | +2.2% |
| entities-relevance-saturated.extreme/bare/teardown | 3.54 ms | 4.39 ms | -10.4% |
| entities-relevance-saturated.extreme/compose/burst | 82.80 ms | 103.67 ms | -20.2% |
| entities-relevance-saturated.extreme/compose/cold | 34.52 ms | 44.89 ms | -6.7% |
| entities-relevance-saturated.extreme/compose/counts | 221.30 ms | 221.30 ms | -20.0% |
| entities-relevance-saturated.extreme/compose/settle | 2.0 µs | 5.7 µs | -31.9% |
| entities-relevance-saturated.extreme/compose/steady | 53.09 ms | 72.14 ms | -22.5% |
| entities-relevance-saturated.extreme/compose/teardown | 12.66 ms | 18.53 ms | -28.2% |
| entities-relevance-saturated.extreme/memory/mounted | 12664 KiB | 12664 KiB | +0.0% |
| entities-relevance-saturated.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| entities-relevance-saturated.large/bare/burst | 6.49 ms | 21.36 ms | -12.5% |
| entities-relevance-saturated.large/bare/cold | 3.97 ms | 7.35 ms | -2.5% |
| entities-relevance-saturated.large/bare/settle | 2.7 µs | 3.2 µs | +17.1% |
| entities-relevance-saturated.large/bare/steady | 27.90 ms | 41.60 ms | -3.3% |
| entities-relevance-saturated.large/bare/teardown | 1.53 ms | 2.04 ms | -1.9% |
| entities-relevance-saturated.large/compose/burst | 28.58 ms | 44.40 ms | -5.2% |
| entities-relevance-saturated.large/compose/cold | 10.37 ms | 22.85 ms | -3.6% |
| entities-relevance-saturated.large/compose/counts | 109.21 ms | 109.21 ms | +7.2% |
| entities-relevance-saturated.large/compose/settle | 2.4 µs | 2.8 µs | +2.6% |
| entities-relevance-saturated.large/compose/steady | 19.80 ms | 32.89 ms | +10.1% |
| entities-relevance-saturated.large/compose/teardown | 3.82 ms | 4.12 ms | +0.4% |
| entities-relevance-saturated.large/memory/mounted | 5096 KiB | 5096 KiB | +0.0% |
| entities-relevance-saturated.large/memory/teardown | 1 KiB | 1 KiB | -88.9% |
| entities-relevance-saturated.medium/bare/burst | 3.70 ms | 6.25 ms | +0.5% |
| entities-relevance-saturated.medium/bare/cold | 1.80 ms | 3.81 ms | -6.8% |
| entities-relevance-saturated.medium/bare/settle | 1.1 µs | 2.7 µs | -41.9% |
| entities-relevance-saturated.medium/bare/steady | 16.92 ms | 21.89 ms | +8.5% |
| entities-relevance-saturated.medium/bare/teardown | 536.6 µs | 1.05 ms | -27.4% |
| entities-relevance-saturated.medium/compose/burst | 13.71 ms | 19.50 ms | +8.1% |
| entities-relevance-saturated.medium/compose/cold | 6.48 ms | 10.67 ms | -4.0% |
| entities-relevance-saturated.medium/compose/counts | 41.52 ms | 41.52 ms | -5.4% |
| entities-relevance-saturated.medium/compose/settle | 1.1 µs | 2.0 µs | -39.5% |
| entities-relevance-saturated.medium/compose/steady | 9.85 ms | 13.23 ms | +12.3% |
| entities-relevance-saturated.medium/compose/teardown | 1.20 ms | 1.73 ms | -25.9% |
| entities-relevance-saturated.medium/memory/mounted | 2557 KiB | 2557 KiB | -0.3% |
| entities-relevance-saturated.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-relevance-sweep.extreme/bare/burst | 26.52 ms | 44.25 ms | -31.7% |
| entities-relevance-sweep.extreme/bare/cold | 11.62 ms | 28.32 ms | +3.2% |
| entities-relevance-sweep.extreme/bare/settle | 2.4 µs | 2.8 µs | -17.9% |
| entities-relevance-sweep.extreme/bare/steady | 30.59 ms | 60.41 ms | +0.1% |
| entities-relevance-sweep.extreme/bare/teardown | 3.61 ms | 5.33 ms | -25.1% |
| entities-relevance-sweep.extreme/compose/burst | 138.85 ms | 156.43 ms | -5.6% |
| entities-relevance-sweep.extreme/compose/cold | 30.98 ms | 58.33 ms | -24.9% |
| entities-relevance-sweep.extreme/compose/counts | 417.05 ms | 417.05 ms | -11.5% |
| entities-relevance-sweep.extreme/compose/settle | 1.9 µs | 3.7 µs | -31.4% |
| entities-relevance-sweep.extreme/compose/steady | 120.64 ms | 163.21 ms | -13.6% |
| entities-relevance-sweep.extreme/compose/teardown | 14.37 ms | 19.24 ms | -21.0% |
| entities-relevance-sweep.extreme/memory/mounted | 12656 KiB | 12656 KiB | +0.1% |
| entities-relevance-sweep.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| entities-relevance-sweep.large/bare/burst | 9.30 ms | 18.78 ms | -3.4% |
| entities-relevance-sweep.large/bare/cold | 3.82 ms | 12.51 ms | -8.9% |
| entities-relevance-sweep.large/bare/settle | 1.4 µs | 2.6 µs | +26.6% |
| entities-relevance-sweep.large/bare/steady | 11.76 ms | 18.43 ms | +1.8% |
| entities-relevance-sweep.large/bare/teardown | 1.19 ms | 1.71 ms | +9.4% |
| entities-relevance-sweep.large/compose/burst | 41.59 ms | 54.14 ms | +0.9% |
| entities-relevance-sweep.large/compose/cold | 11.39 ms | 19.95 ms | +0.8% |
| entities-relevance-sweep.large/compose/counts | 149.67 ms | 149.67 ms | +8.1% |
| entities-relevance-sweep.large/compose/settle | 1.6 µs | 2.1 µs | -2.4% |
| entities-relevance-sweep.large/compose/steady | 43.77 ms | 51.99 ms | +4.4% |
| entities-relevance-sweep.large/compose/teardown | 3.30 ms | 3.96 ms | -4.7% |
| entities-relevance-sweep.large/memory/mounted | 5104 KiB | 5104 KiB | +0.3% |
| entities-relevance-sweep.large/memory/teardown | 8 KiB | 8 KiB | — |
| entities-relevance-sweep.medium/bare/burst | 4.39 ms | 12.09 ms | +9.6% |
| entities-relevance-sweep.medium/bare/cold | 1.77 ms | 3.43 ms | +6.9% |
| entities-relevance-sweep.medium/bare/settle | 2.2 µs | 3.0 µs | +104.8% |
| entities-relevance-sweep.medium/bare/steady | 5.01 ms | 11.81 ms | +14.1% |
| entities-relevance-sweep.medium/bare/teardown | 840.0 µs | 1.13 ms | +54.5% |
| entities-relevance-sweep.medium/compose/burst | 19.87 ms | 22.23 ms | +8.1% |
| entities-relevance-sweep.medium/compose/cold | 5.60 ms | 9.50 ms | +4.1% |
| entities-relevance-sweep.medium/compose/counts | 74.65 ms | 74.65 ms | +3.7% |
| entities-relevance-sweep.medium/compose/settle | 2.3 µs | 3.0 µs | +18.3% |
| entities-relevance-sweep.medium/compose/steady | 20.62 ms | 27.54 ms | +21.6% |
| entities-relevance-sweep.medium/compose/teardown | 1.52 ms | 1.80 ms | -1.1% |
| entities-relevance-sweep.medium/memory/mounted | 2564 KiB | 2564 KiB | +0.3% |
| entities-relevance-sweep.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entity-labels-sparse.extreme/bare/burst | 9.19 ms | 12.12 ms | +6.7% |
| entity-labels-sparse.extreme/bare/cold | 10.25 ms | 18.97 ms | +6.4% |
| entity-labels-sparse.extreme/bare/settle | 1.1 µs | 13.3 µs | +12.3% |
| entity-labels-sparse.extreme/bare/steady | 1.04 ms | 1.20 ms | +15.6% |
| entity-labels-sparse.extreme/bare/teardown | 5.68 ms | 7.30 ms | +0.7% |
| entity-labels-sparse.extreme/compose/burst | 31.82 ms | 44.82 ms | -1.0% |
| entity-labels-sparse.extreme/compose/cold | 23.30 ms | 34.83 ms | -10.9% |
| entity-labels-sparse.extreme/compose/counts | 113.92 ms | 113.92 ms | +16.8% |
| entity-labels-sparse.extreme/compose/settle | 1.8 µs | 2.6 µs | +0.0% |
| entity-labels-sparse.extreme/compose/steady | 4.44 ms | 5.54 ms | +5.9% |
| entity-labels-sparse.extreme/compose/teardown | 12.06 ms | 14.24 ms | +8.5% |
| entity-labels-sparse.extreme/memory/mounted | 11923 KiB | 11923 KiB | +0.1% |
| entity-labels-sparse.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels-sparse.large/bare/burst | 4.78 ms | 6.66 ms | +2.2% |
| entity-labels-sparse.large/bare/cold | 5.02 ms | 8.49 ms | +3.4% |
| entity-labels-sparse.large/bare/settle | 0.9 µs | 1.1 µs | +11.8% |
| entity-labels-sparse.large/bare/steady | 474.8 µs | 539.4 µs | +4.8% |
| entity-labels-sparse.large/bare/teardown | 1.81 ms | 2.07 ms | -2.7% |
| entity-labels-sparse.large/compose/burst | 15.22 ms | 22.49 ms | +13.9% |
| entity-labels-sparse.large/compose/cold | 10.51 ms | 18.16 ms | -18.6% |
| entity-labels-sparse.large/compose/counts | 50.67 ms | 50.67 ms | +3.5% |
| entity-labels-sparse.large/compose/settle | 1.3 µs | 1.8 µs | +44.1% |
| entity-labels-sparse.large/compose/steady | 2.23 ms | 2.81 ms | +9.0% |
| entity-labels-sparse.large/compose/teardown | 3.83 ms | 4.87 ms | +2.9% |
| entity-labels-sparse.large/memory/mounted | 6204 KiB | 6204 KiB | +0.0% |
| entity-labels-sparse.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels-sparse.medium/bare/burst | 1.53 ms | 3.86 ms | +26.5% |
| entity-labels-sparse.medium/bare/cold | 1.26 ms | 3.85 ms | -28.1% |
| entity-labels-sparse.medium/bare/settle | 0.5 µs | 0.7 µs | -10.0% |
| entity-labels-sparse.medium/bare/steady | 160.5 µs | 193.7 µs | +2.5% |
| entity-labels-sparse.medium/bare/teardown | 423.7 µs | 621.1 µs | -1.0% |
| entity-labels-sparse.medium/compose/burst | 4.26 ms | 7.52 ms | -8.8% |
| entity-labels-sparse.medium/compose/cold | 5.49 ms | 6.69 ms | +6.3% |
| entity-labels-sparse.medium/compose/counts | 20.09 ms | 20.09 ms | -3.0% |
| entity-labels-sparse.medium/compose/settle | 0.8 µs | 1.1 µs | +10.9% |
| entity-labels-sparse.medium/compose/steady | 785.9 µs | 881.8 µs | -1.1% |
| entity-labels-sparse.medium/compose/teardown | 1.10 ms | 1.18 ms | -2.6% |
| entity-labels-sparse.medium/memory/mounted | 2795 KiB | 2795 KiB | +0.0% |
| entity-labels-sparse.medium/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| entity-labels.extreme/bare/burst | 10.03 ms | 12.96 ms | +25.7% |
| entity-labels.extreme/bare/cold | 8.62 ms | 14.18 ms | -0.4% |
| entity-labels.extreme/bare/settle | 1.2 µs | 2.4 µs | +5.5% |
| entity-labels.extreme/bare/steady | 891.9 µs | 1.08 ms | +0.8% |
| entity-labels.extreme/bare/teardown | 5.94 ms | 6.34 ms | +6.1% |
| entity-labels.extreme/compose/burst | 33.23 ms | 40.25 ms | +5.1% |
| entity-labels.extreme/compose/cold | 23.06 ms | 34.37 ms | -23.9% |
| entity-labels.extreme/compose/counts | 188.25 ms | 188.25 ms | +0.9% |
| entity-labels.extreme/compose/settle | 1.5 µs | 2.0 µs | -3.8% |
| entity-labels.extreme/compose/steady | 41.49 ms | 43.01 ms | -3.6% |
| entity-labels.extreme/compose/teardown | 11.77 ms | 15.77 ms | +2.7% |
| entity-labels.extreme/memory/mounted | 12141 KiB | 12141 KiB | +0.1% |
| entity-labels.extreme/memory/teardown | 1 KiB | 1 KiB | — |
| entity-labels.large/bare/burst | 4.66 ms | 6.89 ms | +20.7% |
| entity-labels.large/bare/cold | 4.29 ms | 10.21 ms | -20.3% |
| entity-labels.large/bare/settle | 1.6 µs | 2.9 µs | -5.3% |
| entity-labels.large/bare/steady | 484.2 µs | 633.9 µs | -1.2% |
| entity-labels.large/bare/teardown | 2.21 ms | 2.35 ms | +0.1% |
| entity-labels.large/compose/burst | 14.94 ms | 19.82 ms | -3.1% |
| entity-labels.large/compose/cold | 14.04 ms | 18.51 ms | +14.7% |
| entity-labels.large/compose/counts | 83.70 ms | 83.70 ms | -0.1% |
| entity-labels.large/compose/settle | 2.2 µs | 3.2 µs | +7.8% |
| entity-labels.large/compose/steady | 20.23 ms | 24.50 ms | +9.2% |
| entity-labels.large/compose/teardown | 4.82 ms | 5.54 ms | +6.7% |
| entity-labels.large/memory/mounted | 6320 KiB | 6320 KiB | +0.0% |
| entity-labels.large/memory/teardown | 1 KiB | 1 KiB | — |
| entity-labels.medium/bare/burst | 1.20 ms | 3.95 ms | -8.5% |
| entity-labels.medium/bare/cold | 2.19 ms | 2.93 ms | +48.2% |
| entity-labels.medium/bare/settle | 0.6 µs | 1.0 µs | -3.2% |
| entity-labels.medium/bare/steady | 157.8 µs | 173.9 µs | -7.5% |
| entity-labels.medium/bare/teardown | 416.1 µs | 966.1 µs | -14.4% |
| entity-labels.medium/compose/burst | 5.30 ms | 7.89 ms | +4.6% |
| entity-labels.medium/compose/cold | 4.42 ms | 7.59 ms | -7.2% |
| entity-labels.medium/compose/counts | 34.98 ms | 34.98 ms | +7.6% |
| entity-labels.medium/compose/settle | 1.2 µs | 2.7 µs | -13.3% |
| entity-labels.medium/compose/steady | 6.93 ms | 7.79 ms | -2.4% |
| entity-labels.medium/compose/teardown | 1.35 ms | 1.48 ms | +3.9% |
| entity-labels.medium/memory/mounted | 2849 KiB | 2849 KiB | +0.3% |
| entity-labels.medium/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| events/bare | 10.31 ms | 14.35 ms | -8.8% |
| events/compose | 11.94 ms | 18.15 ms | -9.5% |
| events/memory/mounted | 12 KiB | 12 KiB | -91.4% |
| events/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| inspector.extreme/bare/burst | 1.42 ms | 1.64 ms | -5.4% |
| inspector.extreme/bare/cold | 9.07 ms | 11.73 ms | +18.2% |
| inspector.extreme/bare/settle | 0.8 µs | 1.3 µs | -28.2% |
| inspector.extreme/bare/steady | 71.8 µs | 99.3 µs | -14.1% |
| inspector.extreme/bare/teardown | 5.16 ms | 6.35 ms | -8.0% |
| inspector.extreme/compose/burst | 8.09 ms | 10.68 ms | -7.3% |
| inspector.extreme/compose/cold | 24.65 ms | 27.70 ms | -7.4% |
| inspector.extreme/compose/counts | 41.51 ms | 41.51 ms | -7.3% |
| inspector.extreme/compose/settle | 1.5 µs | 1.9 µs | -20.7% |
| inspector.extreme/compose/steady | 255.5 µs | 354.8 µs | -14.7% |
| inspector.extreme/compose/teardown | 2.52 ms | 4.36 ms | -10.9% |
| inspector.extreme/memory/mounted | 21871 KiB | 21871 KiB | -0.1% |
| inspector.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| inspector.large/bare/burst | 572.3 µs | 646.6 µs | -1.1% |
| inspector.large/bare/cold | 2.71 ms | 5.47 ms | -8.1% |
| inspector.large/bare/settle | 0.5 µs | 0.7 µs | +0.2% |
| inspector.large/bare/steady | 50.5 µs | 56.2 µs | -2.3% |
| inspector.large/bare/teardown | 1.39 ms | 1.55 ms | -3.7% |
| inspector.large/compose/burst | 3.75 ms | 5.40 ms | -7.2% |
| inspector.large/compose/cold | 6.85 ms | 13.93 ms | -12.4% |
| inspector.large/compose/counts | 20.30 ms | 20.30 ms | -5.3% |
| inspector.large/compose/settle | 0.9 µs | 9.3 µs | -17.5% |
| inspector.large/compose/steady | 219.7 µs | 367.1 µs | -10.1% |
| inspector.large/compose/teardown | 1.10 ms | 1.59 ms | -8.5% |
| inspector.large/memory/mounted | 7208 KiB | 7208 KiB | +0.0% |
| inspector.large/memory/teardown | 0 KiB | 0 KiB | — |
| inspector.medium/bare/burst | 259.6 µs | 269.4 µs | +2.4% |
| inspector.medium/bare/cold | 1.33 ms | 2.35 ms | +23.8% |
| inspector.medium/bare/settle | 0.5 µs | 0.6 µs | +2.0% |
| inspector.medium/bare/steady | 60.6 µs | 79.3 µs | +3.3% |
| inspector.medium/bare/teardown | 385.0 µs | 476.0 µs | +15.8% |
| inspector.medium/compose/burst | 1.56 ms | 1.66 ms | -1.0% |
| inspector.medium/compose/cold | 2.68 ms | 3.64 ms | +43.3% |
| inspector.medium/compose/counts | 6.28 ms | 6.28 ms | +3.3% |
| inspector.medium/compose/settle | 0.6 µs | 0.7 µs | -1.6% |
| inspector.medium/compose/steady | 218.6 µs | 317.5 µs | -10.2% |
| inspector.medium/compose/teardown | 369.3 µs | 476.6 µs | -2.3% |
| inspector.medium/memory/mounted | 1901 KiB | 1901 KiB | +0.4% |
| inspector.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| keyed-append/bare | 1.32 ms | 1.80 ms | -11.6% |
| keyed-append/compose | 1.86 ms | 2.33 ms | -7.6% |
| keyed-append/memory/mounted | 2201 KiB | 2201 KiB | +0.0% |
| keyed-append/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-insert/bare | 1.68 ms | 1.99 ms | -6.0% |
| keyed-insert/compose | 3.67 ms | 3.97 ms | -3.8% |
| keyed-insert/memory/mounted | 2234 KiB | 2234 KiB | -0.4% |
| keyed-insert/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-prepend/bare | 1.12 ms | 1.71 ms | -15.0% |
| keyed-prepend/compose | 3.07 ms | 3.36 ms | -29.0% |
| keyed-prepend/memory/mounted | 2292 KiB | 2292 KiB | +0.0% |
| keyed-prepend/memory/teardown | 8 KiB | 8 KiB | — |
| keyed-remove/bare | 1.51 ms | 1.58 ms | +2.7% |
| keyed-remove/compose | 3.41 ms | 3.74 ms | -6.0% |
| keyed-remove/memory/mounted | 2236 KiB | 2236 KiB | -0.4% |
| keyed-remove/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-replace/bare | 21.95 ms | 24.35 ms | -12.8% |
| keyed-replace/compose | 42.75 ms | 47.87 ms | -20.2% |
| keyed-replace/memory/mounted | 2221 KiB | 2221 KiB | +0.0% |
| keyed-replace/memory/teardown | 1 KiB | 1 KiB | — |
| keyed-reverse/bare | 696.8 µs | 746.2 µs | -24.6% |
| keyed-reverse/compose | 2.17 ms | 2.51 ms | -32.6% |
| keyed-reverse/memory/mounted | 2287 KiB | 2287 KiB | +0.0% |
| keyed-reverse/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-rotate/bare | 658.3 µs | 720.2 µs | -27.7% |
| keyed-rotate/compose | 2.25 ms | 4.13 ms | -31.8% |
| keyed-rotate/memory/mounted | 2287 KiB | 2287 KiB | +0.4% |
| keyed-rotate/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-shuffle/bare | 688.0 µs | 800.9 µs | -31.1% |
| keyed-shuffle/compose | 2.28 ms | 2.45 ms | -32.1% |
| keyed-shuffle/memory/mounted | 2287 KiB | 2287 KiB | +0.4% |
| keyed-shuffle/memory/teardown | 0 KiB | 0 KiB | — |
| mount-cycles/bare | 16.98 ms | 19.37 ms | -10.2% |
| mount-cycles/compose | 26.13 ms | 29.66 ms | +9.4% |
| mount-cycles/memory/mounted | 4 KiB | 4 KiB | -66.7% |
| mount-cycles/memory/teardown | 0 KiB | 0 KiB | — |
| mount-dispose/bare | 7.44 ms | 8.76 ms | -8.2% |
| mount-dispose/compose | 7.45 ms | 12.54 ms | -16.6% |
| mount-dispose/memory/mounted | 4 KiB | 4 KiB | +0.0% |
| mount-dispose/memory/teardown | 0 KiB | 0 KiB | — |
| ordered-window-scroll/compose | 312.0 µs | 319.4 µs | -35.1% |
| ordered-window-scroll/memory/mounted | 1131 KiB | 1131 KiB | +0.0% |
| ordered-window-scroll/memory/teardown | 0 KiB | 0 KiB | — |
| scene-2d.extreme/bare/burst | 9.38 ms | 14.62 ms | -12.0% |
| scene-2d.extreme/bare/cold | 1.50 ms | 5.48 ms | -19.2% |
| scene-2d.extreme/bare/settle | 0.9 µs | 1.2 µs | -65.9% |
| scene-2d.extreme/bare/steady | 47.48 ms | 54.47 ms | -5.3% |
| scene-2d.extreme/bare/teardown | 562.9 µs | 853.4 µs | -28.2% |
| scene-2d.extreme/compose/burst | 30.57 ms | 36.88 ms | +6.2% |
| scene-2d.extreme/compose/cold | 17.01 ms | 26.93 ms | -14.0% |
| scene-2d.extreme/compose/counts | 224.75 ms | 224.75 ms | -9.0% |
| scene-2d.extreme/compose/settle | 1.5 µs | 2.0 µs | -42.7% |
| scene-2d.extreme/compose/steady | 93.96 ms | 104.55 ms | +1.8% |
| scene-2d.extreme/compose/teardown | 1.23 ms | 1.46 ms | -14.7% |
| scene-2d.extreme/memory/mounted | 13283 KiB | 13283 KiB | +0.1% |
| scene-2d.extreme/memory/teardown | 15 KiB | 15 KiB | +66.7% |
| scene-2d.large/bare/burst | 10.02 ms | 13.99 ms | +25.5% |
| scene-2d.large/bare/cold | 1.45 ms | 4.31 ms | -17.0% |
| scene-2d.large/bare/settle | 2.5 µs | 3.5 µs | +20.0% |
| scene-2d.large/bare/steady | 38.08 ms | 42.54 ms | -2.9% |
| scene-2d.large/bare/teardown | 651.7 µs | 802.5 µs | +15.4% |
| scene-2d.large/compose/burst | 23.20 ms | 33.35 ms | +6.9% |
| scene-2d.large/compose/cold | 8.24 ms | 9.86 ms | +1.9% |
| scene-2d.large/compose/counts | 188.81 ms | 188.81 ms | +3.6% |
| scene-2d.large/compose/settle | 2.4 µs | 3.1 µs | +14.9% |
| scene-2d.large/compose/steady | 78.73 ms | 83.54 ms | +5.2% |
| scene-2d.large/compose/teardown | 1.16 ms | 1.59 ms | -1.4% |
| scene-2d.large/memory/mounted | 4823 KiB | 4823 KiB | -0.2% |
| scene-2d.large/memory/teardown | 0 KiB | 0 KiB | — |
| scene-2d.medium/bare/burst | 4.60 ms | 7.15 ms | -26.4% |
| scene-2d.medium/bare/cold | 1.03 ms | 3.80 ms | -9.1% |
| scene-2d.medium/bare/settle | 1.1 µs | 2.4 µs | +34.0% |
| scene-2d.medium/bare/steady | 21.45 ms | 25.33 ms | -24.2% |
| scene-2d.medium/bare/teardown | 427.5 µs | 593.2 µs | +23.8% |
| scene-2d.medium/compose/burst | 13.45 ms | 18.46 ms | -16.7% |
| scene-2d.medium/compose/cold | 3.53 ms | 5.51 ms | -15.5% |
| scene-2d.medium/compose/counts | 95.14 ms | 95.14 ms | -29.6% |
| scene-2d.medium/compose/settle | 1.8 µs | 2.7 µs | +53.0% |
| scene-2d.medium/compose/steady | 40.46 ms | 43.95 ms | -27.6% |
| scene-2d.medium/compose/teardown | 860.2 µs | 1.02 ms | +16.7% |
| scene-2d.medium/memory/mounted | 2337 KiB | 2337 KiB | +0.0% |
| scene-2d.medium/memory/teardown | 0 KiB | 0 KiB | — |
| scene-3d/bare | 3.84 ms | 4.67 ms | +13.3% |
| scene-3d/compose | 8.37 ms | 9.96 ms | +11.0% |
| scene-3d/memory/mounted | 1244 KiB | 1244 KiB | +0.0% |
| scene-3d/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| session-cycle.extreme/bare/burst | 140.33 ms | 204.90 ms | +2.7% |
| session-cycle.extreme/bare/cold | 4.7 µs | 7.6 µs | +0.6% |
| session-cycle.extreme/bare/settle | 2.9 µs | 3.6 µs | +9.3% |
| session-cycle.extreme/bare/steady | 183.20 ms | 282.61 ms | -7.7% |
| session-cycle.extreme/bare/teardown | 2.8 µs | 3.5 µs | -5.1% |
| session-cycle.extreme/compose/burst | 123.12 ms | 180.24 ms | -13.8% |
| session-cycle.extreme/compose/cold | 4.9 µs | 8.9 µs | +1.9% |
| session-cycle.extreme/compose/counts | 389.61 ms | 389.61 ms | +6.7% |
| session-cycle.extreme/compose/settle | 2.5 µs | 2.9 µs | +4.1% |
| session-cycle.extreme/compose/steady | 222.78 ms | 303.19 ms | -6.6% |
| session-cycle.extreme/compose/teardown | 2.9 µs | 3.4 µs | -3.0% |
| session-cycle.extreme/memory/mounted | 12 KiB | 12 KiB | +0.0% |
| session-cycle.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| session-cycle.large/bare/burst | 41.23 ms | 71.69 ms | +6.2% |
| session-cycle.large/bare/cold | 3.9 µs | 5.4 µs | -7.4% |
| session-cycle.large/bare/settle | 1.7 µs | 2.4 µs | -23.9% |
| session-cycle.large/bare/steady | 66.80 ms | 93.16 ms | -1.3% |
| session-cycle.large/bare/teardown | 2.0 µs | 2.4 µs | -4.0% |
| session-cycle.large/compose/burst | 48.88 ms | 53.45 ms | +28.8% |
| session-cycle.large/compose/cold | 4.0 µs | 5.7 µs | -6.3% |
| session-cycle.large/compose/counts | 126.92 ms | 126.92 ms | -14.0% |
| session-cycle.large/compose/settle | 1.7 µs | 2.2 µs | -6.1% |
| session-cycle.large/compose/steady | 69.77 ms | 94.36 ms | -6.4% |
| session-cycle.large/compose/teardown | 1.5 µs | 2.0 µs | -8.3% |
| session-cycle.large/memory/mounted | 5 KiB | 5 KiB | -61.5% |
| session-cycle.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| session-cycle.medium/bare/burst | 8.27 ms | 17.54 ms | +16.8% |
| session-cycle.medium/bare/cold | 3.0 µs | 4.1 µs | +5.0% |
| session-cycle.medium/bare/settle | 1.2 µs | 1.6 µs | +29.7% |
| session-cycle.medium/bare/steady | 11.69 ms | 18.78 ms | -26.3% |
| session-cycle.medium/bare/teardown | 1.0 µs | 3.1 µs | -1.0% |
| session-cycle.medium/compose/burst | 10.92 ms | 15.04 ms | -30.0% |
| session-cycle.medium/compose/cold | 3.6 µs | 6.4 µs | -10.8% |
| session-cycle.medium/compose/counts | 31.04 ms | 31.04 ms | -10.7% |
| session-cycle.medium/compose/settle | 1.5 µs | 2.2 µs | +16.5% |
| session-cycle.medium/compose/steady | 14.89 ms | 21.17 ms | -24.8% |
| session-cycle.medium/compose/teardown | 1.6 µs | 2.6 µs | +30.1% |
| session-cycle.medium/memory/mounted | 20 KiB | 20 KiB | +66.7% |
| session-cycle.medium/memory/teardown | 0 KiB | 0 KiB | — |
| spatial-scene.extreme/bare/burst | 46.00 ms | 60.01 ms | +3.6% |
| spatial-scene.extreme/bare/cold | 2.47 ms | 6.69 ms | -16.9% |
| spatial-scene.extreme/bare/settle | 2.7 µs | 3.2 µs | +78.1% |
| spatial-scene.extreme/bare/steady | 43.68 ms | 50.95 ms | -24.8% |
| spatial-scene.extreme/bare/teardown | 1.03 ms | 3.18 ms | -9.3% |
| spatial-scene.extreme/compose/burst | 107.95 ms | 145.48 ms | -9.1% |
| spatial-scene.extreme/compose/cold | 7.75 ms | 19.25 ms | -54.3% |
| spatial-scene.extreme/compose/counts | 184.19 ms | 184.19 ms | -24.6% |
| spatial-scene.extreme/compose/settle | 2.0 µs | 3.1 µs | +16.0% |
| spatial-scene.extreme/compose/steady | 39.05 ms | 42.65 ms | -32.1% |
| spatial-scene.extreme/compose/teardown | 3.63 ms | 5.65 ms | -3.3% |
| spatial-scene.extreme/memory/mounted | 6120 KiB | 6120 KiB | +2.0% |
| spatial-scene.extreme/memory/teardown | 640 KiB | 640 KiB | +23.6% |
| spatial-scene.large/bare/burst | 8.72 ms | 12.77 ms | -14.5% |
| spatial-scene.large/bare/cold | 698.4 µs | 1.40 ms | -43.0% |
| spatial-scene.large/bare/settle | 0.6 µs | 1.2 µs | -37.8% |
| spatial-scene.large/bare/steady | 12.21 ms | 13.31 ms | -22.8% |
| spatial-scene.large/bare/teardown | 214.1 µs | 254.6 µs | -15.0% |
| spatial-scene.large/compose/burst | 24.59 ms | 26.72 ms | -21.6% |
| spatial-scene.large/compose/cold | 2.18 ms | 3.66 ms | -24.9% |
| spatial-scene.large/compose/counts | 44.31 ms | 44.31 ms | -25.3% |
| spatial-scene.large/compose/settle | 1.0 µs | 2.2 µs | -16.3% |
| spatial-scene.large/compose/steady | 12.09 ms | 13.34 ms | -23.8% |
| spatial-scene.large/compose/teardown | 497.7 µs | 736.9 µs | -28.4% |
| spatial-scene.large/memory/mounted | 1838 KiB | 1838 KiB | +1.3% |
| spatial-scene.large/memory/teardown | 4 KiB | 4 KiB | +300.0% |
| spatial-scene.medium/bare/burst | 3.02 ms | 5.76 ms | -20.3% |
| spatial-scene.medium/bare/cold | 298.8 µs | 1.72 ms | -12.8% |
| spatial-scene.medium/bare/settle | 0.7 µs | 1.3 µs | -1.4% |
| spatial-scene.medium/bare/steady | 5.16 ms | 7.06 ms | -16.0% |
| spatial-scene.medium/bare/teardown | 77.9 µs | 146.5 µs | -1.2% |
| spatial-scene.medium/compose/burst | 9.02 ms | 11.75 ms | -13.7% |
| spatial-scene.medium/compose/cold | 846.9 µs | 1.61 ms | -14.3% |
| spatial-scene.medium/compose/counts | 65.87 ms | 65.87 ms | +122.1% |
| spatial-scene.medium/compose/settle | 0.8 µs | 1.3 µs | +3.9% |
| spatial-scene.medium/compose/steady | 5.93 ms | 7.06 ms | -21.9% |
| spatial-scene.medium/compose/teardown | 177.8 µs | 247.3 µs | -22.8% |
| spatial-scene.medium/memory/mounted | 728 KiB | 728 KiB | +0.0% |
| spatial-scene.medium/memory/teardown | 1 KiB | 1 KiB | -50.0% |
| status-panel/bare | 60.9 µs | 86.4 µs | -21.5% |
| status-panel/compose | 352.7 µs | 492.3 µs | -23.2% |
| status-panel/memory/mounted | 56 KiB | 56 KiB | +0.0% |
| status-panel/memory/teardown | 0 KiB | 0 KiB | — |
| unwind/bare | 2.65 ms | 3.65 ms | -41.2% |
| unwind/compose | 4.17 ms | 6.27 ms | -9.7% |
| unwind/memory/mounted | 3 KiB | 3 KiB | -72.7% |
| unwind/memory/teardown | 0 KiB | 0 KiB | — |
| update-batched/bare | 1.04 ms | 1.07 ms | +19.4% |
| update-batched/compose | 3.06 ms | 3.28 ms | +6.8% |
| update-batched/memory/mounted | 1879 KiB | 1879 KiB | +0.0% |
| update-batched/memory/teardown | 0 KiB | 0 KiB | — |
| update-fanout/bare | 1.04 ms | 1.08 ms | +19.1% |
| update-fanout/compose | 1.83 ms | 1.91 ms | +13.0% |
| update-fanout/memory/mounted | 1814 KiB | 1814 KiB | +0.0% |
| update-fanout/memory/teardown | 0 KiB | 0 KiB | — |
| update-leaf/bare | 11.0 µs | 12.4 µs | -19.9% |
| update-leaf/compose | 24.7 µs | 27.2 µs | -27.4% |
| update-leaf/memory/mounted | 2758 KiB | 2758 KiB | -0.3% |
| update-leaf/memory/teardown | 0 KiB | 0 KiB | — |
| update-repeated/bare | 37.6 µs | 38.9 µs | +0.1% |
| update-repeated/compose | 388.8 µs | 407.5 µs | -1.7% |
| update-repeated/memory/mounted | 20 KiB | 20 KiB | +0.0% |
| update-repeated/memory/teardown | 0 KiB | 0 KiB | — |
| virtual-filtered-list.extreme/bare/burst | 764.40 ms | 773.37 ms | +3.3% |
| virtual-filtered-list.extreme/bare/cold | 480.60 ms | 506.13 ms | +0.7% |
| virtual-filtered-list.extreme/bare/settle | 2.5 µs | 2.8 µs | -3.5% |
| virtual-filtered-list.extreme/bare/steady | 9.81 ms | 14.23 ms | -4.3% |
| virtual-filtered-list.extreme/bare/teardown | 180.8 µs | 245.9 µs | -1.5% |
| virtual-filtered-list.extreme/compose/burst | 811.09 ms | 829.77 ms | +4.2% |
| virtual-filtered-list.extreme/compose/cold | 504.52 ms | 535.08 ms | +3.1% |
| virtual-filtered-list.extreme/compose/counts | 1324.15 ms | 1324.15 ms | -7.9% |
| virtual-filtered-list.extreme/compose/settle | 2.0 µs | 2.4 µs | -7.7% |
| virtual-filtered-list.extreme/compose/steady | 17.24 ms | 26.10 ms | -0.2% |
| virtual-filtered-list.extreme/compose/teardown | 522.5 µs | 594.2 µs | +0.8% |
| virtual-filtered-list.extreme/memory/mounted | 31844 KiB | 31844 KiB | +0.0% |
| virtual-filtered-list.extreme/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| virtual-filtered-list.large/bare/burst | 95.05 ms | 106.96 ms | +5.8% |
| virtual-filtered-list.large/bare/cold | 59.31 ms | 63.86 ms | +4.6% |
| virtual-filtered-list.large/bare/settle | 3.0 µs | 3.6 µs | +15.4% |
| virtual-filtered-list.large/bare/steady | 5.87 ms | 7.52 ms | -15.7% |
| virtual-filtered-list.large/bare/teardown | 89.8 µs | 126.8 µs | -2.3% |
| virtual-filtered-list.large/compose/burst | 112.41 ms | 116.51 ms | +9.3% |
| virtual-filtered-list.large/compose/cold | 66.02 ms | 72.27 ms | +4.7% |
| virtual-filtered-list.large/compose/counts | 207.53 ms | 207.53 ms | +4.1% |
| virtual-filtered-list.large/compose/settle | 2.4 µs | 4.6 µs | +14.0% |
| virtual-filtered-list.large/compose/steady | 11.14 ms | 18.69 ms | +1.7% |
| virtual-filtered-list.large/compose/teardown | 292.6 µs | 497.9 µs | +4.4% |
| virtual-filtered-list.large/memory/mounted | 6982 KiB | 6982 KiB | +0.0% |
| virtual-filtered-list.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| virtual-filtered-list.medium/bare/burst | 15.04 ms | 17.22 ms | -2.2% |
| virtual-filtered-list.medium/bare/cold | 9.20 ms | 10.41 ms | +0.7% |
| virtual-filtered-list.medium/bare/settle | 2.5 µs | 3.3 µs | +2.5% |
| virtual-filtered-list.medium/bare/steady | 5.54 ms | 7.75 ms | +0.4% |
| virtual-filtered-list.medium/bare/teardown | 51.1 µs | 77.8 µs | -10.7% |
| virtual-filtered-list.medium/compose/burst | 20.13 ms | 24.14 ms | -0.3% |
| virtual-filtered-list.medium/compose/cold | 9.90 ms | 13.53 ms | -0.7% |
| virtual-filtered-list.medium/compose/counts | 53.95 ms | 53.95 ms | +10.4% |
| virtual-filtered-list.medium/compose/settle | 2.1 µs | 2.5 µs | -22.6% |
| virtual-filtered-list.medium/compose/steady | 8.83 ms | 11.66 ms | -19.3% |
| virtual-filtered-list.medium/compose/teardown | 160.3 µs | 222.6 µs | -4.1% |
| virtual-filtered-list.medium/memory/mounted | 1688 KiB | 1688 KiB | +0.0% |
| virtual-filtered-list.medium/memory/teardown | 1 KiB | 1 KiB | +0.0% |

## Trends over the last 11 main commits

```mermaid
xychart-beta
    title "animate-many/compose (median µs)"
    x-axis 1 --> 11
    line [9621.1, 4735.8, 9612.0, 7315.2, 9298.7, 4130.8, 8970.6, 6790.0, 8834.4, 9205.4, 9306.1]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [12461.7, 6898.2, 13915.6, 9639.3, 10905.1, 5761.3, 10113.7, 11560.1, 10842.8, 12348.2, 10426.3]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [16620.2, 11340.5, 15315.5, 12396.6, 13713.1, 7474.2, 13373.9, 13257.9, 12235.4, 11996.7, 13273.8]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [110129.9, 64349.2, 116391.7, 98569.9, 102876.7, 58688.1, 115195.9, 108552.8, 103684.7, 115937.5, 106415.2]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.2, 1.4, 1.4, 1.1, 1.1, 0.7, 1.1, 1.4, 0.9, 1.4, 0.7]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [46868.1, 25388.1, 44800.9, 36175.8, 41986.1, 21150.1, 40467.5, 39782.6, 41428.4, 44914.1, 40760.0]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [6005.0, 4705.5, 6853.0, 6189.7, 6219.9, 3693.0, 6309.6, 6278.2, 5999.3, 7491.5, 5412.1]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [5466.6, 3087.8, 5962.6, 4686.8, 5103.1, 2868.2, 5466.2, 5265.7, 5203.7, 5908.6, 5162.6]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [7156.2, 4813.3, 6183.5, 5849.2, 6189.4, 4268.5, 7025.1, 5800.1, 6961.6, 6669.8, 5592.5]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [76248.8, 48338.1, 78084.1, 68688.7, 75988.3, 46887.2, 80418.2, 77193.1, 76591.3, 85909.7, 76703.1]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [0.9, 1.2, 1.4, 1.2, 0.8, 1.0, 1.1, 1.4, 0.8, 1.4, 0.6]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [35460.5, 19037.5, 35808.1, 28678.7, 32946.1, 17234.9, 34669.9, 32836.2, 33753.5, 35965.6, 33580.5]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1975.4, 1851.1, 2399.1, 2304.8, 2075.6, 1672.7, 2579.5, 2372.6, 2180.7, 2684.2, 1910.4]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [1463.5, 1805.0, 1407.7, 1828.7, 1713.2, 1721.3, 1089.5, 842.0, 1734.8, 1371.7, 837.2]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [2013.4, 1659.3, 1575.4, 1806.3, 1454.3, 1510.6, 1309.3, 1262.3, 1600.9, 1362.0, 1114.5]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [22746.0, 29658.4, 24261.2, 29711.8, 27538.5, 28220.6, 22030.3, 17110.4, 28591.1, 24743.2, 17148.6]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [0.5, 0.5, 0.6, 0.6, 0.5, 0.6, 0.5, 0.6, 0.6, 0.4, 0.5]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [11237.2, 14637.0, 10651.3, 14357.3, 13461.9, 13406.0, 8401.2, 6375.1, 13610.7, 10392.6, 6186.6]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [356.0, 417.8, 496.0, 505.8, 421.2, 418.6, 338.6, 432.0, 436.3, 384.9, 351.9]
```

```mermaid
xychart-beta
    title "branch-swap/compose (median µs)"
    x-axis 1 --> 11
    line [4113.6, 4729.3, 3561.0, 2524.1, 2610.3, 2522.9, 4591.4, 1909.9, 4240.8, 3939.9, 3102.4]
```

```mermaid
xychart-beta
    title "cold-mount-100/compose (median µs)"
    x-axis 1 --> 11
    line [686.8, 560.2, 838.1, 567.4, 589.5, 322.8, 586.1, 833.3, 574.8, 590.4, 542.0]
```

```mermaid
xychart-beta
    title "cold-mount-1000/compose (median µs)"
    x-axis 1 --> 11
    line [8399.3, 4719.3, 3773.5, 7121.6, 6041.0, 5964.6, 7856.3, 5534.2, 7586.1, 7564.1, 6423.2]
```

```mermaid
xychart-beta
    title "cold-mount-10000/compose (median µs)"
    x-axis 1 --> 11
    line [74882.4, 77308.0, 75289.0, 90310.2, 100985.1, 86939.8, 92707.3, 108106.4, 117169.6, 87680.3, 84895.8]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [917195.8, 848359.9, 869706.9, 657651.2, 855176.6, 921506.7, 908083.0, 573450.9, 461483.4, 761043.5, 816508.3]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [564671.1, 532198.1, 527821.7, 398200.7, 504535.6, 560369.8, 559329.2, 357117.7, 275265.8, 469042.6, 502280.7]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [1731762.7, 1413521.5, 1498282.4, 1110786.6, 1445044.7, 1520204.8, 1598444.8, 1013220.0, 820746.8, 1359771.1, 1345694.4]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.1, 2.1, 1.9, 2.3, 2.1, 2.0, 2.5, 1.9, 2.3, 1.6, 2.0]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [27880.3, 26608.5, 24816.6, 19150.7, 24207.3, 25586.7, 23913.6, 16161.1, 13884.4, 22676.4, 23497.7]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1360.6, 1265.7, 1291.4, 1110.8, 1495.5, 1394.8, 1342.7, 1198.4, 894.8, 1159.8, 1218.1]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [108370.1, 137573.0, 114009.5, 133242.0, 132707.0, 131389.9, 95336.0, 90479.1, 132048.5, 117034.0, 90517.6]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [60694.5, 76941.3, 63120.6, 77459.9, 77741.8, 77504.9, 55851.8, 49552.1, 78186.9, 63835.1, 50574.9]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [187980.4, 244856.9, 207644.2, 241741.6, 244790.8, 244140.2, 179442.8, 167872.8, 245479.5, 209517.2, 173625.5]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.5, 1.6, 2.4, 1.8, 1.5, 1.4, 1.2, 2.6, 1.6, 1.7, 2.0]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [14957.3, 18099.0, 16104.9, 16959.8, 15977.4, 16630.3, 11479.9, 11754.6, 16353.8, 12991.3, 10569.2]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [469.9, 567.8, 474.6, 573.2, 553.4, 516.9, 391.3, 447.8, 530.9, 497.7, 413.5]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [69739.0, 35886.9, 46673.5, 57857.6, 48420.1, 50977.2, 67910.8, 47817.6, 71027.7, 60248.1, 63971.8]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [39856.7, 21102.5, 25793.1, 34471.6, 28818.4, 27678.6, 37266.3, 27413.1, 42489.8, 36315.9, 37015.0]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [141793.3, 71603.8, 99581.8, 122381.7, 107874.3, 104361.4, 148720.8, 103336.5, 148623.9, 130794.7, 134981.7]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.3, 1.0, 1.8, 1.5, 2.2, 2.0, 2.7, 2.0, 2.4, 1.4, 1.9]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [20754.9, 8162.0, 12334.8, 12381.3, 12840.2, 10470.5, 13619.2, 11418.3, 14976.0, 13623.4, 16125.3]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [356.8, 187.9, 248.2, 292.5, 260.1, 258.1, 350.6, 241.2, 365.1, 291.9, 312.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [20153.1, 12231.0, 11532.2, 14838.7, 15355.1, 14237.6, 19804.9, 12160.9, 22267.2, 17938.8, 17343.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [606.7, 398.8, 383.4, 479.8, 502.1, 460.9, 622.2, 391.5, 598.7, 533.1, 544.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [23438.8, 13693.1, 17691.5, 22404.5, 21786.2, 19601.6, 29177.0, 18354.6, 29196.1, 24726.4, 24497.4]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.3, 0.9, 1.2, 1.1, 1.4, 0.9, 2.0, 1.1, 1.9, 1.0, 1.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [863.1, 432.7, 533.0, 686.6, 708.9, 700.6, 897.3, 551.6, 891.7, 837.9, 851.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [599.1, 388.0, 393.2, 539.8, 566.2, 477.4, 750.9, 387.6, 852.7, 578.6, 584.8]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [9706.7, 4188.0, 5056.8, 5928.3, 7819.4, 5262.6, 10115.0, 6456.2, 9438.2, 6248.7, 8699.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [371.6, 211.1, 249.9, 272.8, 305.9, 241.0, 388.7, 281.7, 353.2, 277.0, 315.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [16409.6, 9670.9, 14102.2, 13629.3, 13693.5, 13209.6, 18184.6, 13156.2, 19699.1, 16149.3, 17614.6]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.0, 0.6, 1.2, 0.9, 1.0, 0.7, 1.6, 1.1, 1.3, 0.8, 0.8]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [865.5, 435.0, 514.3, 679.4, 690.4, 687.8, 906.9, 544.2, 843.3, 826.2, 842.4]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [297.0, 159.4, 204.5, 229.9, 234.0, 203.9, 330.2, 203.6, 300.1, 241.5, 297.5]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [3256.9, 3747.3, 2886.3, 1441.8, 1725.1, 2212.3, 2923.7, 1545.5, 3048.9, 2276.1, 2787.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [214.4, 274.0, 218.8, 100.9, 158.5, 169.7, 216.8, 94.9, 220.6, 178.7, 193.6]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [6736.4, 8374.2, 5949.6, 3187.1, 3588.3, 3998.0, 5805.3, 3074.5, 6058.2, 4688.6, 4602.1]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [0.8, 1.3, 0.7, 0.4, 0.9, 0.6, 1.0, 0.4, 0.7, 0.5, 0.7]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [823.5, 817.9, 816.4, 407.5, 448.9, 446.8, 626.3, 405.8, 836.7, 691.9, 679.1]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [120.9, 153.9, 121.5, 62.5, 79.1, 89.7, 105.7, 57.1, 114.0, 91.1, 113.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [57275.1, 58550.6, 48500.0, 29373.5, 40666.3, 39982.2, 49684.3, 29001.5, 55300.8, 46626.0, 54331.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [35128.8, 48787.2, 29239.1, 17390.4, 22368.5, 29280.2, 24311.0, 16950.3, 33925.4, 35068.3, 35395.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [203645.1, 278041.5, 232881.6, 153922.4, 182354.5, 184019.0, 216326.1, 144957.2, 253653.9, 222367.1, 244247.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.7, 2.7, 2.1, 1.3, 2.4, 2.5, 2.5, 1.7, 2.1, 2.4, 2.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [67605.4, 110490.0, 62006.6, 30428.1, 51252.0, 46762.5, 64252.2, 28767.6, 66612.9, 59787.7, 63653.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1382.9, 1964.2, 1144.8, 694.6, 900.0, 1153.0, 1185.0, 704.6, 1317.6, 1288.5, 1374.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [22661.4, 12171.9, 13759.9, 13609.3, 14702.9, 13810.3, 16589.5, 13156.5, 16938.4, 14336.2, 14496.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [16026.8, 10773.1, 8930.7, 10020.5, 8909.7, 10600.2, 13336.4, 10600.4, 12699.6, 11446.0, 12019.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [80942.4, 39356.0, 64825.7, 63038.7, 65034.2, 58295.1, 80549.5, 59637.8, 87345.1, 67044.6, 67442.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.9, 1.8, 1.6, 1.3, 1.8, 1.6, 2.4, 1.4, 2.1, 1.2, 1.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [29699.1, 13169.4, 18127.8, 19237.6, 16977.4, 16994.0, 22978.3, 17373.8, 24022.9, 20372.9, 19422.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [555.6, 288.1, 337.4, 360.3, 368.0, 351.5, 470.6, 319.2, 503.9, 407.0, 387.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [8775.5, 6489.2, 8202.0, 6319.3, 6445.7, 3900.8, 7292.3, 7175.4, 6417.0, 7572.0, 6505.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [6847.6, 4064.4, 5318.6, 5299.9, 5743.4, 2913.7, 5973.1, 4930.1, 5396.7, 6172.9, 5428.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [33013.6, 23547.5, 40497.8, 27670.3, 31664.9, 18380.9, 32467.4, 30743.4, 32153.6, 32792.7, 29426.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.1, 1.6, 2.1, 1.6, 0.8, 0.6, 1.3, 1.4, 0.8, 1.5, 0.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [10632.2, 6021.8, 10678.6, 8206.7, 8958.3, 4763.9, 9523.9, 9074.0, 9048.8, 9567.1, 9299.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [231.8, 181.7, 264.1, 212.7, 181.2, 110.8, 211.8, 210.3, 188.4, 238.5, 207.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [38163.8, 45513.9, 41164.8, 46703.8, 44520.9, 38822.5, 40775.0, 36485.4, 43653.6, 35867.4, 34266.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [30010.2, 36978.8, 29991.4, 41393.0, 32387.4, 25962.5, 25504.0, 25319.0, 37083.9, 25771.7, 25931.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [308853.3, 356183.6, 347691.5, 358267.1, 320929.1, 329140.8, 275854.8, 259581.0, 334907.8, 295014.5, 246701.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.9, 1.8, 2.1, 2.0, 1.8, 1.8, 1.4, 2.3, 2.2, 1.9, 2.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [170674.3, 195161.2, 168550.7, 182630.3, 163543.1, 182753.2, 138682.5, 133780.4, 165275.8, 149408.4, 111451.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1011.2, 1123.7, 1080.1, 1376.9, 1058.4, 1062.6, 926.8, 1133.5, 1104.3, 970.0, 848.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [20445.0, 22651.5, 14964.2, 12211.5, 11912.3, 14060.4, 15071.6, 9027.6, 18620.6, 19561.0, 14256.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [12195.2, 16233.7, 12335.9, 7185.3, 8832.7, 11712.1, 10066.8, 8342.5, 10620.5, 8742.6, 11307.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [116758.9, 159716.3, 121699.6, 72346.5, 90059.4, 95283.3, 117176.1, 61067.3, 135298.4, 127316.3, 114177.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.7, 2.6, 1.9, 1.3, 1.5, 2.2, 2.2, 1.2, 1.7, 1.7, 1.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [65487.9, 100478.1, 59706.0, 34308.7, 51437.5, 47528.6, 59568.6, 31848.4, 60575.3, 53501.9, 51348.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [465.8, 729.5, 440.9, 295.7, 317.9, 369.3, 410.5, 228.9, 431.5, 405.0, 388.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [7359.9, 9363.4, 7988.6, 9747.3, 9365.5, 8349.5, 6021.4, 7530.2, 8564.1, 7945.3, 5942.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [5217.5, 8076.9, 4571.3, 5260.1, 4670.0, 5901.2, 3485.4, 3508.0, 6353.3, 5982.3, 4253.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [53771.4, 72919.2, 57149.8, 65876.4, 59908.3, 63387.5, 49532.5, 47417.3, 63149.1, 51987.3, 47650.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.0, 1.3, 1.6, 1.3, 1.0, 0.9, 1.1, 2.1, 1.1, 1.2, 1.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [24173.9, 29083.3, 23959.0, 26680.3, 24724.4, 25894.3, 17904.5, 18238.3, 25204.8, 20874.4, 18761.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [206.6, 265.4, 235.4, 253.6, 224.3, 241.3, 176.2, 215.7, 232.0, 204.8, 166.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [67899.9, 40475.8, 49011.8, 47993.9, 58958.8, 49403.5, 73334.0, 54549.5, 66548.0, 54692.4, 50808.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [43440.3, 23189.6, 21354.5, 24947.4, 23666.7, 30840.0, 48721.1, 23251.0, 32258.1, 34556.2, 37320.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [322090.0, 155075.8, 263232.8, 241537.1, 281124.0, 231871.8, 353585.2, 248508.0, 354600.3, 272145.1, 280403.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.2, 2.0, 2.2, 1.5, 2.1, 2.1, 3.1, 2.2, 2.6, 1.9, 2.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [168290.2, 78037.0, 94632.2, 97962.6, 108987.6, 90436.8, 176374.5, 99424.5, 155470.2, 102340.9, 104819.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1918.2, 1082.7, 1099.8, 1219.6, 1413.1, 1134.2, 2628.7, 1181.1, 1619.0, 1290.8, 1234.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [15198.1, 12817.1, 17384.4, 12828.2, 14670.0, 10802.1, 16642.4, 15644.2, 13803.3, 15894.8, 14230.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [14413.0, 10025.1, 12412.5, 10919.1, 9991.0, 7777.1, 12912.0, 9409.6, 12787.2, 12599.2, 13130.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [94808.6, 66047.0, 131198.0, 102800.1, 106962.5, 78783.2, 123433.1, 103192.9, 104430.0, 107261.8, 97542.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.7, 2.1, 2.3, 1.7, 1.5, 1.8, 2.1, 1.8, 1.5, 2.1, 1.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [42870.9, 30465.6, 44952.7, 30109.8, 34357.1, 23042.6, 39531.9, 34800.9, 32076.5, 35789.2, 30831.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [421.7, 347.3, 504.6, 355.7, 394.0, 294.7, 437.3, 369.5, 374.1, 431.8, 360.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [9268.9, 6214.3, 6318.0, 7594.1, 7048.3, 6573.8, 9681.2, 6917.6, 10671.7, 7352.6, 7444.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [6175.2, 5202.2, 4209.2, 4766.1, 4414.4, 4459.7, 5534.7, 4639.2, 6259.4, 4559.3, 5122.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [48430.6, 24546.5, 34883.2, 42248.6, 35027.4, 39583.1, 54112.8, 35568.3, 53135.7, 45790.5, 44009.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.8, 1.7, 1.3, 1.0, 1.4, 1.1, 2.0, 1.2, 2.2, 0.9, 1.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [18970.0, 11144.9, 13984.1, 14562.6, 12821.2, 13331.6, 17419.2, 12697.6, 19931.5, 14936.2, 14865.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [266.7, 172.8, 182.1, 197.6, 194.9, 188.5, 272.0, 172.4, 326.5, 214.9, 209.0]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [21280.1, 17085.4, 25262.9, 28283.5, 20257.0, 10917.0, 19502.9, 24080.5, 19960.3, 23727.6, 18390.4]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [107928.0, 93149.3, 109143.0, 107346.8, 112756.0, 73472.7, 113745.4, 103329.2, 116577.4, 113946.5, 114118.9]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [345877.0, 271171.1, 372031.9, 371349.9, 343525.6, 217868.2, 360516.2, 336407.1, 365059.0, 423319.5, 361829.1]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.8, 2.2, 2.2, 2.2, 1.9, 1.8, 1.9, 2.1, 1.9, 2.3, 1.6]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [112062.9, 90774.1, 117256.3, 106657.1, 98348.3, 59055.9, 101799.9, 103158.3, 100873.5, 115044.8, 87598.0]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [33241.4, 38551.9, 37604.0, 45565.4, 37162.6, 31516.4, 39172.8, 37057.2, 37139.6, 45558.4, 33108.3]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [8720.8, 10514.8, 8702.4, 10287.4, 10136.5, 9822.3, 8483.4, 7252.4, 9927.0, 8424.9, 6957.0]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [35331.9, 46561.1, 36425.1, 45716.0, 39872.5, 39917.1, 29158.2, 30742.1, 43972.9, 34958.4, 32787.8]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [127887.2, 165417.5, 156094.5, 170891.3, 159918.6, 159409.8, 123085.1, 129687.2, 160052.6, 139696.9, 134004.0]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.4, 1.6, 2.0, 1.5, 1.1, 1.3, 1.2, 1.9, 1.5, 1.3, 2.1]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [42270.1, 58987.0, 46845.8, 49441.4, 48906.3, 48394.1, 38336.6, 38926.6, 50075.4, 42207.0, 38612.3]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [9384.4, 11676.7, 12636.7, 11453.4, 9676.2, 9468.6, 7501.9, 12956.1, 10009.3, 9471.1, 13938.6]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [8064.7, 5412.3, 8325.1, 7310.8, 7725.2, 4373.6, 8143.5, 7842.8, 7736.3, 7767.2, 7690.7]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [23640.0, 18354.3, 20523.4, 16963.3, 24114.6, 15390.3, 22026.8, 20615.5, 21547.9, 19992.3, 18799.4]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [92316.8, 67519.0, 107959.8, 94567.5, 113174.7, 55185.3, 104655.9, 96762.4, 98185.9, 114888.1, 97832.6]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.6, 2.1, 2.2, 1.7, 1.5, 1.0, 1.9, 2.1, 1.6, 1.7, 1.6]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [39845.5, 29943.1, 47449.4, 35007.7, 37155.4, 20922.3, 41221.1, 36357.3, 41695.6, 35887.0, 39232.7]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [6105.6, 6486.4, 6913.2, 7758.7, 5425.1, 3598.7, 7513.6, 6383.3, 5777.9, 6224.8, 6071.4]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [95057.1, 94073.3, 97254.7, 96247.4, 87014.9, 56203.8, 97444.4, 80154.4, 77927.4, 103746.7, 82803.5]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [30591.9, 22227.2, 28424.7, 29174.1, 36070.7, 21358.8, 36288.9, 26574.9, 35611.0, 36983.5, 34520.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [228810.1, 211002.3, 277035.4, 262243.7, 240299.8, 164476.9, 257313.3, 264214.0, 233920.7, 276780.2, 221301.1]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.0, 2.8, 2.9, 2.6, 2.0, 2.1, 2.8, 2.4, 2.1, 2.9, 2.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [56507.4, 52162.7, 59312.8, 52039.1, 53658.6, 36010.3, 61177.2, 57566.9, 48010.2, 68485.7, 53094.5]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [13113.8, 13417.0, 14500.7, 15465.3, 13655.0, 10660.5, 15751.4, 13314.0, 13344.5, 17644.9, 12661.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [27403.3, 40547.2, 27643.0, 16736.6, 24669.8, 21688.5, 29979.9, 16166.2, 30300.2, 30155.5, 28582.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [11952.4, 12445.2, 13843.1, 7413.0, 8312.1, 8704.4, 10161.2, 6701.9, 12357.0, 10756.6, 10370.8]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [100423.7, 101703.7, 92984.2, 61791.0, 76047.1, 71772.8, 86609.3, 65186.0, 106708.1, 101829.6, 109206.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.5, 2.3, 2.0, 1.3, 1.4, 2.1, 2.5, 1.5, 2.1, 2.3, 2.4]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [19345.5, 23966.2, 20176.3, 10165.4, 13367.2, 11453.9, 16848.3, 9876.0, 19588.2, 17985.1, 19800.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [2906.6, 4134.8, 3277.4, 2382.9, 2631.1, 3034.7, 3549.8, 2278.8, 3502.9, 3805.4, 3819.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [13879.1, 10176.6, 13944.0, 11937.1, 11307.3, 6750.6, 12996.3, 12989.8, 13667.0, 12683.5, 13714.4]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [6104.0, 4520.5, 5933.8, 6295.2, 6588.9, 3499.8, 6545.6, 5372.2, 7062.3, 6753.8, 6482.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [39918.2, 26024.7, 45495.9, 38988.2, 39254.8, 26227.8, 42747.2, 41118.5, 39198.0, 43906.8, 41520.5]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.3, 1.8, 2.2, 1.9, 1.0, 0.6, 1.3, 2.0, 1.3, 1.8, 1.1]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [8588.8, 6714.5, 10581.6, 7636.9, 7928.6, 4687.4, 9124.6, 9217.5, 9170.4, 8764.4, 9846.1]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1136.6, 1234.8, 1482.3, 1376.9, 1147.0, 743.8, 1440.3, 1227.4, 1235.2, 1620.3, 1200.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [139551.2, 143863.6, 147758.9, 149769.7, 128240.4, 93044.8, 149168.0, 144251.0, 131585.7, 147043.5, 138853.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [37476.4, 26814.0, 37931.2, 27280.6, 33457.4, 32352.6, 32106.3, 26594.2, 30779.4, 41249.8, 30978.2]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [453942.0, 363604.4, 495520.1, 408039.1, 458887.5, 256641.6, 523119.6, 464648.7, 389212.7, 471089.2, 417051.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.0, 2.9, 2.8, 2.4, 2.0, 2.4, 2.3, 2.3, 2.1, 2.8, 1.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [149428.6, 140862.0, 167028.5, 121048.4, 129724.9, 78538.3, 131756.2, 137165.3, 123652.4, 139636.4, 120641.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [13492.1, 13806.8, 15285.8, 15385.2, 13545.9, 12137.9, 14643.9, 14547.8, 13579.1, 18199.6, 14372.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [64372.4, 33315.0, 43296.5, 43553.3, 35754.9, 37879.2, 59168.1, 41786.5, 62893.0, 41234.0, 41592.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [12505.9, 8058.4, 8874.3, 10385.9, 10093.6, 10681.3, 14504.4, 8713.5, 14374.0, 11292.8, 11386.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [187160.4, 84451.7, 121670.1, 137514.1, 119307.2, 116472.5, 200142.9, 111452.0, 166578.4, 138418.4, 149671.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.3, 1.9, 2.4, 1.6, 2.2, 2.0, 3.0, 1.6, 2.1, 1.7, 1.6]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [56628.5, 29545.4, 39104.4, 46006.1, 40089.7, 36520.1, 60341.0, 39911.6, 62544.5, 41919.1, 43771.8]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [3915.7, 2636.1, 3097.4, 3094.1, 3740.5, 3308.5, 5401.4, 2983.5, 5239.3, 3464.3, 3300.5]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [20435.0, 27247.9, 20502.7, 11766.6, 17019.7, 16181.3, 18018.6, 11196.0, 22081.2, 18378.1, 19867.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [6221.8, 7648.4, 5806.6, 3251.3, 4242.8, 4567.5, 5171.4, 4429.6, 6358.0, 5384.5, 5603.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [79311.3, 99350.5, 73925.1, 39521.4, 64266.7, 64313.0, 69307.7, 44008.5, 83227.7, 71954.3, 74650.6]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.2, 2.3, 1.9, 0.9, 1.5, 2.7, 1.8, 1.2, 1.9, 1.9, 2.3]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [21056.0, 29692.1, 21901.2, 11598.6, 16084.1, 17362.8, 19878.1, 12256.6, 20947.0, 16964.2, 20623.5]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1121.8, 1664.5, 1361.2, 805.1, 1141.2, 1629.0, 1316.3, 1084.8, 1512.6, 1537.9, 1520.4]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [55182.4, 21144.1, 30740.0, 30157.3, 32728.7, 31850.2, 49922.1, 31055.3, 53579.0, 32139.1, 31815.6]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [32818.0, 17437.9, 19443.1, 21501.3, 23241.9, 22558.6, 28906.9, 21218.7, 23868.0, 26137.7, 23298.4]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [135325.6, 59311.0, 95734.4, 87969.1, 101861.3, 98252.5, 128543.0, 90083.9, 144277.1, 97523.8, 113922.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.6, 1.7, 2.1, 1.5, 1.8, 2.0, 3.5, 1.8, 2.8, 1.8, 1.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [5921.1, 2635.6, 4056.5, 3954.9, 4210.9, 3954.1, 5955.2, 3846.6, 5495.2, 4193.8, 4440.5]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [15688.5, 7760.4, 10927.2, 10437.8, 11785.0, 10969.4, 16640.3, 11061.9, 15506.0, 11121.9, 12063.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [17004.7, 10266.2, 12968.2, 14944.3, 13156.1, 11903.4, 18937.3, 12006.6, 26302.5, 13367.3, 15223.0]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [14612.0, 9463.4, 9673.3, 10162.5, 10425.1, 9138.0, 16568.5, 10069.1, 12282.3, 12910.0, 10508.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [56031.2, 30721.5, 40692.9, 42414.6, 39516.8, 42369.1, 68730.7, 35875.0, 64835.6, 48936.9, 50665.5]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.0, 1.2, 1.6, 1.4, 1.4, 1.4, 2.6, 1.3, 2.3, 0.9, 1.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [2403.1, 1405.3, 2440.9, 2190.5, 1904.3, 1822.0, 3192.2, 1907.8, 2995.3, 2045.1, 2228.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [4514.6, 2934.8, 3895.1, 3908.4, 3767.0, 3746.9, 5621.8, 3533.9, 5888.2, 3726.7, 3834.5]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [6844.5, 9109.6, 5969.2, 3082.2, 3646.2, 3725.6, 4815.2, 2559.6, 6620.1, 4670.7, 4261.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [6071.8, 5752.8, 4648.3, 2237.8, 3552.1, 4437.4, 5690.1, 2615.3, 5009.7, 5158.5, 5485.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [24575.3, 28494.2, 23587.6, 12562.2, 18385.8, 16519.4, 22390.3, 11729.1, 24857.0, 20708.8, 20090.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [0.9, 2.3, 0.9, 0.5, 1.0, 1.6, 1.3, 0.5, 1.2, 0.7, 0.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [968.2, 1678.2, 1013.9, 512.7, 665.1, 683.5, 862.0, 487.6, 1022.5, 794.7, 785.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1286.2, 1937.9, 1228.0, 691.1, 924.8, 1172.3, 1228.5, 658.3, 1406.4, 1132.9, 1103.5]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [53690.8, 21373.5, 33150.6, 31009.3, 34242.4, 32524.1, 61317.8, 32078.2, 60915.5, 31620.4, 33228.4]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [42536.2, 18791.7, 19043.0, 26424.6, 22746.0, 21814.9, 36125.5, 21193.5, 28086.8, 30303.7, 23060.2]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [210738.5, 102006.1, 145730.7, 183814.2, 178258.1, 168433.6, 242062.2, 161868.6, 232863.0, 186541.9, 188245.5]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.5, 1.5, 1.8, 1.5, 2.2, 2.0, 3.5, 2.1, 3.2, 1.6, 1.5]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [52614.8, 24846.6, 30404.9, 43592.1, 39017.9, 38674.6, 51533.9, 30775.3, 51325.8, 43053.2, 41488.7]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [16453.7, 7976.6, 10670.0, 11402.2, 12000.1, 11279.1, 18240.8, 11619.8, 16517.0, 11460.7, 11769.0]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [19159.2, 27915.4, 15705.5, 8668.6, 10885.5, 11937.1, 15087.9, 7846.9, 18172.7, 15409.8, 14938.4]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [18682.7, 20066.2, 13238.4, 7382.9, 9032.9, 10279.1, 13823.3, 9031.2, 13599.2, 12232.6, 14035.7]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [91912.5, 114130.0, 97208.5, 44084.1, 62545.8, 66003.8, 77824.4, 47317.9, 96845.6, 83787.9, 83701.1]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.2, 2.6, 1.6, 0.7, 1.2, 2.1, 2.3, 0.8, 2.2, 2.1, 2.2]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [22658.3, 28149.5, 23067.9, 10007.7, 11093.8, 12671.3, 15637.9, 10516.7, 24500.8, 18521.9, 20233.5]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [4112.4, 6443.5, 4511.9, 2413.7, 3359.3, 3824.7, 4739.9, 2515.0, 4863.6, 4518.2, 4821.5]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [6413.9, 7923.0, 6655.7, 2987.1, 4307.0, 3682.8, 4907.8, 3324.3, 5747.3, 5064.4, 5297.7]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [7035.0, 7218.0, 4634.0, 2388.0, 4074.6, 3602.4, 4409.0, 2479.5, 5244.2, 4760.9, 4419.5]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [34527.2, 41760.6, 39554.7, 17018.3, 25208.3, 27401.5, 28674.4, 17827.2, 35343.4, 32495.8, 34975.7]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [0.9, 2.2, 1.4, 0.5, 1.2, 1.7, 1.3, 0.5, 0.9, 1.4, 1.2]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [9633.0, 11476.3, 10002.5, 4084.2, 5621.1, 4900.5, 6594.9, 4294.7, 9081.4, 7094.4, 6927.6]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1339.3, 2013.9, 1522.0, 723.0, 1106.6, 1193.6, 1316.0, 773.1, 1320.4, 1297.3, 1347.7]
```

```mermaid
xychart-beta
    title "events/compose (median µs)"
    x-axis 1 --> 11
    line [12824.2, 16203.6, 12880.5, 7949.6, 9101.6, 11355.0, 13309.8, 7443.4, 13513.3, 13190.8, 11935.0]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [10283.2, 16184.3, 10218.7, 5604.9, 6973.3, 5782.0, 8076.6, 4860.3, 9309.8, 8729.2, 8091.1]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [26249.5, 32777.8, 23939.4, 18653.8, 19197.1, 21671.9, 23951.9, 16163.0, 26269.8, 26609.8, 24650.5]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [42785.5, 50581.3, 44294.9, 28478.2, 34069.7, 40942.9, 39564.4, 25554.2, 46292.0, 44753.1, 41508.4]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.2, 2.7, 1.8, 1.4, 1.5, 1.9, 1.8, 0.9, 1.0, 1.8, 1.5]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [264.2, 375.4, 304.4, 195.7, 222.4, 257.6, 246.7, 159.7, 268.0, 299.6, 255.5]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [2274.0, 4160.9, 2610.4, 1830.1, 2189.4, 2793.2, 2584.0, 1396.7, 2316.0, 2830.3, 2521.4]
```

```mermaid
xychart-beta
    title "inspector.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [5172.9, 5523.4, 4834.6, 2399.5, 2543.4, 2718.1, 3191.6, 2265.9, 4720.2, 4039.6, 3748.0]
```

```mermaid
xychart-beta
    title "inspector.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [10732.1, 10546.3, 9019.8, 4807.1, 6297.0, 7597.7, 6967.6, 5011.2, 8652.6, 7819.4, 6848.8]
```

```mermaid
xychart-beta
    title "inspector.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [22551.8, 25059.8, 22413.4, 13855.0, 17657.9, 18402.8, 17853.9, 12096.7, 24833.1, 21422.5, 20295.4]
```

```mermaid
xychart-beta
    title "inspector.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [0.8, 2.1, 1.0, 0.4, 1.1, 1.8, 1.1, 0.5, 1.4, 1.1, 0.9]
```

```mermaid
xychart-beta
    title "inspector.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [256.4, 347.2, 245.5, 127.5, 160.8, 218.3, 221.2, 140.6, 289.8, 244.4, 219.7]
```

```mermaid
xychart-beta
    title "inspector.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1173.0, 1562.2, 1034.1, 633.8, 819.3, 1184.7, 1068.1, 626.4, 1340.9, 1197.0, 1095.5]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [1730.1, 812.1, 949.5, 1228.1, 1202.6, 1212.4, 1601.2, 956.2, 1714.3, 1575.6, 1559.5]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [2916.5, 2007.5, 1674.3, 1787.9, 2053.5, 2149.1, 2961.2, 1596.8, 2948.0, 1870.6, 2680.1]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [6271.7, 3825.7, 3465.4, 5629.4, 5044.4, 4665.5, 6362.0, 3999.4, 8345.3, 6076.5, 6280.1]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [0.6, 0.4, 0.6, 0.6, 0.5, 0.5, 0.8, 0.6, 1.2, 0.6, 0.6]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [220.2, 113.5, 160.3, 190.7, 191.8, 189.0, 247.2, 165.5, 280.7, 243.4, 218.6]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [363.0, 214.0, 235.1, 343.4, 305.4, 324.2, 440.7, 286.7, 590.6, 378.0, 369.3]
```

```mermaid
xychart-beta
    title "keyed-append/compose (median µs)"
    x-axis 1 --> 11
    line [2241.5, 1230.1, 2017.3, 1849.1, 1890.5, 1051.8, 1973.6, 1709.5, 1889.9, 2007.1, 1855.3]
```

```mermaid
xychart-beta
    title "keyed-insert/compose (median µs)"
    x-axis 1 --> 11
    line [3904.0, 2135.2, 3946.0, 3101.5, 3884.0, 1959.5, 3703.6, 3486.6, 3845.8, 3817.7, 3672.4]
```

```mermaid
xychart-beta
    title "keyed-prepend/compose (median µs)"
    x-axis 1 --> 11
    line [4631.9, 5670.2, 4810.1, 5713.6, 5284.0, 5303.8, 3424.0, 3075.3, 5469.7, 4329.9, 3072.9]
```

```mermaid
xychart-beta
    title "keyed-remove/compose (median µs)"
    x-axis 1 --> 11
    line [3754.0, 2340.4, 3841.8, 2875.3, 3547.1, 1827.6, 3479.3, 3015.0, 3793.2, 3623.3, 3407.1]
```

```mermaid
xychart-beta
    title "keyed-replace/compose (median µs)"
    x-axis 1 --> 11
    line [52486.3, 65204.8, 53183.6, 71503.5, 56891.2, 60200.2, 44740.2, 49482.4, 62602.0, 53547.2, 42754.3]
```

```mermaid
xychart-beta
    title "keyed-reverse/compose (median µs)"
    x-axis 1 --> 11
    line [3454.2, 4152.3, 3170.7, 4076.7, 3867.3, 3889.8, 2315.2, 2136.9, 3943.8, 3223.1, 2172.9]
```

```mermaid
xychart-beta
    title "keyed-rotate/compose (median µs)"
    x-axis 1 --> 11
    line [3675.5, 4205.0, 3245.0, 4008.5, 3943.0, 3893.6, 2361.3, 2144.9, 4059.1, 3293.0, 2245.2]
```

```mermaid
xychart-beta
    title "keyed-shuffle/compose (median µs)"
    x-axis 1 --> 11
    line [3509.2, 4344.0, 3309.9, 4133.7, 4059.5, 4033.7, 2413.3, 2320.3, 4145.0, 3363.4, 2283.9]
```

```mermaid
xychart-beta
    title "mount-cycles/compose (median µs)"
    x-axis 1 --> 11
    line [22487.2, 16290.9, 25389.8, 24470.6, 24881.5, 23116.2, 33298.8, 19578.4, 31633.5, 23882.9, 26129.9]
```

```mermaid
xychart-beta
    title "mount-dispose/compose (median µs)"
    x-axis 1 --> 11
    line [8156.2, 11089.1, 7309.6, 5895.6, 6379.9, 6063.8, 8561.0, 5241.5, 10075.4, 8933.6, 7451.1]
```

```mermaid
xychart-beta
    title "ordered-window-scroll/compose (median µs)"
    x-axis 1 --> 11
    line [476.6, 541.8, 471.3, 556.9, 564.7, 553.8, 385.7, 321.4, 549.1, 480.4, 312.0]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [30003.3, 30104.3, 33381.7, 27820.2, 30682.4, 19661.0, 28503.1, 27385.1, 30676.5, 28778.6, 30568.6]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [21590.6, 18636.7, 17711.5, 14764.4, 21038.9, 11215.7, 20462.7, 16769.4, 15059.0, 19783.2, 17011.5]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [222074.4, 182929.5, 238390.1, 207079.0, 236140.7, 138184.2, 230943.6, 221631.6, 235812.5, 246946.0, 224752.1]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.0, 3.0, 2.5, 2.4, 1.9, 1.8, 2.1, 2.1, 1.9, 2.5, 1.5]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [101466.1, 63734.7, 97238.3, 78657.6, 93914.1, 52229.2, 93731.7, 90060.2, 95064.3, 92297.5, 93959.2]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1168.5, 1282.5, 1345.4, 1276.1, 1387.9, 883.0, 1294.2, 1087.5, 1445.8, 1448.1, 1234.9]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [30042.0, 37026.2, 26826.4, 14648.1, 23991.6, 17009.8, 26266.2, 17048.6, 27192.0, 21699.1, 23196.2]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [9782.2, 11285.3, 8011.4, 5744.9, 5928.1, 6149.2, 7633.5, 4052.3, 9373.6, 8092.3, 8242.4]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [203516.4, 232335.1, 211377.1, 117511.9, 160501.4, 129535.4, 198277.6, 109338.9, 228267.7, 182225.3, 188809.3]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.6, 2.4, 1.7, 1.3, 2.1, 2.3, 2.4, 0.8, 1.9, 2.1, 2.4]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [102067.8, 113887.3, 93404.2, 50940.6, 68914.9, 56622.4, 81485.3, 49588.3, 98041.4, 74863.3, 78728.0]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1105.1, 1578.5, 1068.9, 745.5, 942.1, 867.7, 1027.5, 605.7, 1218.9, 1178.1, 1161.4]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [18821.8, 22931.8, 19566.8, 24613.0, 21830.9, 21914.7, 15539.6, 16071.1, 20653.1, 16156.2, 13451.4]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [5108.5, 6142.9, 3823.9, 5466.1, 3897.6, 3555.4, 2705.3, 2636.4, 3972.1, 4177.5, 3530.8]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [126713.0, 160716.4, 148021.9, 170011.4, 155845.4, 157157.6, 112924.6, 108237.2, 158063.2, 135151.4, 95137.7]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.2, 1.5, 2.2, 1.3, 1.0, 0.9, 1.1, 1.5, 1.2, 1.2, 1.8]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [59494.9, 76366.9, 54077.8, 70846.0, 68475.1, 67595.5, 43826.9, 40181.0, 69670.8, 55909.2, 40456.0]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [772.6, 884.1, 896.1, 1066.5, 827.8, 814.6, 602.9, 748.2, 845.0, 737.1, 860.2]
```

```mermaid
xychart-beta
    title "scene-3d/compose (median µs)"
    x-axis 1 --> 11
    line [10372.3, 5793.5, 5440.4, 7389.5, 6615.1, 6376.6, 10244.5, 5127.0, 9321.4, 7547.3, 8374.0]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [127130.6, 167018.1, 115393.0, 103046.5, 113930.3, 120767.1, 130705.0, 103802.0, 128400.1, 142816.1, 123118.4]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [4.2, 4.6, 4.2, 4.3, 4.2, 4.6, 5.0, 4.0, 5.4, 4.8, 4.9]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [296908.1, 344119.5, 308098.2, 247736.6, 332555.4, 297268.8, 364456.1, 271101.1, 346442.2, 365313.0, 389611.0]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.2, 2.3, 1.9, 2.0, 2.2, 2.6, 2.5, 2.1, 2.3, 2.4, 2.5]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [160845.4, 196666.1, 197076.8, 157127.6, 193707.5, 140489.0, 200387.4, 135009.2, 237679.1, 238449.6, 222780.9]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [2.2, 2.6, 2.2, 2.4, 2.1, 2.7, 3.0, 2.5, 2.7, 3.0, 2.9]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [57003.0, 42123.0, 46878.9, 50522.5, 39632.6, 42006.2, 57491.1, 47770.6, 43632.6, 37946.8, 48879.6]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [4.4, 3.1, 3.5, 3.2, 4.2, 4.3, 6.2, 3.7, 5.4, 4.3, 4.0]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [128750.1, 75810.9, 99563.4, 125498.0, 117015.6, 132164.7, 157084.7, 148138.6, 162243.7, 147619.1, 126923.6]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.2, 1.6, 1.6, 1.4, 2.1, 1.9, 2.5, 1.8, 2.3, 1.8, 1.7]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [69667.1, 42712.5, 61818.0, 57307.8, 74551.5, 74773.3, 100237.1, 66389.4, 93951.0, 74531.3, 69768.3]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [2.2, 1.7, 2.0, 1.8, 2.5, 2.3, 2.9, 1.9, 2.4, 1.7, 1.5]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [14058.5, 13643.4, 14167.1, 12992.3, 13234.1, 15559.1, 10465.1, 11655.7, 11959.3, 15591.5, 10920.0]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [3.3, 3.2, 3.5, 3.8, 3.0, 4.3, 2.2, 3.7, 3.0, 4.1, 3.6]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [28155.4, 34778.7, 33666.4, 44220.3, 39011.1, 41846.8, 30498.8, 31874.8, 41643.0, 34746.8, 31038.0]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.1, 1.2, 1.8, 1.4, 1.0, 1.2, 1.0, 1.6, 1.3, 1.3, 1.5]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [16033.0, 21649.1, 18367.5, 26384.9, 23587.7, 27936.0, 14539.5, 17820.3, 24159.6, 19799.8, 14886.1]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [1.4, 1.7, 1.8, 1.5, 1.1, 1.6, 0.9, 1.7, 1.2, 1.2, 1.6]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [122493.7, 149820.6, 129214.0, 136849.7, 138470.2, 144472.7, 95523.9, 101470.5, 128743.8, 118774.8, 107945.6]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [9688.2, 11822.6, 13879.1, 19936.9, 11791.9, 11562.9, 8114.6, 7744.9, 18853.2, 16933.8, 7747.0]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [218379.0, 269117.3, 254745.5, 304720.4, 287843.2, 294778.7, 202222.5, 206267.0, 290406.9, 244142.8, 184190.0]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.8, 2.0, 2.4, 2.0, 1.4, 1.6, 1.3, 2.1, 1.8, 1.7, 2.0]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [53873.0, 66474.9, 52024.6, 70068.5, 63812.5, 64409.4, 43998.7, 39926.7, 68488.9, 57521.6, 39054.6]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [3328.9, 4158.0, 4512.2, 4315.9, 3466.7, 4067.4, 2841.4, 2971.9, 3721.2, 3749.5, 3626.7]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [30042.5, 39771.4, 33445.5, 38984.4, 36092.3, 34872.0, 27515.2, 28800.0, 35259.7, 31377.1, 24590.5]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [2800.4, 3543.0, 3829.8, 3724.9, 3617.4, 3505.9, 3229.3, 2691.6, 4806.4, 2907.8, 2183.6]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [58121.2, 76076.5, 68807.2, 84007.9, 81376.6, 82795.6, 58376.4, 55613.7, 86206.9, 59297.2, 44311.3]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.0, 1.2, 2.3, 1.3, 1.0, 1.0, 1.1, 2.0, 1.2, 1.2, 1.0]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [15596.8, 21949.3, 16415.8, 21967.6, 21470.8, 22464.9, 15864.8, 12773.0, 23134.9, 15870.2, 12090.1]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [739.4, 972.7, 805.0, 855.2, 803.6, 785.7, 627.6, 705.5, 843.2, 695.4, 497.7]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [10440.0, 15557.2, 11457.1, 13518.7, 12640.5, 12542.6, 8682.4, 8878.8, 12787.7, 10457.6, 9024.9]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [925.2, 1427.4, 1127.5, 1311.3, 1223.2, 1184.2, 879.6, 847.8, 1267.7, 988.1, 846.9]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [27492.1, 38434.8, 28600.2, 38760.3, 35914.7, 37283.3, 26653.6, 25124.6, 39943.0, 29657.9, 65867.1]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [0.8, 1.2, 1.4, 0.9, 0.8, 0.8, 1.1, 1.1, 0.9, 0.8, 0.8]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [7535.1, 11593.9, 7440.0, 10757.9, 10783.6, 10447.9, 7142.7, 5944.2, 11076.0, 7590.2, 5930.9]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [209.5, 316.8, 257.4, 307.7, 289.4, 268.8, 213.9, 203.7, 284.5, 230.4, 177.8]
```

```mermaid
xychart-beta
    title "status-panel/compose (median µs)"
    x-axis 1 --> 11
    line [468.9, 653.2, 449.9, 652.9, 625.9, 604.8, 463.3, 373.4, 612.2, 459.2, 352.7]
```

```mermaid
xychart-beta
    title "unwind/compose (median µs)"
    x-axis 1 --> 11
    line [4377.9, 5909.9, 4681.9, 2220.6, 3034.6, 3095.2, 3927.3, 2203.9, 4610.8, 4615.6, 4168.6]
```

```mermaid
xychart-beta
    title "update-batched/compose (median µs)"
    x-axis 1 --> 11
    line [3498.0, 1720.7, 3034.6, 2232.9, 3059.4, 1492.9, 3239.3, 2419.1, 3145.7, 2866.6, 3061.9]
```

```mermaid
xychart-beta
    title "update-fanout/compose (median µs)"
    x-axis 1 --> 11
    line [2181.8, 955.8, 1823.1, 1315.3, 1835.1, 822.8, 1892.2, 1379.4, 1836.8, 1623.3, 1834.5]
```

```mermaid
xychart-beta
    title "update-leaf/compose (median µs)"
    x-axis 1 --> 11
    line [36.3, 43.0, 35.9, 40.1, 40.7, 40.7, 32.8, 24.2, 40.6, 34.0, 24.7]
```

```mermaid
xychart-beta
    title "update-repeated/compose (median µs)"
    x-axis 1 --> 11
    line [393.2, 210.7, 261.5, 364.0, 356.1, 357.0, 469.4, 268.4, 383.0, 395.5, 388.8]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/burst (median µs)"
    x-axis 1 --> 11
    line [874021.2, 673319.5, 659995.0, 698672.7, 709767.1, 654183.8, 988199.5, 671053.7, 967523.5, 778264.5, 811090.8]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/cold (median µs)"
    x-axis 1 --> 11
    line [548551.6, 399701.0, 402562.3, 443175.1, 434568.7, 403527.0, 604894.6, 421563.3, 603837.8, 489436.5, 504515.2]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/counts (median µs)"
    x-axis 1 --> 11
    line [1518062.6, 1045366.1, 1078431.5, 1190165.4, 1065313.0, 1109872.8, 1634229.8, 1128758.7, 1588525.9, 1438190.9, 1324146.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/settle (median µs)"
    x-axis 1 --> 11
    line [2.2, 2.7, 2.7, 1.8, 2.4, 2.4, 2.9, 2.8, 2.4, 2.2, 2.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/steady (median µs)"
    x-axis 1 --> 11
    line [21817.1, 12911.6, 13726.7, 13668.5, 12849.3, 13460.1, 17921.6, 12450.5, 16974.3, 17271.7, 17237.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [597.3, 596.2, 570.2, 533.8, 467.2, 441.5, 606.6, 495.5, 583.4, 518.6, 522.5]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/burst (median µs)"
    x-axis 1 --> 11
    line [129597.0, 152881.9, 130628.4, 71007.0, 94251.3, 81557.8, 108804.7, 69145.0, 134404.0, 102881.0, 112407.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/cold (median µs)"
    x-axis 1 --> 11
    line [77495.7, 86845.4, 78386.1, 43806.1, 55829.2, 50093.8, 66586.9, 43522.0, 82924.9, 63045.2, 66023.5]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/counts (median µs)"
    x-axis 1 --> 11
    line [233844.8, 292742.7, 237449.0, 132886.2, 159710.6, 141581.0, 209257.8, 142227.2, 252387.7, 199410.2, 207526.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.8, 2.5, 2.0, 1.0, 2.1, 2.4, 2.3, 1.2, 2.1, 2.1, 2.4]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/steady (median µs)"
    x-axis 1 --> 11
    line [16797.9, 18068.3, 13820.3, 7769.8, 11069.5, 9141.8, 12120.4, 7335.3, 16558.6, 10946.5, 11137.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [394.3, 415.6, 316.6, 177.0, 238.9, 230.5, 303.4, 184.1, 317.8, 280.4, 292.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/burst (median µs)"
    x-axis 1 --> 11
    line [26466.6, 30431.0, 24749.7, 14336.6, 15360.9, 16779.4, 21924.1, 13689.7, 24794.3, 20202.7, 20132.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/cold (median µs)"
    x-axis 1 --> 11
    line [13006.1, 14270.7, 12615.2, 6978.4, 7976.4, 8554.5, 10792.6, 6996.2, 13356.2, 9970.9, 9896.2]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/counts (median µs)"
    x-axis 1 --> 11
    line [59589.6, 61649.5, 60488.9, 31514.3, 44861.3, 36535.2, 54991.8, 31197.0, 63162.6, 48873.6, 53950.2]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/settle (median µs)"
    x-axis 1 --> 11
    line [1.3, 2.0, 1.7, 0.7, 1.1, 2.3, 2.0, 0.7, 1.8, 2.7, 2.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/steady (median µs)"
    x-axis 1 --> 11
    line [13755.1, 15839.6, 11775.6, 6339.4, 8929.5, 7982.2, 10279.3, 6290.3, 14426.7, 10949.9, 8832.9]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/teardown (median µs)"
    x-axis 1 --> 11
    line [209.7, 348.6, 197.9, 112.1, 130.1, 141.5, 160.7, 108.4, 198.1, 167.1, 160.3]
```

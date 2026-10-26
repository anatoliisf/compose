# Compose performance

Latest: `514a3bd6ec89ed215f55e651fe6b8c11cbeb5175` on 2026-10-26T082746Z, measured on the CI Ubuntu runner by the paired performance shards.
Each value is the median of the candidate arm's samples; p95 is shown beside it. Change compares the previous main commit.

| Benchmark | Median | p95 | Change |
| --- | --- | --- | --- |
| animate-many/bare | 992.1 µs | 1.11 ms | -41.0% |
| animate-many/compose | 4.74 ms | 5.12 ms | -50.8% |
| animate-many/memory/mounted | 2409 KiB | 2409 KiB | -0.4% |
| animate-many/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| animated-navigation.extreme/bare/burst | 769.1 µs | 847.7 µs | -44.8% |
| animated-navigation.extreme/bare/cold | 3.72 ms | 6.68 ms | -18.1% |
| animated-navigation.extreme/bare/settle | 1.4 µs | 2.3 µs | +11.1% |
| animated-navigation.extreme/bare/steady | 9.82 ms | 10.62 ms | -49.0% |
| animated-navigation.extreme/bare/teardown | 3.07 ms | 3.63 ms | -16.8% |
| animated-navigation.extreme/compose/burst | 6.90 ms | 7.36 ms | -44.6% |
| animated-navigation.extreme/compose/cold | 11.34 ms | 15.68 ms | -31.8% |
| animated-navigation.extreme/compose/counts | 64.35 ms | 64.35 ms | -41.6% |
| animated-navigation.extreme/compose/settle | 1.4 µs | 1.7 µs | +11.6% |
| animated-navigation.extreme/compose/steady | 25.39 ms | 26.20 ms | -45.8% |
| animated-navigation.extreme/compose/teardown | 4.71 ms | 5.92 ms | -21.6% |
| animated-navigation.extreme/memory/mounted | 7585 KiB | 7585 KiB | +0.0% |
| animated-navigation.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.large/bare/burst | 361.7 µs | 433.4 µs | -46.7% |
| animated-navigation.large/bare/cold | 1.24 ms | 3.50 ms | -43.9% |
| animated-navigation.large/bare/settle | 0.7 µs | 2.8 µs | +33.9% |
| animated-navigation.large/bare/steady | 4.80 ms | 5.20 ms | -46.0% |
| animated-navigation.large/bare/teardown | 1.05 ms | 1.35 ms | +3.3% |
| animated-navigation.large/compose/burst | 3.09 ms | 3.18 ms | -43.5% |
| animated-navigation.large/compose/cold | 4.81 ms | 7.24 ms | -32.7% |
| animated-navigation.large/compose/counts | 48.34 ms | 48.34 ms | -36.6% |
| animated-navigation.large/compose/settle | 1.2 µs | 1.9 µs | +34.0% |
| animated-navigation.large/compose/steady | 19.04 ms | 20.24 ms | -46.3% |
| animated-navigation.large/compose/teardown | 1.85 ms | 2.14 ms | -6.3% |
| animated-navigation.large/memory/mounted | 3811 KiB | 3811 KiB | +0.0% |
| animated-navigation.large/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.medium/bare/burst | 207.3 µs | 232.0 µs | +23.3% |
| animated-navigation.medium/bare/cold | 444.7 µs | 1.08 ms | +33.9% |
| animated-navigation.medium/bare/settle | 0.4 µs | 0.5 µs | +27.3% |
| animated-navigation.medium/bare/steady | 2.61 ms | 2.66 ms | +23.5% |
| animated-navigation.medium/bare/teardown | 177.9 µs | 215.0 µs | +15.7% |
| animated-navigation.medium/compose/burst | 1.81 ms | 1.88 ms | +23.3% |
| animated-navigation.medium/compose/cold | 1.66 ms | 2.87 ms | -17.6% |
| animated-navigation.medium/compose/counts | 29.66 ms | 29.66 ms | +30.4% |
| animated-navigation.medium/compose/settle | 0.5 µs | 0.7 µs | +5.9% |
| animated-navigation.medium/compose/steady | 14.64 ms | 15.16 ms | +30.3% |
| animated-navigation.medium/compose/teardown | 417.8 µs | 488.9 µs | +17.4% |
| animated-navigation.medium/memory/mounted | 1293 KiB | 1293 KiB | +0.0% |
| animated-navigation.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| branch-swap/bare | 2.98 ms | 4.93 ms | +2.5% |
| branch-swap/compose | 4.73 ms | 7.25 ms | +15.0% |
| branch-swap/memory/mounted | 29 KiB | 29 KiB | -21.6% |
| branch-swap/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| cold-mount-100/bare | 251.5 µs | 416.5 µs | -47.2% |
| cold-mount-100/compose | 560.2 µs | 1.47 ms | -18.4% |
| cold-mount-100/memory/mounted | 1957 KiB | 1957 KiB | +0.1% |
| cold-mount-100/memory/teardown | 1 KiB | 1 KiB | — |
| cold-mount-1000/bare | 3.10 ms | 7.26 ms | -44.4% |
| cold-mount-1000/compose | 4.72 ms | 7.49 ms | -43.8% |
| cold-mount-1000/memory/mounted | 19092 KiB | 19092 KiB | +0.0% |
| cold-mount-1000/memory/teardown | 0 KiB | 0 KiB | — |
| cold-mount-10000/bare | 57.73 ms | 57.98 ms | +52.3% |
| cold-mount-10000/compose | 77.31 ms | 91.68 ms | +3.2% |
| cold-mount-10000/memory/mounted | 191044 KiB | 191044 KiB | -0.0% |
| cold-mount-10000/memory/teardown | 1 KiB | 1 KiB | — |
| data-grid.extreme/bare/burst | 755.89 ms | 776.00 ms | -4.9% |
| data-grid.extreme/bare/cold | 483.18 ms | 499.67 ms | -7.2% |
| data-grid.extreme/bare/settle | 2.5 µs | 2.9 µs | +9.4% |
| data-grid.extreme/bare/steady | 18.23 ms | 28.14 ms | -0.9% |
| data-grid.extreme/bare/teardown | 461.7 µs | 881.0 µs | -1.0% |
| data-grid.extreme/compose/burst | 848.36 ms | 887.78 ms | -7.5% |
| data-grid.extreme/compose/cold | 532.20 ms | 544.89 ms | -5.8% |
| data-grid.extreme/compose/counts | 1413.52 ms | 1413.52 ms | -18.4% |
| data-grid.extreme/compose/settle | 2.1 µs | 2.8 µs | -0.9% |
| data-grid.extreme/compose/steady | 26.61 ms | 31.30 ms | -4.6% |
| data-grid.extreme/compose/teardown | 1.27 ms | 2.20 ms | -7.0% |
| data-grid.extreme/memory/mounted | 33731 KiB | 33731 KiB | +0.0% |
| data-grid.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| data-grid.large/bare/burst | 112.91 ms | 116.54 ms | +29.9% |
| data-grid.large/bare/cold | 72.87 ms | 75.43 ms | +34.8% |
| data-grid.large/bare/settle | 1.6 µs | 2.0 µs | -15.6% |
| data-grid.large/bare/steady | 9.37 ms | 15.09 ms | +14.0% |
| data-grid.large/bare/teardown | 202.2 µs | 239.7 µs | +39.8% |
| data-grid.large/compose/burst | 137.57 ms | 146.22 ms | +26.9% |
| data-grid.large/compose/cold | 76.94 ms | 83.62 ms | +26.8% |
| data-grid.large/compose/counts | 244.86 ms | 244.86 ms | +30.3% |
| data-grid.large/compose/settle | 1.6 µs | 2.1 µs | +8.1% |
| data-grid.large/compose/steady | 18.10 ms | 25.32 ms | +21.0% |
| data-grid.large/compose/teardown | 567.8 µs | 898.6 µs | +20.8% |
| data-grid.large/memory/mounted | 7809 KiB | 7809 KiB | +0.0% |
| data-grid.large/memory/teardown | 1 KiB | 1 KiB | — |
| data-grid.medium/bare/burst | 28.06 ms | 30.28 ms | -48.5% |
| data-grid.medium/bare/cold | 18.16 ms | 20.56 ms | -48.6% |
| data-grid.medium/bare/settle | 1.0 µs | 1.5 µs | -67.1% |
| data-grid.medium/bare/steady | 4.22 ms | 5.85 ms | -43.6% |
| data-grid.medium/bare/teardown | 57.0 µs | 84.5 µs | -48.1% |
| data-grid.medium/compose/burst | 35.89 ms | 39.55 ms | -48.5% |
| data-grid.medium/compose/cold | 21.10 ms | 24.14 ms | -47.1% |
| data-grid.medium/compose/counts | 71.60 ms | 71.60 ms | -49.5% |
| data-grid.medium/compose/settle | 1.0 µs | 1.5 µs | -54.7% |
| data-grid.medium/compose/steady | 8.16 ms | 12.78 ms | -60.7% |
| data-grid.medium/compose/teardown | 187.9 µs | 227.4 µs | -47.3% |
| data-grid.medium/memory/mounted | 4129 KiB | 4129 KiB | -0.2% |
| data-grid.medium/memory/teardown | 1 KiB | 1 KiB | — |
| dense-dashboard.extreme/bare/burst | 4.47 ms | 7.69 ms | -29.8% |
| dense-dashboard.extreme/bare/cold | 139.4 µs | 809.2 µs | -37.1% |
| dense-dashboard.extreme/bare/settle | 0.8 µs | 1.8 µs | -25.0% |
| dense-dashboard.extreme/bare/steady | 73.9 µs | 86.1 µs | -45.2% |
| dense-dashboard.extreme/bare/teardown | 135.0 µs | 311.5 µs | -40.1% |
| dense-dashboard.extreme/compose/burst | 12.23 ms | 16.94 ms | -39.3% |
| dense-dashboard.extreme/compose/cold | 398.8 µs | 2.84 ms | -34.3% |
| dense-dashboard.extreme/compose/counts | 13.69 ms | 13.69 ms | -41.6% |
| dense-dashboard.extreme/compose/settle | 0.9 µs | 1.6 µs | -29.3% |
| dense-dashboard.extreme/compose/steady | 432.7 µs | 1.33 ms | -49.9% |
| dense-dashboard.extreme/compose/teardown | 388.0 µs | 619.5 µs | -35.2% |
| dense-dashboard.extreme/memory/mounted | 1401 KiB | 1401 KiB | -0.6% |
| dense-dashboard.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| dense-dashboard.large/bare/burst | 1.75 ms | 2.93 ms | -45.0% |
| dense-dashboard.large/bare/cold | 80.0 µs | 311.2 µs | -34.9% |
| dense-dashboard.large/bare/settle | 0.5 µs | 1.7 µs | -35.8% |
| dense-dashboard.large/bare/steady | 74.3 µs | 84.6 µs | -45.3% |
| dense-dashboard.large/bare/teardown | 60.5 µs | 125.0 µs | -38.2% |
| dense-dashboard.large/compose/burst | 4.19 ms | 8.05 ms | -56.9% |
| dense-dashboard.large/compose/cold | 211.1 µs | 356.6 µs | -43.2% |
| dense-dashboard.large/compose/counts | 9.67 ms | 9.67 ms | -41.1% |
| dense-dashboard.large/compose/settle | 0.6 µs | 1.1 µs | -35.1% |
| dense-dashboard.large/compose/steady | 435.0 µs | 467.1 µs | -49.7% |
| dense-dashboard.large/compose/teardown | 159.4 µs | 173.1 µs | -46.3% |
| dense-dashboard.large/memory/mounted | 739 KiB | 739 KiB | +0.1% |
| dense-dashboard.large/memory/teardown | 0 KiB | 0 KiB | — |
| dense-dashboard.medium/bare/burst | 1.12 ms | 2.33 ms | +11.8% |
| dense-dashboard.medium/bare/cold | 95.0 µs | 375.1 µs | +13.6% |
| dense-dashboard.medium/bare/settle | 0.6 µs | 1.2 µs | -3.3% |
| dense-dashboard.medium/bare/steady | 130.2 µs | 150.1 µs | -2.9% |
| dense-dashboard.medium/bare/teardown | 54.6 µs | 95.4 µs | +6.1% |
| dense-dashboard.medium/compose/burst | 3.75 ms | 6.07 ms | +15.1% |
| dense-dashboard.medium/compose/cold | 274.0 µs | 778.0 µs | +27.8% |
| dense-dashboard.medium/compose/counts | 8.37 ms | 8.37 ms | +24.3% |
| dense-dashboard.medium/compose/settle | 1.3 µs | 2.3 µs | +74.0% |
| dense-dashboard.medium/compose/steady | 817.9 µs | 888.7 µs | -0.7% |
| dense-dashboard.medium/compose/teardown | 153.9 µs | 409.3 µs | +27.3% |
| dense-dashboard.medium/memory/mounted | 356 KiB | 356 KiB | -2.5% |
| dense-dashboard.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-identity-churn-10.extreme/bare/burst | 19.03 ms | 24.67 ms | +24.2% |
| entities-identity-churn-10.extreme/bare/cold | 6.94 ms | 14.04 ms | -6.6% |
| entities-identity-churn-10.extreme/bare/settle | 2.6 µs | 3.4 µs | +68.0% |
| entities-identity-churn-10.extreme/bare/steady | 32.80 ms | 39.42 ms | +12.3% |
| entities-identity-churn-10.extreme/bare/teardown | 423.1 µs | 562.8 µs | +22.2% |
| entities-identity-churn-10.extreme/compose/burst | 58.55 ms | 77.26 ms | +2.2% |
| entities-identity-churn-10.extreme/compose/cold | 48.79 ms | 62.71 ms | +38.9% |
| entities-identity-churn-10.extreme/compose/counts | 278.04 ms | 278.04 ms | +36.5% |
| entities-identity-churn-10.extreme/compose/settle | 2.7 µs | 3.2 µs | +65.1% |
| entities-identity-churn-10.extreme/compose/steady | 110.49 ms | 118.06 ms | +63.4% |
| entities-identity-churn-10.extreme/compose/teardown | 1.96 ms | 2.21 ms | +42.0% |
| entities-identity-churn-10.extreme/memory/mounted | 4936 KiB | 4936 KiB | -0.2% |
| entities-identity-churn-10.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-identity-churn-10.large/bare/burst | 2.88 ms | 5.94 ms | -39.5% |
| entities-identity-churn-10.large/bare/cold | 1.60 ms | 5.48 ms | -56.3% |
| entities-identity-churn-10.large/bare/settle | 0.6 µs | 0.9 µs | -70.4% |
| entities-identity-churn-10.large/bare/steady | 5.94 ms | 8.72 ms | -46.5% |
| entities-identity-churn-10.large/bare/teardown | 69.0 µs | 94.5 µs | -43.2% |
| entities-identity-churn-10.large/compose/burst | 12.17 ms | 15.16 ms | -46.3% |
| entities-identity-churn-10.large/compose/cold | 10.77 ms | 15.97 ms | -32.8% |
| entities-identity-churn-10.large/compose/counts | 39.36 ms | 39.36 ms | -51.4% |
| entities-identity-churn-10.large/compose/settle | 1.8 µs | 2.7 µs | -4.3% |
| entities-identity-churn-10.large/compose/steady | 13.17 ms | 19.35 ms | -55.7% |
| entities-identity-churn-10.large/compose/teardown | 288.1 µs | 535.4 µs | -48.2% |
| entities-identity-churn-10.large/memory/mounted | 1909 KiB | 1909 KiB | -1.4% |
| entities-identity-churn-10.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn-10.medium/bare/burst | 1.55 ms | 4.25 ms | -27.8% |
| entities-identity-churn-10.medium/bare/cold | 944.1 µs | 2.82 ms | -24.6% |
| entities-identity-churn-10.medium/bare/settle | 0.8 µs | 1.7 µs | -1.2% |
| entities-identity-churn-10.medium/bare/steady | 2.89 ms | 4.47 ms | -44.7% |
| entities-identity-churn-10.medium/bare/teardown | 52.7 µs | 65.2 µs | -8.9% |
| entities-identity-churn-10.medium/compose/burst | 6.49 ms | 10.87 ms | -26.1% |
| entities-identity-churn-10.medium/compose/cold | 4.06 ms | 6.30 ms | -40.6% |
| entities-identity-churn-10.medium/compose/counts | 23.55 ms | 23.55 ms | -28.7% |
| entities-identity-churn-10.medium/compose/settle | 1.6 µs | 2.2 µs | +46.2% |
| entities-identity-churn-10.medium/compose/steady | 6.02 ms | 9.68 ms | -43.4% |
| entities-identity-churn-10.medium/compose/teardown | 181.7 µs | 239.6 µs | -21.6% |
| entities-identity-churn-10.medium/memory/mounted | 1025 KiB | 1025 KiB | -0.2% |
| entities-identity-churn-10.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-identity-churn-50.extreme/bare/burst | 14.27 ms | 26.26 ms | +11.0% |
| entities-identity-churn-50.extreme/bare/cold | 8.96 ms | 16.33 ms | +37.3% |
| entities-identity-churn-50.extreme/bare/settle | 2.2 µs | 2.5 µs | +25.2% |
| entities-identity-churn-50.extreme/bare/steady | 63.19 ms | 70.23 ms | +23.1% |
| entities-identity-churn-50.extreme/bare/teardown | 416.3 µs | 725.9 µs | +42.3% |
| entities-identity-churn-50.extreme/compose/burst | 45.51 ms | 60.08 ms | +19.3% |
| entities-identity-churn-50.extreme/compose/cold | 36.98 ms | 57.33 ms | +23.2% |
| entities-identity-churn-50.extreme/compose/counts | 356.18 ms | 356.18 ms | +15.3% |
| entities-identity-churn-50.extreme/compose/settle | 1.8 µs | 2.1 µs | -7.2% |
| entities-identity-churn-50.extreme/compose/steady | 195.16 ms | 239.87 ms | +14.3% |
| entities-identity-churn-50.extreme/compose/teardown | 1.12 ms | 1.33 ms | +11.1% |
| entities-identity-churn-50.extreme/memory/mounted | 4889 KiB | 4889 KiB | +0.0% |
| entities-identity-churn-50.extreme/memory/teardown | 1 KiB | 1 KiB | — |
| entities-identity-churn-50.large/bare/burst | 5.99 ms | 14.17 ms | +24.9% |
| entities-identity-churn-50.large/bare/cold | 4.12 ms | 9.91 ms | +12.8% |
| entities-identity-churn-50.large/bare/settle | 2.8 µs | 3.2 µs | +102.1% |
| entities-identity-churn-50.large/bare/steady | 22.46 ms | 31.01 ms | +10.7% |
| entities-identity-churn-50.large/bare/teardown | 158.6 µs | 315.7 µs | +39.7% |
| entities-identity-churn-50.large/compose/burst | 22.65 ms | 37.79 ms | +10.8% |
| entities-identity-churn-50.large/compose/cold | 16.23 ms | 29.70 ms | +33.1% |
| entities-identity-churn-50.large/compose/counts | 159.72 ms | 159.72 ms | +36.8% |
| entities-identity-churn-50.large/compose/settle | 2.6 µs | 3.5 µs | +52.0% |
| entities-identity-churn-50.large/compose/steady | 100.48 ms | 107.46 ms | +53.4% |
| entities-identity-churn-50.large/compose/teardown | 729.5 µs | 1.23 ms | +56.6% |
| entities-identity-churn-50.large/memory/mounted | 2001 KiB | 2001 KiB | -0.7% |
| entities-identity-churn-50.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn-50.medium/bare/burst | 2.88 ms | 8.10 ms | +14.8% |
| entities-identity-churn-50.medium/bare/cold | 1.37 ms | 3.03 ms | -6.4% |
| entities-identity-churn-50.medium/bare/settle | 1.2 µs | 2.3 µs | +49.6% |
| entities-identity-churn-50.medium/bare/steady | 9.39 ms | 14.97 ms | +19.1% |
| entities-identity-churn-50.medium/bare/teardown | 71.8 µs | 206.0 µs | +42.2% |
| entities-identity-churn-50.medium/compose/burst | 9.36 ms | 12.02 ms | +27.2% |
| entities-identity-churn-50.medium/compose/cold | 8.08 ms | 13.75 ms | +54.8% |
| entities-identity-churn-50.medium/compose/counts | 72.92 ms | 72.92 ms | +35.6% |
| entities-identity-churn-50.medium/compose/settle | 1.3 µs | 1.8 µs | +25.2% |
| entities-identity-churn-50.medium/compose/steady | 29.08 ms | 37.99 ms | +20.3% |
| entities-identity-churn-50.medium/compose/teardown | 265.4 µs | 293.6 µs | +28.5% |
| entities-identity-churn-50.medium/memory/mounted | 1123 KiB | 1123 KiB | +0.1% |
| entities-identity-churn-50.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn.extreme/bare/burst | 13.71 ms | 23.96 ms | -26.6% |
| entities-identity-churn.extreme/bare/cold | 5.83 ms | 12.06 ms | -37.3% |
| entities-identity-churn.extreme/bare/settle | 2.1 µs | 4.1 µs | -14.9% |
| entities-identity-churn.extreme/bare/steady | 31.38 ms | 44.02 ms | -33.0% |
| entities-identity-churn.extreme/bare/teardown | 332.6 µs | 576.4 µs | -29.8% |
| entities-identity-churn.extreme/compose/burst | 40.48 ms | 70.11 ms | -40.4% |
| entities-identity-churn.extreme/compose/cold | 23.19 ms | 38.90 ms | -46.6% |
| entities-identity-churn.extreme/compose/counts | 155.08 ms | 155.08 ms | -51.9% |
| entities-identity-churn.extreme/compose/settle | 2.0 µs | 2.8 µs | -8.3% |
| entities-identity-churn.extreme/compose/steady | 78.04 ms | 93.33 ms | -53.6% |
| entities-identity-churn.extreme/compose/teardown | 1.08 ms | 1.44 ms | -43.6% |
| entities-identity-churn.extreme/memory/mounted | 5360 KiB | 5360 KiB | +3.6% |
| entities-identity-churn.extreme/memory/teardown | 97 KiB | 97 KiB | — |
| entities-identity-churn.large/bare/burst | 3.51 ms | 5.29 ms | -23.9% |
| entities-identity-churn.large/bare/cold | 2.42 ms | 5.53 ms | -12.5% |
| entities-identity-churn.large/bare/settle | 1.6 µs | 2.0 µs | +15.4% |
| entities-identity-churn.large/bare/steady | 9.58 ms | 13.71 ms | -35.3% |
| entities-identity-churn.large/bare/teardown | 86.4 µs | 219.0 µs | -33.9% |
| entities-identity-churn.large/compose/burst | 12.82 ms | 23.71 ms | -15.7% |
| entities-identity-churn.large/compose/cold | 10.03 ms | 15.61 ms | -30.4% |
| entities-identity-churn.large/compose/counts | 66.05 ms | 66.05 ms | -30.3% |
| entities-identity-churn.large/compose/settle | 2.1 µs | 2.8 µs | +25.1% |
| entities-identity-churn.large/compose/steady | 30.47 ms | 34.14 ms | -28.9% |
| entities-identity-churn.large/compose/teardown | 347.3 µs | 539.4 µs | -17.6% |
| entities-identity-churn.large/memory/mounted | 1906 KiB | 1906 KiB | -0.5% |
| entities-identity-churn.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-identity-churn.medium/bare/burst | 2.05 ms | 3.25 ms | -15.9% |
| entities-identity-churn.medium/bare/cold | 811.6 µs | 1.61 ms | -35.9% |
| entities-identity-churn.medium/bare/settle | 0.7 µs | 1.0 µs | -24.4% |
| entities-identity-churn.medium/bare/steady | 3.66 ms | 6.00 ms | -50.1% |
| entities-identity-churn.medium/bare/teardown | 34.9 µs | 92.9 µs | -40.9% |
| entities-identity-churn.medium/compose/burst | 6.21 ms | 10.79 ms | -33.0% |
| entities-identity-churn.medium/compose/cold | 5.20 ms | 7.62 ms | -15.8% |
| entities-identity-churn.medium/compose/counts | 24.55 ms | 24.55 ms | -49.3% |
| entities-identity-churn.medium/compose/settle | 1.7 µs | 2.0 µs | -5.2% |
| entities-identity-churn.medium/compose/steady | 11.14 ms | 15.15 ms | -41.2% |
| entities-identity-churn.medium/compose/teardown | 172.8 µs | 199.5 µs | -35.2% |
| entities-identity-churn.medium/memory/mounted | 1081 KiB | 1081 KiB | +0.7% |
| entities-identity-churn.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entities-integrated.extreme/bare/burst | 4.11 ms | 7.04 ms | -30.8% |
| entities-integrated.extreme/bare/cold | 25.66 ms | 49.88 ms | +19.5% |
| entities-integrated.extreme/bare/settle | 2.4 µs | 2.9 µs | +13.3% |
| entities-integrated.extreme/bare/steady | 19.83 ms | 32.40 ms | -33.1% |
| entities-integrated.extreme/bare/teardown | 22.55 ms | 27.96 ms | -8.3% |
| entities-integrated.extreme/compose/burst | 17.09 ms | 22.59 ms | -19.7% |
| entities-integrated.extreme/compose/cold | 93.15 ms | 138.95 ms | -13.7% |
| entities-integrated.extreme/compose/counts | 271.17 ms | 271.17 ms | -21.6% |
| entities-integrated.extreme/compose/settle | 2.2 µs | 2.9 µs | +22.5% |
| entities-integrated.extreme/compose/steady | 90.77 ms | 112.14 ms | -19.0% |
| entities-integrated.extreme/compose/teardown | 38.55 ms | 56.09 ms | +16.0% |
| entities-integrated.extreme/memory/mounted | 43808 KiB | 43808 KiB | +0.0% |
| entities-integrated.extreme/memory/teardown | 9 KiB | 9 KiB | — |
| entities-integrated.large/bare/burst | 3.02 ms | 3.67 ms | +30.8% |
| entities-integrated.large/bare/cold | 8.72 ms | 27.18 ms | -10.4% |
| entities-integrated.large/bare/settle | 1.0 µs | 1.7 µs | +5.4% |
| entities-integrated.large/bare/steady | 11.82 ms | 18.37 ms | +31.5% |
| entities-integrated.large/bare/teardown | 5.13 ms | 5.57 ms | +19.4% |
| entities-integrated.large/compose/burst | 10.51 ms | 14.90 ms | +20.6% |
| entities-integrated.large/compose/cold | 46.56 ms | 58.66 ms | +31.8% |
| entities-integrated.large/compose/counts | 165.42 ms | 165.42 ms | +29.3% |
| entities-integrated.large/compose/settle | 1.6 µs | 2.6 µs | +14.0% |
| entities-integrated.large/compose/steady | 58.99 ms | 73.86 ms | +39.5% |
| entities-integrated.large/compose/teardown | 11.68 ms | 12.56 ms | +24.4% |
| entities-integrated.large/memory/mounted | 18164 KiB | 18164 KiB | -0.0% |
| entities-integrated.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-integrated.medium/bare/burst | 1.36 ms | 2.78 ms | -36.0% |
| entities-integrated.medium/bare/cold | 5.25 ms | 10.16 ms | -13.3% |
| entities-integrated.medium/bare/settle | 1.7 µs | 2.1 µs | +59.6% |
| entities-integrated.medium/bare/steady | 6.92 ms | 10.95 ms | -23.0% |
| entities-integrated.medium/bare/teardown | 2.41 ms | 2.93 ms | +7.4% |
| entities-integrated.medium/compose/burst | 5.41 ms | 9.66 ms | -32.9% |
| entities-integrated.medium/compose/cold | 18.35 ms | 26.78 ms | -22.4% |
| entities-integrated.medium/compose/counts | 67.52 ms | 67.52 ms | -26.9% |
| entities-integrated.medium/compose/settle | 2.1 µs | 2.6 µs | +29.3% |
| entities-integrated.medium/compose/steady | 29.94 ms | 35.80 ms | -24.9% |
| entities-integrated.medium/compose/teardown | 6.49 ms | 8.84 ms | +6.2% |
| entities-integrated.medium/memory/mounted | 9856 KiB | 9856 KiB | +0.1% |
| entities-integrated.medium/memory/teardown | 9 KiB | 9 KiB | — |
| entities-relevance-saturated.extreme/bare/burst | 14.59 ms | 21.98 ms | -9.1% |
| entities-relevance-saturated.extreme/bare/cold | 7.04 ms | 23.57 ms | -17.1% |
| entities-relevance-saturated.extreme/bare/settle | 2.7 µs | 3.8 µs | +28.9% |
| entities-relevance-saturated.extreme/bare/steady | 58.85 ms | 78.15 ms | -37.1% |
| entities-relevance-saturated.extreme/bare/teardown | 4.00 ms | 5.53 ms | +31.5% |
| entities-relevance-saturated.extreme/compose/burst | 94.07 ms | 117.98 ms | -1.0% |
| entities-relevance-saturated.extreme/compose/cold | 22.23 ms | 49.60 ms | -27.3% |
| entities-relevance-saturated.extreme/compose/counts | 211.00 ms | 211.00 ms | -7.8% |
| entities-relevance-saturated.extreme/compose/settle | 2.8 µs | 3.5 µs | +37.2% |
| entities-relevance-saturated.extreme/compose/steady | 52.16 ms | 81.07 ms | -7.7% |
| entities-relevance-saturated.extreme/compose/teardown | 13.42 ms | 14.55 ms | +2.3% |
| entities-relevance-saturated.extreme/memory/mounted | 12135 KiB | 12135 KiB | -0.1% |
| entities-relevance-saturated.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-relevance-saturated.large/bare/burst | 6.09 ms | 10.28 ms | +4.6% |
| entities-relevance-saturated.large/bare/cold | 3.46 ms | 15.33 ms | +7.2% |
| entities-relevance-saturated.large/bare/settle | 2.1 µs | 3.3 µs | +78.5% |
| entities-relevance-saturated.large/bare/steady | 39.22 ms | 46.32 ms | +9.5% |
| entities-relevance-saturated.large/bare/teardown | 1.32 ms | 1.68 ms | +34.8% |
| entities-relevance-saturated.large/compose/burst | 40.55 ms | 52.27 ms | +48.0% |
| entities-relevance-saturated.large/compose/cold | 12.45 ms | 29.67 ms | +4.1% |
| entities-relevance-saturated.large/compose/counts | 101.70 ms | 101.70 ms | +1.3% |
| entities-relevance-saturated.large/compose/settle | 2.3 µs | 3.5 µs | +49.6% |
| entities-relevance-saturated.large/compose/steady | 23.97 ms | 35.11 ms | +23.9% |
| entities-relevance-saturated.large/compose/teardown | 4.13 ms | 4.56 ms | +42.3% |
| entities-relevance-saturated.large/memory/mounted | 4886 KiB | 4886 KiB | +0.0% |
| entities-relevance-saturated.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-relevance-saturated.medium/bare/burst | 1.86 ms | 3.50 ms | -23.1% |
| entities-relevance-saturated.medium/bare/cold | 1.62 ms | 4.57 ms | -13.1% |
| entities-relevance-saturated.medium/bare/settle | 1.5 µs | 2.1 µs | +74.7% |
| entities-relevance-saturated.medium/bare/steady | 9.67 ms | 15.27 ms | -44.9% |
| entities-relevance-saturated.medium/bare/teardown | 586.2 µs | 767.2 µs | +59.2% |
| entities-relevance-saturated.medium/compose/burst | 10.18 ms | 13.68 ms | -26.7% |
| entities-relevance-saturated.medium/compose/cold | 4.52 ms | 9.41 ms | -25.9% |
| entities-relevance-saturated.medium/compose/counts | 26.02 ms | 26.02 ms | -34.8% |
| entities-relevance-saturated.medium/compose/settle | 1.8 µs | 2.4 µs | +39.7% |
| entities-relevance-saturated.medium/compose/steady | 6.71 ms | 12.06 ms | -21.8% |
| entities-relevance-saturated.medium/compose/teardown | 1.23 ms | 1.48 ms | +8.6% |
| entities-relevance-saturated.medium/memory/mounted | 2454 KiB | 2454 KiB | +0.0% |
| entities-relevance-saturated.medium/memory/teardown | 1 KiB | 1 KiB | — |
| entities-relevance-sweep.extreme/bare/burst | 22.07 ms | 39.61 ms | -6.7% |
| entities-relevance-sweep.extreme/bare/cold | 8.89 ms | 18.59 ms | +7.0% |
| entities-relevance-sweep.extreme/bare/settle | 2.9 µs | 3.3 µs | +18.7% |
| entities-relevance-sweep.extreme/bare/steady | 22.82 ms | 40.00 ms | -2.4% |
| entities-relevance-sweep.extreme/bare/teardown | 3.72 ms | 4.32 ms | +11.1% |
| entities-relevance-sweep.extreme/compose/burst | 143.86 ms | 172.97 ms | +3.1% |
| entities-relevance-sweep.extreme/compose/cold | 26.81 ms | 53.50 ms | -28.5% |
| entities-relevance-sweep.extreme/compose/counts | 363.60 ms | 363.60 ms | -19.9% |
| entities-relevance-sweep.extreme/compose/settle | 2.9 µs | 4.0 µs | +44.5% |
| entities-relevance-sweep.extreme/compose/steady | 140.86 ms | 154.76 ms | -5.7% |
| entities-relevance-sweep.extreme/compose/teardown | 13.81 ms | 14.78 ms | +2.3% |
| entities-relevance-sweep.extreme/memory/mounted | 12136 KiB | 12136 KiB | -0.1% |
| entities-relevance-sweep.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-relevance-sweep.large/bare/burst | 8.18 ms | 11.31 ms | -20.5% |
| entities-relevance-sweep.large/bare/cold | 2.51 ms | 7.43 ms | -35.0% |
| entities-relevance-sweep.large/bare/settle | 1.2 µs | 2.0 µs | -46.6% |
| entities-relevance-sweep.large/bare/steady | 6.23 ms | 11.59 ms | -41.0% |
| entities-relevance-sweep.large/bare/teardown | 1.04 ms | 1.19 ms | -24.2% |
| entities-relevance-sweep.large/compose/burst | 33.31 ms | 44.77 ms | -48.2% |
| entities-relevance-sweep.large/compose/cold | 8.06 ms | 15.99 ms | -35.6% |
| entities-relevance-sweep.large/compose/counts | 84.45 ms | 84.45 ms | -54.9% |
| entities-relevance-sweep.large/compose/settle | 1.9 µs | 2.4 µs | -16.9% |
| entities-relevance-sweep.large/compose/steady | 29.55 ms | 41.81 ms | -47.8% |
| entities-relevance-sweep.large/compose/teardown | 2.64 ms | 3.23 ms | -32.7% |
| entities-relevance-sweep.large/memory/mounted | 4878 KiB | 4878 KiB | -0.2% |
| entities-relevance-sweep.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-relevance-sweep.medium/bare/burst | 4.45 ms | 9.73 ms | +20.2% |
| entities-relevance-sweep.medium/bare/cold | 2.26 ms | 5.32 ms | +46.3% |
| entities-relevance-sweep.medium/bare/settle | 2.1 µs | 2.5 µs | +148.4% |
| entities-relevance-sweep.medium/bare/steady | 5.00 ms | 8.73 ms | +5.7% |
| entities-relevance-sweep.medium/bare/teardown | 604.1 µs | 746.4 µs | +63.3% |
| entities-relevance-sweep.medium/compose/burst | 27.25 ms | 37.47 ms | +33.3% |
| entities-relevance-sweep.medium/compose/cold | 7.65 ms | 16.17 ms | +22.9% |
| entities-relevance-sweep.medium/compose/counts | 99.35 ms | 99.35 ms | +25.3% |
| entities-relevance-sweep.medium/compose/settle | 2.3 µs | 3.0 µs | +95.7% |
| entities-relevance-sweep.medium/compose/steady | 29.69 ms | 39.24 ms | +41.0% |
| entities-relevance-sweep.medium/compose/teardown | 1.66 ms | 2.50 ms | +48.4% |
| entities-relevance-sweep.medium/memory/mounted | 2453 KiB | 2453 KiB | -0.4% |
| entities-relevance-sweep.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels-sparse.extreme/bare/burst | 4.71 ms | 11.46 ms | -47.9% |
| entity-labels-sparse.extreme/bare/cold | 5.40 ms | 11.01 ms | -21.0% |
| entity-labels-sparse.extreme/bare/settle | 0.6 µs | 1.0 µs | -66.3% |
| entity-labels-sparse.extreme/bare/steady | 529.0 µs | 887.2 µs | -56.5% |
| entity-labels-sparse.extreme/bare/teardown | 3.83 ms | 4.51 ms | -41.5% |
| entity-labels-sparse.extreme/compose/burst | 21.14 ms | 24.58 ms | -61.7% |
| entity-labels-sparse.extreme/compose/cold | 17.44 ms | 24.64 ms | -46.9% |
| entity-labels-sparse.extreme/compose/counts | 59.31 ms | 59.31 ms | -56.2% |
| entity-labels-sparse.extreme/compose/settle | 1.7 µs | 2.1 µs | -33.0% |
| entity-labels-sparse.extreme/compose/steady | 2.64 ms | 3.28 ms | -55.5% |
| entity-labels-sparse.extreme/compose/teardown | 7.76 ms | 9.03 ms | -50.5% |
| entity-labels-sparse.extreme/memory/mounted | 14161 KiB | 14161 KiB | +0.0% |
| entity-labels-sparse.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| entity-labels-sparse.large/bare/burst | 3.17 ms | 3.83 ms | -17.1% |
| entity-labels-sparse.large/bare/cold | 2.15 ms | 6.94 ms | -55.3% |
| entity-labels-sparse.large/bare/settle | 0.6 µs | 1.1 µs | -41.7% |
| entity-labels-sparse.large/bare/steady | 322.6 µs | 547.2 µs | -33.8% |
| entity-labels-sparse.large/bare/teardown | 1.51 ms | 1.96 ms | -19.1% |
| entity-labels-sparse.large/compose/burst | 10.27 ms | 13.14 ms | -39.6% |
| entity-labels-sparse.large/compose/cold | 9.46 ms | 14.86 ms | -35.2% |
| entity-labels-sparse.large/compose/counts | 30.72 ms | 30.72 ms | -45.2% |
| entity-labels-sparse.large/compose/settle | 1.2 µs | 1.5 µs | -39.0% |
| entity-labels-sparse.large/compose/steady | 1.41 ms | 1.76 ms | -41.5% |
| entity-labels-sparse.large/compose/teardown | 2.93 ms | 3.30 ms | -35.0% |
| entity-labels-sparse.large/memory/mounted | 7360 KiB | 7360 KiB | +0.0% |
| entity-labels-sparse.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels-sparse.medium/bare/burst | 2.33 ms | 5.03 ms | +75.9% |
| entity-labels-sparse.medium/bare/cold | 1.52 ms | 4.42 ms | +22.3% |
| entity-labels-sparse.medium/bare/settle | 1.2 µs | 2.1 µs | +92.0% |
| entity-labels-sparse.medium/bare/steady | 354.3 µs | 449.3 µs | +67.2% |
| entity-labels-sparse.medium/bare/teardown | 702.4 µs | 945.4 µs | +38.3% |
| entity-labels-sparse.medium/compose/burst | 9.11 ms | 12.81 ms | +33.1% |
| entity-labels-sparse.medium/compose/cold | 5.75 ms | 11.91 ms | -5.3% |
| entity-labels-sparse.medium/compose/counts | 28.49 ms | 28.49 ms | +15.9% |
| entity-labels-sparse.medium/compose/settle | 2.3 µs | 3.2 µs | +145.8% |
| entity-labels-sparse.medium/compose/steady | 1.68 ms | 1.89 ms | +73.3% |
| entity-labels-sparse.medium/compose/teardown | 1.94 ms | 2.69 ms | +50.7% |
| entity-labels-sparse.medium/memory/mounted | 3301 KiB | 3301 KiB | +0.0% |
| entity-labels-sparse.medium/memory/teardown | 1 KiB | 1 KiB | -87.5% |
| entity-labels.extreme/bare/burst | 5.71 ms | 10.86 ms | -51.9% |
| entity-labels.extreme/bare/cold | 4.40 ms | 9.70 ms | -49.7% |
| entity-labels.extreme/bare/settle | 0.6 µs | 1.2 µs | -69.2% |
| entity-labels.extreme/bare/steady | 533.1 µs | 771.7 µs | -54.8% |
| entity-labels.extreme/bare/teardown | 4.82 ms | 5.47 ms | -22.7% |
| entity-labels.extreme/compose/burst | 21.37 ms | 27.94 ms | -60.2% |
| entity-labels.extreme/compose/cold | 18.79 ms | 26.05 ms | -55.8% |
| entity-labels.extreme/compose/counts | 102.01 ms | 102.01 ms | -51.6% |
| entity-labels.extreme/compose/settle | 1.5 µs | 2.0 µs | -39.5% |
| entity-labels.extreme/compose/steady | 24.85 ms | 25.66 ms | -52.8% |
| entity-labels.extreme/compose/teardown | 7.98 ms | 10.00 ms | -51.5% |
| entity-labels.extreme/memory/mounted | 15258 KiB | 15258 KiB | +0.0% |
| entity-labels.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels.large/bare/burst | 5.08 ms | 8.75 ms | +42.5% |
| entity-labels.large/bare/cold | 4.86 ms | 8.23 ms | +34.0% |
| entity-labels.large/bare/settle | 1.8 µs | 2.2 µs | +131.7% |
| entity-labels.large/bare/steady | 588.1 µs | 744.0 µs | +22.9% |
| entity-labels.large/bare/teardown | 2.32 ms | 3.34 ms | +38.0% |
| entity-labels.large/compose/burst | 27.92 ms | 36.27 ms | +45.7% |
| entity-labels.large/compose/cold | 20.07 ms | 24.28 ms | +7.4% |
| entity-labels.large/compose/counts | 114.13 ms | 114.13 ms | +24.2% |
| entity-labels.large/compose/settle | 2.6 µs | 17.4 µs | +111.4% |
| entity-labels.large/compose/steady | 28.15 ms | 32.41 ms | +24.2% |
| entity-labels.large/compose/teardown | 6.44 ms | 7.48 ms | +56.7% |
| entity-labels.large/memory/mounted | 7941 KiB | 7941 KiB | +0.0% |
| entity-labels.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels.medium/bare/burst | 1.79 ms | 3.83 ms | +15.1% |
| entity-labels.medium/bare/cold | 2.15 ms | 3.80 ms | +14.3% |
| entity-labels.medium/bare/settle | 1.1 µs | 1.7 µs | +64.7% |
| entity-labels.medium/bare/steady | 275.9 µs | 414.8 µs | +27.0% |
| entity-labels.medium/bare/teardown | 669.7 µs | 1.30 ms | +42.0% |
| entity-labels.medium/compose/burst | 7.92 ms | 11.95 ms | +23.5% |
| entity-labels.medium/compose/cold | 7.22 ms | 12.37 ms | +2.6% |
| entity-labels.medium/compose/counts | 41.76 ms | 41.76 ms | +20.9% |
| entity-labels.medium/compose/settle | 2.2 µs | 2.5 µs | +136.7% |
| entity-labels.medium/compose/steady | 11.48 ms | 13.67 ms | +19.1% |
| entity-labels.medium/compose/teardown | 2.01 ms | 2.48 ms | +50.4% |
| entity-labels.medium/memory/mounted | 3567 KiB | 3567 KiB | +0.2% |
| entity-labels.medium/memory/teardown | 1 KiB | 1 KiB | — |
| events/bare | 13.11 ms | 15.77 ms | +53.1% |
| events/compose | 16.20 ms | 19.50 ms | +26.4% |
| events/memory/mounted | 15 KiB | 15 KiB | -94.3% |
| events/memory/teardown | 3 KiB | 3 KiB | -98.8% |
| inspector.extreme/bare/burst | 2.08 ms | 2.37 ms | +17.5% |
| inspector.extreme/bare/cold | 8.34 ms | 10.72 ms | +51.5% |
| inspector.extreme/bare/settle | 1.5 µs | 2.1 µs | +134.3% |
| inspector.extreme/bare/steady | 125.2 µs | 139.0 µs | +83.9% |
| inspector.extreme/bare/teardown | 6.12 ms | 6.89 ms | +20.1% |
| inspector.extreme/compose/burst | 16.18 ms | 18.34 ms | +57.4% |
| inspector.extreme/compose/cold | 32.78 ms | 45.74 ms | +24.9% |
| inspector.extreme/compose/counts | 50.58 ms | 50.58 ms | +18.2% |
| inspector.extreme/compose/settle | 2.7 µs | 4.2 µs | +136.5% |
| inspector.extreme/compose/steady | 375.4 µs | 423.2 µs | +42.1% |
| inspector.extreme/compose/teardown | 4.16 ms | 5.09 ms | +83.0% |
| inspector.extreme/memory/mounted | 22229 KiB | 22229 KiB | +0.0% |
| inspector.extreme/memory/teardown | 8 KiB | 8 KiB | +700.0% |
| inspector.large/bare/burst | 963.1 µs | 1.08 ms | +15.7% |
| inspector.large/bare/cold | 4.53 ms | 7.40 ms | +57.0% |
| inspector.large/bare/settle | 1.1 µs | 2.0 µs | +100.0% |
| inspector.large/bare/steady | 113.4 µs | 147.5 µs | +72.1% |
| inspector.large/bare/teardown | 1.88 ms | 2.20 ms | +23.2% |
| inspector.large/compose/burst | 5.52 ms | 6.06 ms | +6.8% |
| inspector.large/compose/cold | 10.55 ms | 16.66 ms | -1.7% |
| inspector.large/compose/counts | 25.06 ms | 25.06 ms | +11.1% |
| inspector.large/compose/settle | 2.1 µs | 2.5 µs | +160.2% |
| inspector.large/compose/steady | 347.2 µs | 416.2 µs | +35.4% |
| inspector.large/compose/teardown | 1.56 ms | 1.96 ms | +33.2% |
| inspector.large/memory/mounted | 7369 KiB | 7369 KiB | -0.1% |
| inspector.large/memory/teardown | 0 KiB | 0 KiB | — |
| inspector.medium/bare/burst | 131.2 µs | 137.7 µs | -50.1% |
| inspector.medium/bare/cold | 504.1 µs | 1.38 ms | -44.4% |
| inspector.medium/bare/settle | 0.3 µs | 0.3 µs | -47.1% |
| inspector.medium/bare/steady | 32.4 µs | 37.7 µs | -46.3% |
| inspector.medium/bare/teardown | 202.4 µs | 309.5 µs | -36.4% |
| inspector.medium/compose/burst | 812.1 µs | 893.6 µs | -53.1% |
| inspector.medium/compose/cold | 2.01 ms | 2.65 ms | -31.2% |
| inspector.medium/compose/counts | 3.83 ms | 3.83 ms | -39.0% |
| inspector.medium/compose/settle | 0.4 µs | 0.6 µs | -39.0% |
| inspector.medium/compose/steady | 113.5 µs | 158.2 µs | -48.5% |
| inspector.medium/compose/teardown | 214.0 µs | 435.3 µs | -41.0% |
| inspector.medium/memory/mounted | 1945 KiB | 1945 KiB | +0.4% |
| inspector.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| keyed-append/bare | 758.8 µs | 1.36 ms | -45.1% |
| keyed-append/compose | 1.23 ms | 1.52 ms | -45.1% |
| keyed-append/memory/mounted | 2330 KiB | 2330 KiB | +0.0% |
| keyed-append/memory/teardown | 9 KiB | 9 KiB | — |
| keyed-insert/bare | 955.5 µs | 1.46 ms | -46.6% |
| keyed-insert/compose | 2.14 ms | 2.46 ms | -45.3% |
| keyed-insert/memory/mounted | 2326 KiB | 2326 KiB | -0.3% |
| keyed-insert/memory/teardown | 1 KiB | 1 KiB | — |
| keyed-prepend/bare | 1.67 ms | 1.92 ms | +31.4% |
| keyed-prepend/compose | 5.67 ms | 6.45 ms | +22.4% |
| keyed-prepend/memory/mounted | 2346 KiB | 2346 KiB | +0.0% |
| keyed-prepend/memory/teardown | 1 KiB | 1 KiB | -87.5% |
| keyed-remove/bare | 841.8 µs | 1.58 ms | -41.9% |
| keyed-remove/compose | 2.34 ms | 3.70 ms | -37.7% |
| keyed-remove/memory/mounted | 2330 KiB | 2330 KiB | +0.0% |
| keyed-remove/memory/teardown | 1 KiB | 1 KiB | — |
| keyed-replace/bare | 24.07 ms | 27.82 ms | +15.0% |
| keyed-replace/compose | 65.20 ms | 67.37 ms | +24.2% |
| keyed-replace/memory/mounted | 2342 KiB | 2342 KiB | +0.0% |
| keyed-replace/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| keyed-reverse/bare | 1.22 ms | 1.37 ms | +31.5% |
| keyed-reverse/compose | 4.15 ms | 4.31 ms | +20.2% |
| keyed-reverse/memory/mounted | 2334 KiB | 2334 KiB | -0.3% |
| keyed-reverse/memory/teardown | 9 KiB | 9 KiB | — |
| keyed-rotate/bare | 1.24 ms | 1.33 ms | +38.9% |
| keyed-rotate/compose | 4.21 ms | 4.32 ms | +14.4% |
| keyed-rotate/memory/mounted | 2342 KiB | 2342 KiB | +0.0% |
| keyed-rotate/memory/teardown | 8 KiB | 8 KiB | — |
| keyed-shuffle/bare | 1.27 ms | 1.32 ms | +34.4% |
| keyed-shuffle/compose | 4.34 ms | 4.41 ms | +23.8% |
| keyed-shuffle/memory/mounted | 2334 KiB | 2334 KiB | -0.3% |
| keyed-shuffle/memory/teardown | 1 KiB | 1 KiB | — |
| mount-cycles/bare | 10.63 ms | 13.39 ms | -40.5% |
| mount-cycles/compose | 16.29 ms | 17.66 ms | -27.6% |
| mount-cycles/memory/mounted | 15 KiB | 15 KiB | +87.5% |
| mount-cycles/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| mount-dispose/bare | 7.75 ms | 12.56 ms | +9.1% |
| mount-dispose/compose | 11.09 ms | 13.22 ms | +36.0% |
| mount-dispose/memory/mounted | 23 KiB | 23 KiB | +187.5% |
| mount-dispose/memory/teardown | 0 KiB | 0 KiB | — |
| ordered-window-scroll/compose | 541.8 µs | 570.5 µs | +13.7% |
| ordered-window-scroll/memory/mounted | 1143 KiB | 1143 KiB | -0.1% |
| ordered-window-scroll/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| scene-2d.extreme/bare/burst | 5.38 ms | 12.01 ms | -36.9% |
| scene-2d.extreme/bare/cold | 1.13 ms | 5.52 ms | -23.5% |
| scene-2d.extreme/bare/settle | 2.5 µs | 3.3 µs | +25.3% |
| scene-2d.extreme/bare/steady | 30.31 ms | 35.50 ms | -36.3% |
| scene-2d.extreme/bare/teardown | 474.8 µs | 778.9 µs | -7.8% |
| scene-2d.extreme/compose/burst | 30.10 ms | 37.00 ms | +0.3% |
| scene-2d.extreme/compose/cold | 18.64 ms | 32.82 ms | -13.7% |
| scene-2d.extreme/compose/counts | 182.93 ms | 182.93 ms | -17.6% |
| scene-2d.extreme/compose/settle | 3.0 µs | 3.3 µs | +47.5% |
| scene-2d.extreme/compose/steady | 63.73 ms | 73.78 ms | -37.2% |
| scene-2d.extreme/compose/teardown | 1.28 ms | 1.85 ms | +9.8% |
| scene-2d.extreme/memory/mounted | 13586 KiB | 13586 KiB | +0.0% |
| scene-2d.extreme/memory/teardown | 9 KiB | 9 KiB | +12.5% |
| scene-2d.large/bare/burst | 10.46 ms | 12.88 ms | +29.2% |
| scene-2d.large/bare/cold | 1.40 ms | 4.87 ms | +4.2% |
| scene-2d.large/bare/settle | 2.4 µs | 4.1 µs | +92.1% |
| scene-2d.large/bare/steady | 48.94 ms | 54.51 ms | +1.2% |
| scene-2d.large/bare/teardown | 619.6 µs | 1.35 ms | +34.9% |
| scene-2d.large/compose/burst | 37.03 ms | 43.30 ms | +23.2% |
| scene-2d.large/compose/cold | 11.29 ms | 16.97 ms | +15.4% |
| scene-2d.large/compose/counts | 232.34 ms | 232.34 ms | +14.2% |
| scene-2d.large/compose/settle | 2.4 µs | 3.0 µs | +51.9% |
| scene-2d.large/compose/steady | 113.89 ms | 118.12 ms | +11.6% |
| scene-2d.large/compose/teardown | 1.58 ms | 1.96 ms | +42.8% |
| scene-2d.large/memory/mounted | 5140 KiB | 5140 KiB | +0.0% |
| scene-2d.large/memory/teardown | 0 KiB | 0 KiB | — |
| scene-2d.medium/bare/burst | 5.90 ms | 7.23 ms | +17.9% |
| scene-2d.medium/bare/cold | 1.18 ms | 2.41 ms | -6.2% |
| scene-2d.medium/bare/settle | 1.0 µs | 3.1 µs | +1.1% |
| scene-2d.medium/bare/steady | 37.45 ms | 41.64 ms | +33.4% |
| scene-2d.medium/bare/teardown | 393.0 µs | 520.9 µs | +19.5% |
| scene-2d.medium/compose/burst | 22.93 ms | 27.96 ms | +21.8% |
| scene-2d.medium/compose/cold | 6.14 ms | 7.23 ms | +20.2% |
| scene-2d.medium/compose/counts | 160.72 ms | 160.72 ms | +26.8% |
| scene-2d.medium/compose/settle | 1.5 µs | 2.0 µs | +21.7% |
| scene-2d.medium/compose/steady | 76.37 ms | 79.91 ms | +28.4% |
| scene-2d.medium/compose/teardown | 884.1 µs | 1.06 ms | +14.4% |
| scene-2d.medium/memory/mounted | 2688 KiB | 2688 KiB | +4.7% |
| scene-2d.medium/memory/teardown | 128 KiB | 128 KiB | +12700.0% |
| scene-3d/bare | 1.93 ms | 2.75 ms | -47.3% |
| scene-3d/compose | 5.79 ms | 7.20 ms | -44.1% |
| scene-3d/memory/mounted | 1447 KiB | 1447 KiB | -1.2% |
| scene-3d/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| session-cycle.extreme/bare/burst | 109.89 ms | 189.38 ms | -11.0% |
| session-cycle.extreme/bare/cold | 4.5 µs | 6.3 µs | +6.4% |
| session-cycle.extreme/bare/settle | 2.9 µs | 4.0 µs | +26.4% |
| session-cycle.extreme/bare/steady | 215.01 ms | 250.67 ms | +30.1% |
| session-cycle.extreme/bare/teardown | 2.9 µs | 3.4 µs | +32.4% |
| session-cycle.extreme/compose/burst | 167.02 ms | 206.13 ms | +31.4% |
| session-cycle.extreme/compose/cold | 4.6 µs | 19.3 µs | +9.3% |
| session-cycle.extreme/compose/counts | 344.12 ms | 344.12 ms | +15.9% |
| session-cycle.extreme/compose/settle | 2.3 µs | 2.8 µs | +7.4% |
| session-cycle.extreme/compose/steady | 196.67 ms | 280.25 ms | +22.3% |
| session-cycle.extreme/compose/teardown | 2.6 µs | 3.4 µs | +17.4% |
| session-cycle.extreme/memory/mounted | 24 KiB | 24 KiB | -25.0% |
| session-cycle.extreme/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| session-cycle.large/bare/burst | 24.77 ms | 43.19 ms | -41.7% |
| session-cycle.large/bare/cold | 4.4 µs | 6.6 µs | -6.6% |
| session-cycle.large/bare/settle | 1.7 µs | 10.3 µs | -35.0% |
| session-cycle.large/bare/steady | 48.78 ms | 65.25 ms | -18.6% |
| session-cycle.large/bare/teardown | 1.8 µs | 2.8 µs | -24.3% |
| session-cycle.large/compose/burst | 42.12 ms | 77.61 ms | -26.1% |
| session-cycle.large/compose/cold | 3.1 µs | 5.8 µs | -28.5% |
| session-cycle.large/compose/counts | 75.81 ms | 75.81 ms | -41.1% |
| session-cycle.large/compose/settle | 1.6 µs | 2.4 µs | -25.3% |
| session-cycle.large/compose/steady | 42.71 ms | 67.29 ms | -38.7% |
| session-cycle.large/compose/teardown | 1.7 µs | 2.2 µs | -23.4% |
| session-cycle.large/memory/mounted | 15 KiB | 15 KiB | — |
| session-cycle.large/memory/teardown | 0 KiB | 0 KiB | — |
| session-cycle.medium/bare/burst | 10.48 ms | 16.60 ms | +8.9% |
| session-cycle.medium/bare/cold | 3.1 µs | 16.5 µs | +5.9% |
| session-cycle.medium/bare/settle | 1.0 µs | 2.1 µs | -7.6% |
| session-cycle.medium/bare/steady | 13.23 ms | 19.58 ms | +4.5% |
| session-cycle.medium/bare/teardown | 1.1 µs | 13.5 µs | +16.8% |
| session-cycle.medium/compose/burst | 13.64 ms | 18.63 ms | -3.0% |
| session-cycle.medium/compose/cold | 3.2 µs | 6.9 µs | -3.0% |
| session-cycle.medium/compose/counts | 34.78 ms | 34.78 ms | +23.5% |
| session-cycle.medium/compose/settle | 1.2 µs | 1.7 µs | +6.3% |
| session-cycle.medium/compose/steady | 21.65 ms | 29.22 ms | +35.0% |
| session-cycle.medium/compose/teardown | 1.7 µs | 2.9 µs | +17.8% |
| session-cycle.medium/memory/mounted | 8 KiB | 8 KiB | -46.7% |
| session-cycle.medium/memory/teardown | 0 KiB | 0 KiB | — |
| spatial-scene.extreme/bare/burst | 39.94 ms | 46.45 ms | +0.1% |
| spatial-scene.extreme/bare/cold | 2.67 ms | 13.06 ms | +10.5% |
| spatial-scene.extreme/bare/settle | 1.7 µs | 2.5 µs | +29.1% |
| spatial-scene.extreme/bare/steady | 75.13 ms | 85.23 ms | +38.1% |
| spatial-scene.extreme/bare/teardown | 1.29 ms | 1.90 ms | +28.3% |
| spatial-scene.extreme/compose/burst | 149.82 ms | 169.80 ms | +22.3% |
| spatial-scene.extreme/compose/cold | 11.82 ms | 21.35 ms | +22.0% |
| spatial-scene.extreme/compose/counts | 269.12 ms | 269.12 ms | +23.2% |
| spatial-scene.extreme/compose/settle | 2.0 µs | 3.8 µs | +12.4% |
| spatial-scene.extreme/compose/steady | 66.47 ms | 71.39 ms | +23.4% |
| spatial-scene.extreme/compose/teardown | 4.16 ms | 6.39 ms | +24.9% |
| spatial-scene.extreme/memory/mounted | 5707 KiB | 5707 KiB | +0.0% |
| spatial-scene.extreme/memory/teardown | 1 KiB | 1 KiB | — |
| spatial-scene.large/bare/burst | 10.77 ms | 16.89 ms | +17.1% |
| spatial-scene.large/bare/cold | 898.8 µs | 1.84 ms | -15.1% |
| spatial-scene.large/bare/settle | 1.0 µs | 1.5 µs | +15.6% |
| spatial-scene.large/bare/steady | 22.11 ms | 24.90 ms | +52.5% |
| spatial-scene.large/bare/teardown | 273.1 µs | 371.3 µs | +11.8% |
| spatial-scene.large/compose/burst | 39.77 ms | 43.12 ms | +32.4% |
| spatial-scene.large/compose/cold | 3.54 ms | 9.13 ms | +26.5% |
| spatial-scene.large/compose/counts | 76.08 ms | 76.08 ms | +30.9% |
| spatial-scene.large/compose/settle | 1.2 µs | 1.9 µs | +18.5% |
| spatial-scene.large/compose/steady | 21.95 ms | 29.07 ms | +40.7% |
| spatial-scene.large/compose/teardown | 972.7 µs | 1.39 ms | +31.6% |
| spatial-scene.large/memory/mounted | 1893 KiB | 1893 KiB | -0.5% |
| spatial-scene.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| spatial-scene.medium/bare/burst | 3.13 ms | 6.22 ms | -4.3% |
| spatial-scene.medium/bare/cold | 369.5 µs | 1.33 ms | -15.7% |
| spatial-scene.medium/bare/settle | 1.0 µs | 1.4 µs | +46.6% |
| spatial-scene.medium/bare/steady | 8.04 ms | 8.84 ms | +30.8% |
| spatial-scene.medium/bare/teardown | 102.8 µs | 219.7 µs | +47.1% |
| spatial-scene.medium/compose/burst | 15.56 ms | 18.97 ms | +49.0% |
| spatial-scene.medium/compose/cold | 1.43 ms | 3.34 ms | +54.3% |
| spatial-scene.medium/compose/counts | 38.43 ms | 38.43 ms | +39.8% |
| spatial-scene.medium/compose/settle | 1.2 µs | 1.7 µs | +42.2% |
| spatial-scene.medium/compose/steady | 11.59 ms | 12.62 ms | +53.9% |
| spatial-scene.medium/compose/teardown | 316.8 µs | 380.6 µs | +51.2% |
| spatial-scene.medium/memory/mounted | 748 KiB | 748 KiB | +0.0% |
| spatial-scene.medium/memory/teardown | 1 KiB | 1 KiB | — |
| status-panel/bare | 78.1 µs | 170.0 µs | +4.6% |
| status-panel/compose | 653.2 µs | 685.4 µs | +39.3% |
| status-panel/memory/mounted | 59 KiB | 59 KiB | -1.7% |
| status-panel/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| unwind/bare | 3.88 ms | 7.08 ms | +28.3% |
| unwind/compose | 5.91 ms | 7.17 ms | +35.0% |
| unwind/memory/mounted | 15 KiB | 15 KiB | +114.3% |
| unwind/memory/teardown | 1 KiB | 1 KiB | — |
| update-batched/bare | 502.7 µs | 555.4 µs | -50.6% |
| update-batched/compose | 1.72 ms | 1.83 ms | -50.8% |
| update-batched/memory/mounted | 1896 KiB | 1896 KiB | -0.1% |
| update-batched/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| update-fanout/bare | 496.2 µs | 569.8 µs | -52.0% |
| update-fanout/compose | 955.8 µs | 1.10 ms | -56.2% |
| update-fanout/memory/mounted | 1840 KiB | 1840 KiB | +0.4% |
| update-fanout/memory/teardown | 8 KiB | 8 KiB | +700.0% |
| update-leaf/bare | 15.9 µs | 17.5 µs | +22.9% |
| update-leaf/compose | 43.0 µs | 56.2 µs | +18.7% |
| update-leaf/memory/mounted | 2418 KiB | 2418 KiB | +0.0% |
| update-leaf/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| update-repeated/bare | 20.8 µs | 29.6 µs | -44.3% |
| update-repeated/compose | 210.7 µs | 220.9 µs | -46.4% |
| update-repeated/memory/mounted | 39 KiB | 39 KiB | +25.8% |
| update-repeated/memory/teardown | 0 KiB | 0 KiB | — |
| virtual-filtered-list.extreme/bare/burst | 542.91 ms | 579.23 ms | -35.7% |
| virtual-filtered-list.extreme/bare/cold | 346.46 ms | 358.99 ms | -34.6% |
| virtual-filtered-list.extreme/bare/settle | 2.7 µs | 3.4 µs | +13.2% |
| virtual-filtered-list.extreme/bare/steady | 6.81 ms | 19.30 ms | -30.2% |
| virtual-filtered-list.extreme/bare/teardown | 223.7 µs | 427.0 µs | +10.8% |
| virtual-filtered-list.extreme/compose/burst | 673.32 ms | 694.78 ms | -23.0% |
| virtual-filtered-list.extreme/compose/cold | 399.70 ms | 420.55 ms | -27.1% |
| virtual-filtered-list.extreme/compose/counts | 1045.37 ms | 1045.37 ms | -31.1% |
| virtual-filtered-list.extreme/compose/settle | 2.7 µs | 3.1 µs | +21.1% |
| virtual-filtered-list.extreme/compose/steady | 12.91 ms | 19.77 ms | -40.8% |
| virtual-filtered-list.extreme/compose/teardown | 596.2 µs | 935.6 µs | -0.2% |
| virtual-filtered-list.extreme/memory/mounted | 32170 KiB | 32170 KiB | +0.0% |
| virtual-filtered-list.extreme/memory/teardown | 1 KiB | 1 KiB | — |
| virtual-filtered-list.large/bare/burst | 122.30 ms | 127.24 ms | +9.8% |
| virtual-filtered-list.large/bare/cold | 79.22 ms | 82.22 ms | +9.2% |
| virtual-filtered-list.large/bare/settle | 2.7 µs | 3.2 µs | +59.2% |
| virtual-filtered-list.large/bare/steady | 6.82 ms | 9.14 ms | -4.4% |
| virtual-filtered-list.large/bare/teardown | 103.1 µs | 166.2 µs | +0.5% |
| virtual-filtered-list.large/compose/burst | 152.88 ms | 161.72 ms | +18.0% |
| virtual-filtered-list.large/compose/cold | 86.85 ms | 96.13 ms | +12.1% |
| virtual-filtered-list.large/compose/counts | 292.74 ms | 292.74 ms | +25.2% |
| virtual-filtered-list.large/compose/settle | 2.5 µs | 4.8 µs | +41.6% |
| virtual-filtered-list.large/compose/steady | 18.07 ms | 25.34 ms | +7.6% |
| virtual-filtered-list.large/compose/teardown | 415.6 µs | 879.1 µs | +5.4% |
| virtual-filtered-list.large/memory/mounted | 7184 KiB | 7184 KiB | +0.1% |
| virtual-filtered-list.large/memory/teardown | 1 KiB | 1 KiB | — |
| virtual-filtered-list.medium/bare/burst | 20.01 ms | 22.19 ms | +6.5% |
| virtual-filtered-list.medium/bare/cold | 12.13 ms | 13.29 ms | +4.5% |
| virtual-filtered-list.medium/bare/settle | 2.3 µs | 3.1 µs | +92.3% |
| virtual-filtered-list.medium/bare/steady | 6.31 ms | 8.56 ms | -2.8% |
| virtual-filtered-list.medium/bare/teardown | 62.9 µs | 92.0 µs | -5.0% |
| virtual-filtered-list.medium/compose/burst | 30.43 ms | 35.07 ms | +15.0% |
| virtual-filtered-list.medium/compose/cold | 14.27 ms | 16.19 ms | +9.7% |
| virtual-filtered-list.medium/compose/counts | 61.65 ms | 61.65 ms | +3.5% |
| virtual-filtered-list.medium/compose/settle | 2.0 µs | 2.8 µs | +55.7% |
| virtual-filtered-list.medium/compose/steady | 15.84 ms | 22.11 ms | +15.2% |
| virtual-filtered-list.medium/compose/teardown | 348.6 µs | 497.2 µs | +66.3% |
| virtual-filtered-list.medium/memory/mounted | 1824 KiB | 1824 KiB | +0.0% |
| virtual-filtered-list.medium/memory/teardown | 1 KiB | 1 KiB | — |

## Trends over the last 2 main commits

```mermaid
xychart-beta
    title "animate-many/compose (median µs)"
    x-axis 1 --> 2
    line [9621.1, 4735.8]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [12461.7, 6898.2]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [16620.2, 11340.5]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [110129.9, 64349.2]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.2, 1.4]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [46868.1, 25388.1]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [6005.0, 4705.5]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [5466.6, 3087.8]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [7156.2, 4813.3]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [76248.8, 48338.1]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [0.9, 1.2]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [35460.5, 19037.5]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1975.4, 1851.1]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [1463.5, 1805.0]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [2013.4, 1659.3]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [22746.0, 29658.4]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [0.5, 0.5]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [11237.2, 14637.0]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [356.0, 417.8]
```

```mermaid
xychart-beta
    title "branch-swap/compose (median µs)"
    x-axis 1 --> 2
    line [4113.6, 4729.3]
```

```mermaid
xychart-beta
    title "cold-mount-100/compose (median µs)"
    x-axis 1 --> 2
    line [686.8, 560.2]
```

```mermaid
xychart-beta
    title "cold-mount-1000/compose (median µs)"
    x-axis 1 --> 2
    line [8399.3, 4719.3]
```

```mermaid
xychart-beta
    title "cold-mount-10000/compose (median µs)"
    x-axis 1 --> 2
    line [74882.4, 77308.0]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [917195.8, 848359.9]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [564671.1, 532198.1]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [1731762.7, 1413521.5]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.1, 2.1]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [27880.3, 26608.5]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1360.6, 1265.7]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [108370.1, 137573.0]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [60694.5, 76941.3]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [187980.4, 244856.9]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.5, 1.6]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [14957.3, 18099.0]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [469.9, 567.8]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [69739.0, 35886.9]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [39856.7, 21102.5]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [141793.3, 71603.8]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.3, 1.0]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [20754.9, 8162.0]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [356.8, 187.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [20153.1, 12231.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [606.7, 398.8]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [23438.8, 13693.1]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.3, 0.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [863.1, 432.7]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [599.1, 388.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [9706.7, 4188.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [371.6, 211.1]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [16409.6, 9670.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.0, 0.6]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [865.5, 435.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [297.0, 159.4]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [3256.9, 3747.3]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [214.4, 274.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [6736.4, 8374.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [0.8, 1.3]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [823.5, 817.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [120.9, 153.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [57275.1, 58550.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [35128.8, 48787.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [203645.1, 278041.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.7, 2.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [67605.4, 110490.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1382.9, 1964.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [22661.4, 12171.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [16026.8, 10773.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [80942.4, 39356.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.9, 1.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [29699.1, 13169.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [555.6, 288.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [8775.5, 6489.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [6847.6, 4064.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [33013.6, 23547.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.1, 1.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [10632.2, 6021.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [231.8, 181.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [38163.8, 45513.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [30010.2, 36978.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [308853.3, 356183.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.9, 1.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [170674.3, 195161.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1011.2, 1123.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [20445.0, 22651.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [12195.2, 16233.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [116758.9, 159716.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.7, 2.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [65487.9, 100478.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [465.8, 729.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [7359.9, 9363.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [5217.5, 8076.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [53771.4, 72919.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.0, 1.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [24173.9, 29083.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [206.6, 265.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [67899.9, 40475.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [43440.3, 23189.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [322090.0, 155075.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.2, 2.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [168290.2, 78037.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1918.2, 1082.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [15198.1, 12817.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [14413.0, 10025.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [94808.6, 66047.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.7, 2.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [42870.9, 30465.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [421.7, 347.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [9268.9, 6214.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [6175.2, 5202.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [48430.6, 24546.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.8, 1.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [18970.0, 11144.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [266.7, 172.8]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [21280.1, 17085.4]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [107928.0, 93149.3]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [345877.0, 271171.1]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.8, 2.2]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [112062.9, 90774.1]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [33241.4, 38551.9]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [8720.8, 10514.8]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [35331.9, 46561.1]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [127887.2, 165417.5]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.4, 1.6]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [42270.1, 58987.0]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [9384.4, 11676.7]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [8064.7, 5412.3]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [23640.0, 18354.3]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [92316.8, 67519.0]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.6, 2.1]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [39845.5, 29943.1]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [6105.6, 6486.4]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [95057.1, 94073.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [30591.9, 22227.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [228810.1, 211002.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.0, 2.8]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [56507.4, 52162.7]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [13113.8, 13417.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [27403.3, 40547.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [11952.4, 12445.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [100423.7, 101703.7]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.5, 2.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [19345.5, 23966.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [2906.6, 4134.8]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [13879.1, 10176.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [6104.0, 4520.5]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [39918.2, 26024.7]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.3, 1.8]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [8588.8, 6714.5]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1136.6, 1234.8]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [139551.2, 143863.6]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [37476.4, 26814.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [453942.0, 363604.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.0, 2.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [149428.6, 140862.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [13492.1, 13806.8]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [64372.4, 33315.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [12505.9, 8058.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [187160.4, 84451.7]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.3, 1.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [56628.5, 29545.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [3915.7, 2636.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [20435.0, 27247.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [6221.8, 7648.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [79311.3, 99350.5]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.2, 2.3]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [21056.0, 29692.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1121.8, 1664.5]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [55182.4, 21144.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [32818.0, 17437.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [135325.6, 59311.0]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.6, 1.7]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [5921.1, 2635.6]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [15688.5, 7760.4]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [17004.7, 10266.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [14612.0, 9463.4]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [56031.2, 30721.5]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.0, 1.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [2403.1, 1405.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [4514.6, 2934.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [6844.5, 9109.6]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [6071.8, 5752.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [24575.3, 28494.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [0.9, 2.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [968.2, 1678.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1286.2, 1937.9]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [53690.8, 21373.5]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [42536.2, 18791.7]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [210738.5, 102006.1]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.5, 1.5]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [52614.8, 24846.6]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [16453.7, 7976.6]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [19159.2, 27915.4]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [18682.7, 20066.2]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [91912.5, 114130.0]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.2, 2.6]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [22658.3, 28149.5]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [4112.4, 6443.5]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [6413.9, 7923.0]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [7035.0, 7218.0]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [34527.2, 41760.6]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [0.9, 2.2]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [9633.0, 11476.3]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1339.3, 2013.9]
```

```mermaid
xychart-beta
    title "events/compose (median µs)"
    x-axis 1 --> 2
    line [12824.2, 16203.6]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [10283.2, 16184.3]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [26249.5, 32777.8]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [42785.5, 50581.3]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.2, 2.7]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [264.2, 375.4]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [2274.0, 4160.9]
```

```mermaid
xychart-beta
    title "inspector.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [5172.9, 5523.4]
```

```mermaid
xychart-beta
    title "inspector.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [10732.1, 10546.3]
```

```mermaid
xychart-beta
    title "inspector.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [22551.8, 25059.8]
```

```mermaid
xychart-beta
    title "inspector.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [0.8, 2.1]
```

```mermaid
xychart-beta
    title "inspector.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [256.4, 347.2]
```

```mermaid
xychart-beta
    title "inspector.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1173.0, 1562.2]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [1730.1, 812.1]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [2916.5, 2007.5]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [6271.7, 3825.7]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [0.6, 0.4]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [220.2, 113.5]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [363.0, 214.0]
```

```mermaid
xychart-beta
    title "keyed-append/compose (median µs)"
    x-axis 1 --> 2
    line [2241.5, 1230.1]
```

```mermaid
xychart-beta
    title "keyed-insert/compose (median µs)"
    x-axis 1 --> 2
    line [3904.0, 2135.2]
```

```mermaid
xychart-beta
    title "keyed-prepend/compose (median µs)"
    x-axis 1 --> 2
    line [4631.9, 5670.2]
```

```mermaid
xychart-beta
    title "keyed-remove/compose (median µs)"
    x-axis 1 --> 2
    line [3754.0, 2340.4]
```

```mermaid
xychart-beta
    title "keyed-replace/compose (median µs)"
    x-axis 1 --> 2
    line [52486.3, 65204.8]
```

```mermaid
xychart-beta
    title "keyed-reverse/compose (median µs)"
    x-axis 1 --> 2
    line [3454.2, 4152.3]
```

```mermaid
xychart-beta
    title "keyed-rotate/compose (median µs)"
    x-axis 1 --> 2
    line [3675.5, 4205.0]
```

```mermaid
xychart-beta
    title "keyed-shuffle/compose (median µs)"
    x-axis 1 --> 2
    line [3509.2, 4344.0]
```

```mermaid
xychart-beta
    title "mount-cycles/compose (median µs)"
    x-axis 1 --> 2
    line [22487.2, 16290.9]
```

```mermaid
xychart-beta
    title "mount-dispose/compose (median µs)"
    x-axis 1 --> 2
    line [8156.2, 11089.1]
```

```mermaid
xychart-beta
    title "ordered-window-scroll/compose (median µs)"
    x-axis 1 --> 2
    line [476.6, 541.8]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [30003.3, 30104.3]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [21590.6, 18636.7]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [222074.4, 182929.5]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.0, 3.0]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [101466.1, 63734.7]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1168.5, 1282.5]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [30042.0, 37026.2]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [9782.2, 11285.3]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [203516.4, 232335.1]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.6, 2.4]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [102067.8, 113887.3]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1105.1, 1578.5]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [18821.8, 22931.8]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [5108.5, 6142.9]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [126713.0, 160716.4]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.2, 1.5]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [59494.9, 76366.9]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [772.6, 884.1]
```

```mermaid
xychart-beta
    title "scene-3d/compose (median µs)"
    x-axis 1 --> 2
    line [10372.3, 5793.5]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [127130.6, 167018.1]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [4.2, 4.6]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [296908.1, 344119.5]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.2, 2.3]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [160845.4, 196666.1]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [2.2, 2.6]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [57003.0, 42123.0]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [4.4, 3.1]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [128750.1, 75810.9]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.2, 1.6]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [69667.1, 42712.5]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [2.2, 1.7]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [14058.5, 13643.4]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [3.3, 3.2]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [28155.4, 34778.7]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.1, 1.2]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [16033.0, 21649.1]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [1.4, 1.7]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [122493.7, 149820.6]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [9688.2, 11822.6]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [218379.0, 269117.3]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.8, 2.0]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [53873.0, 66474.9]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [3328.9, 4158.0]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [30042.5, 39771.4]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [2800.4, 3543.0]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [58121.2, 76076.5]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.0, 1.2]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [15596.8, 21949.3]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [739.4, 972.7]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [10440.0, 15557.2]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [925.2, 1427.4]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [27492.1, 38434.8]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [0.8, 1.2]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [7535.1, 11593.9]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [209.5, 316.8]
```

```mermaid
xychart-beta
    title "status-panel/compose (median µs)"
    x-axis 1 --> 2
    line [468.9, 653.2]
```

```mermaid
xychart-beta
    title "unwind/compose (median µs)"
    x-axis 1 --> 2
    line [4377.9, 5909.9]
```

```mermaid
xychart-beta
    title "update-batched/compose (median µs)"
    x-axis 1 --> 2
    line [3498.0, 1720.7]
```

```mermaid
xychart-beta
    title "update-fanout/compose (median µs)"
    x-axis 1 --> 2
    line [2181.8, 955.8]
```

```mermaid
xychart-beta
    title "update-leaf/compose (median µs)"
    x-axis 1 --> 2
    line [36.3, 43.0]
```

```mermaid
xychart-beta
    title "update-repeated/compose (median µs)"
    x-axis 1 --> 2
    line [393.2, 210.7]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/burst (median µs)"
    x-axis 1 --> 2
    line [874021.2, 673319.5]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/cold (median µs)"
    x-axis 1 --> 2
    line [548551.6, 399701.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/counts (median µs)"
    x-axis 1 --> 2
    line [1518062.6, 1045366.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/settle (median µs)"
    x-axis 1 --> 2
    line [2.2, 2.7]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/steady (median µs)"
    x-axis 1 --> 2
    line [21817.1, 12911.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [597.3, 596.2]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/burst (median µs)"
    x-axis 1 --> 2
    line [129597.0, 152881.9]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/cold (median µs)"
    x-axis 1 --> 2
    line [77495.7, 86845.4]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/counts (median µs)"
    x-axis 1 --> 2
    line [233844.8, 292742.7]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.8, 2.5]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/steady (median µs)"
    x-axis 1 --> 2
    line [16797.9, 18068.3]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [394.3, 415.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/burst (median µs)"
    x-axis 1 --> 2
    line [26466.6, 30431.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/cold (median µs)"
    x-axis 1 --> 2
    line [13006.1, 14270.7]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/counts (median µs)"
    x-axis 1 --> 2
    line [59589.6, 61649.5]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/settle (median µs)"
    x-axis 1 --> 2
    line [1.3, 2.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/steady (median µs)"
    x-axis 1 --> 2
    line [13755.1, 15839.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/teardown (median µs)"
    x-axis 1 --> 2
    line [209.7, 348.6]
```

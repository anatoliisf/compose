# Compose performance

Latest: `4835c016516b3bda179a1f11e8ef77a8032b6cab` on 2026-10-26T101131Z, measured on the CI Ubuntu runner by the paired performance shards.
Each value is the median of the candidate arm's samples; p95 is shown beside it. Change compares the previous main commit.

| Benchmark | Median | p95 | Change |
| --- | --- | --- | --- |
| animate-many/bare | 1.68 ms | 1.76 ms | +33.7% |
| animate-many/compose | 9.30 ms | 11.75 ms | +27.1% |
| animate-many/memory/mounted | 2399 KiB | 2399 KiB | +2.1% |
| animate-many/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.extreme/bare/burst | 1.41 ms | 1.43 ms | +27.0% |
| animated-navigation.extreme/bare/cold | 5.71 ms | 8.32 ms | +12.2% |
| animated-navigation.extreme/bare/settle | 0.7 µs | 1.0 µs | -43.0% |
| animated-navigation.extreme/bare/steady | 18.88 ms | 20.08 ms | +35.2% |
| animated-navigation.extreme/bare/teardown | 3.41 ms | 3.96 ms | -14.2% |
| animated-navigation.extreme/compose/burst | 10.91 ms | 12.16 ms | +13.1% |
| animated-navigation.extreme/compose/cold | 13.71 ms | 19.70 ms | +10.6% |
| animated-navigation.extreme/compose/counts | 102.88 ms | 102.88 ms | +4.4% |
| animated-navigation.extreme/compose/settle | 1.1 µs | 1.5 µs | +1.9% |
| animated-navigation.extreme/compose/steady | 41.99 ms | 43.32 ms | +16.1% |
| animated-navigation.extreme/compose/teardown | 6.22 ms | 6.99 ms | +0.5% |
| animated-navigation.extreme/memory/mounted | 7543 KiB | 7543 KiB | +2.1% |
| animated-navigation.extreme/memory/teardown | 8 KiB | 8 KiB | — |
| animated-navigation.large/bare/burst | 689.7 µs | 749.3 µs | +35.8% |
| animated-navigation.large/bare/cold | 1.77 ms | 4.16 ms | -30.8% |
| animated-navigation.large/bare/settle | 0.6 µs | 0.7 µs | -26.2% |
| animated-navigation.large/bare/steady | 8.84 ms | 9.03 ms | +39.0% |
| animated-navigation.large/bare/teardown | 1.11 ms | 1.34 ms | -10.4% |
| animated-navigation.large/compose/burst | 5.10 ms | 5.29 ms | +8.9% |
| animated-navigation.large/compose/cold | 6.19 ms | 9.31 ms | +5.8% |
| animated-navigation.large/compose/counts | 75.99 ms | 75.99 ms | +10.6% |
| animated-navigation.large/compose/settle | 0.8 µs | 1.0 µs | -36.5% |
| animated-navigation.large/compose/steady | 32.95 ms | 33.83 ms | +14.9% |
| animated-navigation.large/compose/teardown | 2.08 ms | 2.63 ms | -9.9% |
| animated-navigation.large/memory/mounted | 3793 KiB | 3793 KiB | +2.2% |
| animated-navigation.large/memory/teardown | 1 KiB | 1 KiB | — |
| animated-navigation.medium/bare/burst | 242.8 µs | 278.3 µs | +6.3% |
| animated-navigation.medium/bare/cold | 475.4 µs | 1.22 ms | -17.5% |
| animated-navigation.medium/bare/settle | 0.4 µs | 0.5 µs | -13.2% |
| animated-navigation.medium/bare/steady | 2.60 ms | 2.65 ms | -0.5% |
| animated-navigation.medium/bare/teardown | 187.8 µs | 238.4 µs | -1.8% |
| animated-navigation.medium/compose/burst | 1.71 ms | 1.79 ms | -6.3% |
| animated-navigation.medium/compose/cold | 1.45 ms | 2.87 ms | -19.5% |
| animated-navigation.medium/compose/counts | 27.54 ms | 27.54 ms | -7.3% |
| animated-navigation.medium/compose/settle | 0.5 µs | 0.6 µs | -8.5% |
| animated-navigation.medium/compose/steady | 13.46 ms | 13.88 ms | -6.2% |
| animated-navigation.medium/compose/teardown | 421.2 µs | 510.8 µs | -16.7% |
| animated-navigation.medium/memory/mounted | 1282 KiB | 1282 KiB | +2.0% |
| animated-navigation.medium/memory/teardown | 0 KiB | 0 KiB | — |
| branch-swap/bare | 2.33 ms | 4.38 ms | +35.5% |
| branch-swap/compose | 2.61 ms | 4.09 ms | +3.4% |
| branch-swap/memory/mounted | 35 KiB | 35 KiB | +2.9% |
| branch-swap/memory/teardown | 8 KiB | 8 KiB | — |
| cold-mount-100/bare | 654.5 µs | 1.17 ms | +17.7% |
| cold-mount-100/compose | 589.5 µs | 1.18 ms | +3.9% |
| cold-mount-100/memory/mounted | 2231 KiB | 2231 KiB | -0.4% |
| cold-mount-100/memory/teardown | 0 KiB | 0 KiB | — |
| cold-mount-1000/bare | 6.07 ms | 7.58 ms | +9.4% |
| cold-mount-1000/compose | 6.04 ms | 10.79 ms | -15.2% |
| cold-mount-1000/memory/mounted | 21906 KiB | 21906 KiB | -0.0% |
| cold-mount-1000/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| cold-mount-10000/bare | 73.73 ms | 77.03 ms | +15.2% |
| cold-mount-10000/compose | 100.99 ms | 103.58 ms | +11.8% |
| cold-mount-10000/memory/mounted | 219973 KiB | 219973 KiB | +0.0% |
| cold-mount-10000/memory/teardown | 0 KiB | 0 KiB | — |
| data-grid.extreme/bare/burst | 748.11 ms | 776.63 ms | +29.9% |
| data-grid.extreme/bare/cold | 475.85 ms | 494.39 ms | +33.2% |
| data-grid.extreme/bare/settle | 2.7 µs | 3.5 µs | -1.8% |
| data-grid.extreme/bare/steady | 17.86 ms | 26.24 ms | +26.7% |
| data-grid.extreme/bare/teardown | 498.2 µs | 900.8 µs | +30.6% |
| data-grid.extreme/compose/burst | 855.18 ms | 899.79 ms | +30.0% |
| data-grid.extreme/compose/cold | 504.54 ms | 528.02 ms | +26.7% |
| data-grid.extreme/compose/counts | 1445.04 ms | 1445.04 ms | +30.1% |
| data-grid.extreme/compose/settle | 2.1 µs | 2.7 µs | -8.0% |
| data-grid.extreme/compose/steady | 24.21 ms | 26.84 ms | +26.4% |
| data-grid.extreme/compose/teardown | 1.50 ms | 2.44 ms | +34.6% |
| data-grid.extreme/memory/mounted | 33055 KiB | 33055 KiB | -0.0% |
| data-grid.extreme/memory/teardown | 1 KiB | 1 KiB | -88.9% |
| data-grid.large/bare/burst | 114.28 ms | 115.00 ms | -0.7% |
| data-grid.large/bare/cold | 71.08 ms | 76.04 ms | -1.8% |
| data-grid.large/bare/settle | 1.2 µs | 1.8 µs | -25.5% |
| data-grid.large/bare/steady | 9.75 ms | 11.47 ms | -10.4% |
| data-grid.large/bare/teardown | 189.8 µs | 328.2 µs | +6.7% |
| data-grid.large/compose/burst | 132.71 ms | 145.94 ms | -0.4% |
| data-grid.large/compose/cold | 77.74 ms | 81.57 ms | +0.4% |
| data-grid.large/compose/counts | 244.79 ms | 244.79 ms | +1.3% |
| data-grid.large/compose/settle | 1.5 µs | 2.5 µs | -19.9% |
| data-grid.large/compose/steady | 15.98 ms | 22.45 ms | -5.8% |
| data-grid.large/compose/teardown | 553.4 µs | 705.2 µs | -3.4% |
| data-grid.large/memory/mounted | 7474 KiB | 7474 KiB | +0.1% |
| data-grid.large/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| data-grid.medium/bare/burst | 41.07 ms | 46.05 ms | -13.1% |
| data-grid.medium/bare/cold | 25.20 ms | 26.52 ms | -17.8% |
| data-grid.medium/bare/settle | 2.7 µs | 3.4 µs | +70.3% |
| data-grid.medium/bare/steady | 7.28 ms | 8.80 ms | -5.2% |
| data-grid.medium/bare/teardown | 83.7 µs | 122.3 µs | -9.0% |
| data-grid.medium/compose/burst | 48.42 ms | 52.59 ms | -16.3% |
| data-grid.medium/compose/cold | 28.82 ms | 29.71 ms | -16.4% |
| data-grid.medium/compose/counts | 107.87 ms | 107.87 ms | -11.9% |
| data-grid.medium/compose/settle | 2.2 µs | 2.7 µs | +45.0% |
| data-grid.medium/compose/steady | 12.84 ms | 15.94 ms | +3.7% |
| data-grid.medium/compose/teardown | 260.1 µs | 288.4 µs | -11.1% |
| data-grid.medium/memory/mounted | 3927 KiB | 3927 KiB | -0.2% |
| data-grid.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| dense-dashboard.extreme/bare/burst | 6.53 ms | 9.51 ms | +12.6% |
| dense-dashboard.extreme/bare/cold | 222.1 µs | 507.9 µs | -23.2% |
| dense-dashboard.extreme/bare/settle | 0.9 µs | 1.4 µs | -12.0% |
| dense-dashboard.extreme/bare/steady | 109.4 µs | 124.4 µs | -10.8% |
| dense-dashboard.extreme/bare/teardown | 194.4 µs | 284.3 µs | -18.2% |
| dense-dashboard.extreme/compose/burst | 15.36 ms | 18.65 ms | +3.5% |
| dense-dashboard.extreme/compose/cold | 502.1 µs | 1.64 ms | +4.6% |
| dense-dashboard.extreme/compose/counts | 21.79 ms | 21.79 ms | -2.8% |
| dense-dashboard.extreme/compose/settle | 1.4 µs | 2.3 µs | +24.1% |
| dense-dashboard.extreme/compose/steady | 708.9 µs | 748.1 µs | +3.3% |
| dense-dashboard.extreme/compose/teardown | 566.2 µs | 849.4 µs | +4.9% |
| dense-dashboard.extreme/memory/mounted | 1250 KiB | 1250 KiB | +0.0% |
| dense-dashboard.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| dense-dashboard.large/bare/burst | 3.05 ms | 5.20 ms | -0.7% |
| dense-dashboard.large/bare/cold | 118.1 µs | 269.8 µs | -4.0% |
| dense-dashboard.large/bare/settle | 0.6 µs | 1.0 µs | -22.4% |
| dense-dashboard.large/bare/steady | 109.0 µs | 117.6 µs | -11.1% |
| dense-dashboard.large/bare/teardown | 79.6 µs | 115.1 µs | -11.6% |
| dense-dashboard.large/compose/burst | 7.82 ms | 10.22 ms | +31.9% |
| dense-dashboard.large/compose/cold | 305.9 µs | 984.0 µs | +12.1% |
| dense-dashboard.large/compose/counts | 13.69 ms | 13.69 ms | +0.5% |
| dense-dashboard.large/compose/settle | 1.0 µs | 1.3 µs | +9.4% |
| dense-dashboard.large/compose/steady | 690.4 µs | 697.5 µs | +1.6% |
| dense-dashboard.large/compose/teardown | 234.0 µs | 438.0 µs | +1.8% |
| dense-dashboard.large/memory/mounted | 657 KiB | 657 KiB | -2.4% |
| dense-dashboard.large/memory/teardown | 0 KiB | 0 KiB | — |
| dense-dashboard.medium/bare/burst | 1.10 ms | 2.15 ms | +88.4% |
| dense-dashboard.medium/bare/cold | 73.6 µs | 175.6 µs | +17.0% |
| dense-dashboard.medium/bare/settle | 0.8 µs | 1.0 µs | +121.1% |
| dense-dashboard.medium/bare/steady | 80.1 µs | 92.1 µs | +9.0% |
| dense-dashboard.medium/bare/teardown | 35.7 µs | 50.7 µs | +22.6% |
| dense-dashboard.medium/compose/burst | 1.73 ms | 2.93 ms | +19.6% |
| dense-dashboard.medium/compose/cold | 158.5 µs | 427.2 µs | +57.1% |
| dense-dashboard.medium/compose/counts | 3.59 ms | 3.59 ms | +12.6% |
| dense-dashboard.medium/compose/settle | 0.9 µs | 1.1 µs | +103.7% |
| dense-dashboard.medium/compose/steady | 448.9 µs | 490.9 µs | +10.2% |
| dense-dashboard.medium/compose/teardown | 79.1 µs | 101.0 µs | +26.6% |
| dense-dashboard.medium/memory/mounted | 329 KiB | 329 KiB | +0.3% |
| dense-dashboard.medium/memory/teardown | 1 KiB | 1 KiB | — |
| entities-identity-churn-10.extreme/bare/burst | 14.34 ms | 24.59 ms | +58.1% |
| entities-identity-churn-10.extreme/bare/cold | 6.78 ms | 15.30 ms | +32.2% |
| entities-identity-churn-10.extreme/bare/settle | 2.1 µs | 5.4 µs | +179.5% |
| entities-identity-churn-10.extreme/bare/steady | 29.15 ms | 37.74 ms | +67.7% |
| entities-identity-churn-10.extreme/bare/teardown | 355.0 µs | 780.7 µs | +56.0% |
| entities-identity-churn-10.extreme/compose/burst | 40.67 ms | 45.53 ms | +38.4% |
| entities-identity-churn-10.extreme/compose/cold | 22.37 ms | 34.79 ms | +28.6% |
| entities-identity-churn-10.extreme/compose/counts | 182.35 ms | 182.35 ms | +18.5% |
| entities-identity-churn-10.extreme/compose/settle | 2.4 µs | 3.1 µs | +81.5% |
| entities-identity-churn-10.extreme/compose/steady | 51.25 ms | 57.31 ms | +68.4% |
| entities-identity-churn-10.extreme/compose/teardown | 900.0 µs | 1.99 ms | +29.6% |
| entities-identity-churn-10.extreme/memory/mounted | 4398 KiB | 4398 KiB | +0.7% |
| entities-identity-churn-10.extreme/memory/teardown | 8 KiB | 8 KiB | — |
| entities-identity-churn-10.large/bare/burst | 4.24 ms | 6.51 ms | -2.7% |
| entities-identity-churn-10.large/bare/cold | 3.72 ms | 7.10 ms | +46.8% |
| entities-identity-churn-10.large/bare/settle | 1.1 µs | 1.5 µs | +21.5% |
| entities-identity-churn-10.large/bare/steady | 8.47 ms | 12.74 ms | -18.2% |
| entities-identity-churn-10.large/bare/teardown | 107.0 µs | 153.0 µs | +1.7% |
| entities-identity-churn-10.large/compose/burst | 14.70 ms | 19.09 ms | +8.0% |
| entities-identity-churn-10.large/compose/cold | 8.91 ms | 17.99 ms | -11.1% |
| entities-identity-churn-10.large/compose/counts | 65.03 ms | 65.03 ms | +3.2% |
| entities-identity-churn-10.large/compose/settle | 1.8 µs | 2.2 µs | +40.9% |
| entities-identity-churn-10.large/compose/steady | 16.98 ms | 22.81 ms | -11.7% |
| entities-identity-churn-10.large/compose/teardown | 368.0 µs | 396.2 µs | +2.1% |
| entities-identity-churn-10.large/memory/mounted | 1702 KiB | 1702 KiB | -2.1% |
| entities-identity-churn-10.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-identity-churn-10.medium/bare/burst | 2.09 ms | 5.31 ms | -27.1% |
| entities-identity-churn-10.medium/bare/cold | 1.30 ms | 3.18 ms | +2.9% |
| entities-identity-churn-10.medium/bare/settle | 0.7 µs | 0.9 µs | -17.4% |
| entities-identity-churn-10.medium/bare/steady | 5.37 ms | 7.08 ms | +34.0% |
| entities-identity-churn-10.medium/bare/teardown | 52.6 µs | 74.5 µs | +0.5% |
| entities-identity-churn-10.medium/compose/burst | 6.45 ms | 9.35 ms | +2.0% |
| entities-identity-churn-10.medium/compose/cold | 5.74 ms | 9.15 ms | +8.4% |
| entities-identity-churn-10.medium/compose/counts | 31.66 ms | 31.66 ms | +14.4% |
| entities-identity-churn-10.medium/compose/settle | 0.8 µs | 1.0 µs | -49.0% |
| entities-identity-churn-10.medium/compose/steady | 8.96 ms | 9.97 ms | +9.2% |
| entities-identity-churn-10.medium/compose/teardown | 181.2 µs | 333.2 µs | -14.8% |
| entities-identity-churn-10.medium/memory/mounted | 921 KiB | 921 KiB | +0.7% |
| entities-identity-churn-10.medium/memory/teardown | 3 KiB | 3 KiB | +0.0% |
| entities-identity-churn-50.extreme/bare/burst | 14.68 ms | 22.70 ms | -16.8% |
| entities-identity-churn-50.extreme/bare/cold | 7.31 ms | 19.86 ms | -3.4% |
| entities-identity-churn-50.extreme/bare/settle | 1.5 µs | 2.7 µs | -23.2% |
| entities-identity-churn-50.extreme/bare/steady | 64.17 ms | 75.15 ms | +3.0% |
| entities-identity-churn-50.extreme/bare/teardown | 376.1 µs | 455.1 µs | -3.2% |
| entities-identity-churn-50.extreme/compose/burst | 44.52 ms | 68.09 ms | -4.7% |
| entities-identity-churn-50.extreme/compose/cold | 32.39 ms | 51.56 ms | -21.8% |
| entities-identity-churn-50.extreme/compose/counts | 320.93 ms | 320.93 ms | -10.4% |
| entities-identity-churn-50.extreme/compose/settle | 1.8 µs | 2.2 µs | -8.5% |
| entities-identity-churn-50.extreme/compose/steady | 163.54 ms | 181.54 ms | -10.5% |
| entities-identity-churn-50.extreme/compose/teardown | 1.06 ms | 1.82 ms | -23.1% |
| entities-identity-churn-50.extreme/memory/mounted | 4364 KiB | 4364 KiB | +1.0% |
| entities-identity-churn-50.extreme/memory/teardown | 9 KiB | 9 KiB | +0.0% |
| entities-identity-churn-50.large/bare/burst | 3.89 ms | 7.12 ms | +1.5% |
| entities-identity-churn-50.large/bare/cold | 3.11 ms | 5.80 ms | +63.7% |
| entities-identity-churn-50.large/bare/settle | 1.1 µs | 1.5 µs | +24.7% |
| entities-identity-churn-50.large/bare/steady | 18.53 ms | 23.09 ms | +38.7% |
| entities-identity-churn-50.large/bare/teardown | 95.1 µs | 229.0 µs | +11.3% |
| entities-identity-churn-50.large/compose/burst | 11.91 ms | 19.06 ms | -2.4% |
| entities-identity-churn-50.large/compose/cold | 8.83 ms | 18.47 ms | +22.9% |
| entities-identity-churn-50.large/compose/counts | 90.06 ms | 90.06 ms | +24.5% |
| entities-identity-churn-50.large/compose/settle | 1.5 µs | 1.8 µs | +15.1% |
| entities-identity-churn-50.large/compose/steady | 51.44 ms | 62.60 ms | +49.9% |
| entities-identity-churn-50.large/compose/teardown | 317.9 µs | 367.4 µs | +7.5% |
| entities-identity-churn-50.large/memory/mounted | 1820 KiB | 1820 KiB | -1.1% |
| entities-identity-churn-50.large/memory/teardown | 13 KiB | 13 KiB | -71.1% |
| entities-identity-churn-50.medium/bare/burst | 3.20 ms | 5.81 ms | +10.9% |
| entities-identity-churn-50.medium/bare/cold | 1.25 ms | 2.28 ms | -43.3% |
| entities-identity-churn-50.medium/bare/settle | 0.7 µs | 1.4 µs | -9.9% |
| entities-identity-churn-50.medium/bare/steady | 10.42 ms | 12.21 ms | +11.9% |
| entities-identity-churn-50.medium/bare/teardown | 66.6 µs | 92.4 µs | -23.7% |
| entities-identity-churn-50.medium/compose/burst | 9.37 ms | 13.18 ms | -3.9% |
| entities-identity-churn-50.medium/compose/cold | 4.67 ms | 9.52 ms | -11.2% |
| entities-identity-churn-50.medium/compose/counts | 59.91 ms | 59.91 ms | -9.1% |
| entities-identity-churn-50.medium/compose/settle | 1.0 µs | 1.2 µs | -25.9% |
| entities-identity-churn-50.medium/compose/steady | 24.72 ms | 32.21 ms | -7.3% |
| entities-identity-churn-50.medium/compose/teardown | 224.3 µs | 247.8 µs | -11.5% |
| entities-identity-churn-50.medium/memory/mounted | 998 KiB | 998 KiB | +1.5% |
| entities-identity-churn-50.medium/memory/teardown | 1 KiB | 1 KiB | — |
| entities-identity-churn.extreme/bare/burst | 17.51 ms | 31.49 ms | -0.6% |
| entities-identity-churn.extreme/bare/cold | 13.20 ms | 21.18 ms | +97.4% |
| entities-identity-churn.extreme/bare/settle | 2.2 µs | 2.7 µs | +37.7% |
| entities-identity-churn.extreme/bare/steady | 36.83 ms | 45.69 ms | -19.9% |
| entities-identity-churn.extreme/bare/teardown | 457.9 µs | 1.19 ms | +5.8% |
| entities-identity-churn.extreme/compose/burst | 58.96 ms | 86.52 ms | +22.8% |
| entities-identity-churn.extreme/compose/cold | 23.67 ms | 40.41 ms | -5.1% |
| entities-identity-churn.extreme/compose/counts | 281.12 ms | 281.12 ms | +16.4% |
| entities-identity-churn.extreme/compose/settle | 2.1 µs | 2.5 µs | +41.2% |
| entities-identity-churn.extreme/compose/steady | 108.99 ms | 122.93 ms | +11.3% |
| entities-identity-churn.extreme/compose/teardown | 1.41 ms | 3.00 ms | +15.9% |
| entities-identity-churn.extreme/memory/mounted | 4760 KiB | 4760 KiB | +0.8% |
| entities-identity-churn.extreme/memory/teardown | 96 KiB | 96 KiB | +0.0% |
| entities-identity-churn.large/bare/burst | 4.45 ms | 6.04 ms | -9.1% |
| entities-identity-churn.large/bare/cold | 3.12 ms | 9.40 ms | +14.2% |
| entities-identity-churn.large/bare/settle | 1.0 µs | 1.4 µs | -40.4% |
| entities-identity-churn.large/bare/steady | 14.96 ms | 18.68 ms | +19.4% |
| entities-identity-churn.large/bare/teardown | 108.8 µs | 136.6 µs | +0.9% |
| entities-identity-churn.large/compose/burst | 14.67 ms | 23.78 ms | +14.4% |
| entities-identity-churn.large/compose/cold | 9.99 ms | 16.58 ms | -8.5% |
| entities-identity-churn.large/compose/counts | 106.96 ms | 106.96 ms | +4.0% |
| entities-identity-churn.large/compose/settle | 1.5 µs | 1.9 µs | -12.3% |
| entities-identity-churn.large/compose/steady | 34.36 ms | 42.69 ms | +14.1% |
| entities-identity-churn.large/compose/teardown | 394.0 µs | 697.9 µs | +10.8% |
| entities-identity-churn.large/memory/mounted | 1713 KiB | 1713 KiB | +1.1% |
| entities-identity-churn.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn.medium/bare/burst | 2.54 ms | 3.31 ms | +6.8% |
| entities-identity-churn.medium/bare/cold | 1.22 ms | 3.96 ms | -6.3% |
| entities-identity-churn.medium/bare/settle | 0.7 µs | 0.9 µs | -17.8% |
| entities-identity-churn.medium/bare/steady | 5.62 ms | 7.91 ms | -8.9% |
| entities-identity-churn.medium/bare/teardown | 51.6 µs | 64.3 µs | -12.8% |
| entities-identity-churn.medium/compose/burst | 7.05 ms | 11.89 ms | -7.2% |
| entities-identity-churn.medium/compose/cold | 4.41 ms | 9.31 ms | -7.4% |
| entities-identity-churn.medium/compose/counts | 35.03 ms | 35.03 ms | -17.1% |
| entities-identity-churn.medium/compose/settle | 1.4 µs | 1.9 µs | +40.9% |
| entities-identity-churn.medium/compose/steady | 12.82 ms | 18.61 ms | -12.0% |
| entities-identity-churn.medium/compose/teardown | 194.9 µs | 292.5 µs | -1.4% |
| entities-identity-churn.medium/memory/mounted | 949 KiB | 949 KiB | +0.6% |
| entities-identity-churn.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entities-integrated.extreme/bare/burst | 5.65 ms | 8.60 ms | +2.5% |
| entities-integrated.extreme/bare/cold | 30.44 ms | 57.97 ms | +25.4% |
| entities-integrated.extreme/bare/settle | 1.6 µs | 2.0 µs | -38.2% |
| entities-integrated.extreme/bare/steady | 23.07 ms | 31.48 ms | -12.0% |
| entities-integrated.extreme/bare/teardown | 23.82 ms | 28.73 ms | -11.1% |
| entities-integrated.extreme/compose/burst | 20.26 ms | 35.56 ms | -28.4% |
| entities-integrated.extreme/compose/cold | 112.76 ms | 158.35 ms | +5.0% |
| entities-integrated.extreme/compose/counts | 343.53 ms | 343.53 ms | -7.5% |
| entities-integrated.extreme/compose/settle | 1.9 µs | 2.1 µs | -13.3% |
| entities-integrated.extreme/compose/steady | 98.35 ms | 116.87 ms | -7.8% |
| entities-integrated.extreme/compose/teardown | 37.16 ms | 45.86 ms | -18.4% |
| entities-integrated.extreme/memory/mounted | 40376 KiB | 40376 KiB | +0.6% |
| entities-integrated.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-integrated.large/bare/burst | 3.00 ms | 7.00 ms | -11.6% |
| entities-integrated.large/bare/cold | 8.94 ms | 24.25 ms | -33.1% |
| entities-integrated.large/bare/settle | 1.0 µs | 1.3 µs | -38.1% |
| entities-integrated.large/bare/steady | 14.55 ms | 21.64 ms | -0.8% |
| entities-integrated.large/bare/teardown | 5.35 ms | 7.82 ms | -13.6% |
| entities-integrated.large/compose/burst | 10.14 ms | 14.73 ms | -1.5% |
| entities-integrated.large/compose/cold | 39.87 ms | 52.94 ms | -12.8% |
| entities-integrated.large/compose/counts | 159.92 ms | 159.92 ms | -6.4% |
| entities-integrated.large/compose/settle | 1.1 µs | 1.5 µs | -24.0% |
| entities-integrated.large/compose/steady | 48.91 ms | 63.25 ms | -1.1% |
| entities-integrated.large/compose/teardown | 9.68 ms | 17.40 ms | -15.5% |
| entities-integrated.large/memory/mounted | 16697 KiB | 16697 KiB | +0.6% |
| entities-integrated.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-integrated.medium/bare/burst | 2.89 ms | 4.19 ms | +45.9% |
| entities-integrated.medium/bare/cold | 4.74 ms | 11.90 ms | -3.3% |
| entities-integrated.medium/bare/settle | 1.1 µs | 1.3 µs | -20.5% |
| entities-integrated.medium/bare/steady | 11.69 ms | 16.68 ms | +7.2% |
| entities-integrated.medium/bare/teardown | 2.33 ms | 4.13 ms | -18.7% |
| entities-integrated.medium/compose/burst | 7.73 ms | 10.82 ms | +5.7% |
| entities-integrated.medium/compose/cold | 24.11 ms | 31.80 ms | +42.2% |
| entities-integrated.medium/compose/counts | 113.17 ms | 113.17 ms | +19.7% |
| entities-integrated.medium/compose/settle | 1.5 µs | 2.0 µs | -11.8% |
| entities-integrated.medium/compose/steady | 37.16 ms | 54.49 ms | +6.1% |
| entities-integrated.medium/compose/teardown | 5.43 ms | 7.86 ms | -30.1% |
| entities-integrated.medium/memory/mounted | 9028 KiB | 9028 KiB | +0.6% |
| entities-integrated.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-relevance-saturated.extreme/bare/burst | 16.75 ms | 26.34 ms | -19.2% |
| entities-relevance-saturated.extreme/bare/cold | 12.97 ms | 20.32 ms | +46.8% |
| entities-relevance-saturated.extreme/bare/settle | 2.1 µs | 2.9 µs | -29.9% |
| entities-relevance-saturated.extreme/bare/steady | 94.02 ms | 116.75 ms | +20.0% |
| entities-relevance-saturated.extreme/bare/teardown | 3.36 ms | 4.61 ms | -13.2% |
| entities-relevance-saturated.extreme/compose/burst | 87.01 ms | 110.15 ms | -9.6% |
| entities-relevance-saturated.extreme/compose/cold | 36.07 ms | 49.31 ms | +23.6% |
| entities-relevance-saturated.extreme/compose/counts | 240.30 ms | 240.30 ms | -8.4% |
| entities-relevance-saturated.extreme/compose/settle | 2.0 µs | 3.0 µs | -20.6% |
| entities-relevance-saturated.extreme/compose/steady | 53.66 ms | 79.15 ms | +3.1% |
| entities-relevance-saturated.extreme/compose/teardown | 13.65 ms | 16.47 ms | -11.7% |
| entities-relevance-saturated.extreme/memory/mounted | 12664 KiB | 12664 KiB | -0.1% |
| entities-relevance-saturated.extreme/memory/teardown | 8 KiB | 8 KiB | — |
| entities-relevance-saturated.large/bare/burst | 5.03 ms | 9.31 ms | +22.4% |
| entities-relevance-saturated.large/bare/cold | 2.68 ms | 7.38 ms | +13.7% |
| entities-relevance-saturated.large/bare/settle | 1.5 µs | 2.2 µs | +14.0% |
| entities-relevance-saturated.large/bare/steady | 22.87 ms | 32.46 ms | +18.2% |
| entities-relevance-saturated.large/bare/teardown | 776.4 µs | 1.43 ms | -29.7% |
| entities-relevance-saturated.large/compose/burst | 24.67 ms | 29.85 ms | +47.4% |
| entities-relevance-saturated.large/compose/cold | 8.31 ms | 12.86 ms | +12.1% |
| entities-relevance-saturated.large/compose/counts | 76.05 ms | 76.05 ms | +23.1% |
| entities-relevance-saturated.large/compose/settle | 1.4 µs | 1.9 µs | +11.5% |
| entities-relevance-saturated.large/compose/steady | 13.37 ms | 21.02 ms | +31.5% |
| entities-relevance-saturated.large/compose/teardown | 2.63 ms | 2.90 ms | +10.4% |
| entities-relevance-saturated.large/memory/mounted | 5096 KiB | 5096 KiB | +0.0% |
| entities-relevance-saturated.large/memory/teardown | 1 KiB | 1 KiB | -88.9% |
| entities-relevance-saturated.medium/bare/burst | 3.58 ms | 6.07 ms | +9.9% |
| entities-relevance-saturated.medium/bare/cold | 1.77 ms | 4.03 ms | +6.1% |
| entities-relevance-saturated.medium/bare/settle | 0.9 µs | 1.2 µs | -42.9% |
| entities-relevance-saturated.medium/bare/steady | 16.75 ms | 21.37 ms | +38.8% |
| entities-relevance-saturated.medium/bare/teardown | 424.6 µs | 590.6 µs | -30.5% |
| entities-relevance-saturated.medium/compose/burst | 11.31 ms | 18.48 ms | -5.3% |
| entities-relevance-saturated.medium/compose/cold | 6.59 ms | 9.76 ms | +4.7% |
| entities-relevance-saturated.medium/compose/counts | 39.25 ms | 39.25 ms | +0.7% |
| entities-relevance-saturated.medium/compose/settle | 1.0 µs | 1.6 µs | -45.4% |
| entities-relevance-saturated.medium/compose/steady | 7.93 ms | 11.05 ms | +3.8% |
| entities-relevance-saturated.medium/compose/teardown | 1.15 ms | 1.52 ms | -16.7% |
| entities-relevance-saturated.medium/memory/mounted | 2557 KiB | 2557 KiB | +0.0% |
| entities-relevance-saturated.medium/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| entities-relevance-sweep.extreme/bare/burst | 26.37 ms | 56.36 ms | -32.1% |
| entities-relevance-sweep.extreme/bare/cold | 9.50 ms | 20.69 ms | +6.8% |
| entities-relevance-sweep.extreme/bare/settle | 1.9 µs | 2.6 µs | -37.6% |
| entities-relevance-sweep.extreme/bare/steady | 27.29 ms | 59.22 ms | +2.0% |
| entities-relevance-sweep.extreme/bare/teardown | 3.70 ms | 4.17 ms | -10.9% |
| entities-relevance-sweep.extreme/compose/burst | 128.24 ms | 174.93 ms | -14.4% |
| entities-relevance-sweep.extreme/compose/cold | 33.46 ms | 59.23 ms | +22.6% |
| entities-relevance-sweep.extreme/compose/counts | 458.89 ms | 458.89 ms | +12.5% |
| entities-relevance-sweep.extreme/compose/settle | 2.0 µs | 2.5 µs | -17.2% |
| entities-relevance-sweep.extreme/compose/steady | 129.72 ms | 148.75 ms | +7.2% |
| entities-relevance-sweep.extreme/compose/teardown | 13.55 ms | 16.36 ms | -12.0% |
| entities-relevance-sweep.extreme/memory/mounted | 12656 KiB | 12656 KiB | +0.0% |
| entities-relevance-sweep.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| entities-relevance-sweep.large/bare/burst | 8.63 ms | 17.59 ms | -5.4% |
| entities-relevance-sweep.large/bare/cold | 3.78 ms | 14.86 ms | +6.5% |
| entities-relevance-sweep.large/bare/settle | 1.4 µs | 1.9 µs | +4.3% |
| entities-relevance-sweep.large/bare/steady | 10.64 ms | 18.55 ms | -3.7% |
| entities-relevance-sweep.large/bare/teardown | 1.23 ms | 1.68 ms | +27.0% |
| entities-relevance-sweep.large/compose/burst | 35.75 ms | 48.77 ms | -17.9% |
| entities-relevance-sweep.large/compose/cold | 10.09 ms | 20.56 ms | -2.8% |
| entities-relevance-sweep.large/compose/counts | 119.31 ms | 119.31 ms | -13.2% |
| entities-relevance-sweep.large/compose/settle | 2.2 µs | 2.5 µs | +37.0% |
| entities-relevance-sweep.large/compose/steady | 40.09 ms | 46.14 ms | -12.9% |
| entities-relevance-sweep.large/compose/teardown | 3.74 ms | 3.92 ms | +20.9% |
| entities-relevance-sweep.large/memory/mounted | 5096 KiB | 5096 KiB | +0.0% |
| entities-relevance-sweep.large/memory/teardown | 9 KiB | 9 KiB | +0.0% |
| entities-relevance-sweep.medium/bare/burst | 3.62 ms | 9.93 ms | +19.3% |
| entities-relevance-sweep.medium/bare/cold | 1.22 ms | 3.61 ms | +11.6% |
| entities-relevance-sweep.medium/bare/settle | 1.2 µs | 1.4 µs | +75.7% |
| entities-relevance-sweep.medium/bare/steady | 3.61 ms | 6.41 ms | +13.8% |
| entities-relevance-sweep.medium/bare/teardown | 321.3 µs | 400.3 µs | +15.0% |
| entities-relevance-sweep.medium/compose/burst | 17.02 ms | 22.41 ms | +44.6% |
| entities-relevance-sweep.medium/compose/cold | 4.24 ms | 10.63 ms | +30.5% |
| entities-relevance-sweep.medium/compose/counts | 64.27 ms | 64.27 ms | +62.6% |
| entities-relevance-sweep.medium/compose/settle | 1.5 µs | 2.3 µs | +69.9% |
| entities-relevance-sweep.medium/compose/steady | 16.08 ms | 22.35 ms | +38.7% |
| entities-relevance-sweep.medium/compose/teardown | 1.14 ms | 1.91 ms | +41.7% |
| entities-relevance-sweep.medium/memory/mounted | 2557 KiB | 2557 KiB | +0.0% |
| entities-relevance-sweep.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entity-labels-sparse.extreme/bare/burst | 7.99 ms | 11.85 ms | -1.9% |
| entity-labels-sparse.extreme/bare/cold | 10.12 ms | 18.58 ms | +43.9% |
| entity-labels-sparse.extreme/bare/settle | 1.4 µs | 2.5 µs | +29.3% |
| entity-labels-sparse.extreme/bare/steady | 844.9 µs | 1.26 ms | -3.9% |
| entity-labels-sparse.extreme/bare/teardown | 5.80 ms | 7.76 ms | -3.8% |
| entity-labels-sparse.extreme/compose/burst | 32.73 ms | 40.00 ms | +8.5% |
| entity-labels-sparse.extreme/compose/cold | 23.24 ms | 32.85 ms | +8.1% |
| entity-labels-sparse.extreme/compose/counts | 101.86 ms | 101.86 ms | +15.8% |
| entity-labels-sparse.extreme/compose/settle | 1.8 µs | 3.2 µs | +19.4% |
| entity-labels-sparse.extreme/compose/steady | 4.21 ms | 4.92 ms | +6.5% |
| entity-labels-sparse.extreme/compose/teardown | 11.78 ms | 13.65 ms | +12.9% |
| entity-labels-sparse.extreme/memory/mounted | 11915 KiB | 11915 KiB | -0.1% |
| entity-labels-sparse.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels-sparse.large/bare/burst | 4.05 ms | 8.33 ms | -18.6% |
| entity-labels-sparse.large/bare/cold | 4.69 ms | 7.77 ms | +17.1% |
| entity-labels-sparse.large/bare/settle | 1.0 µs | 1.6 µs | +3.6% |
| entity-labels-sparse.large/bare/steady | 367.8 µs | 403.7 µs | -8.6% |
| entity-labels-sparse.large/bare/teardown | 2.04 ms | 2.34 ms | +7.8% |
| entity-labels-sparse.large/compose/burst | 13.16 ms | 16.19 ms | -12.0% |
| entity-labels-sparse.large/compose/cold | 10.43 ms | 16.17 ms | +2.6% |
| entity-labels-sparse.large/compose/counts | 39.52 ms | 39.52 ms | -6.8% |
| entity-labels-sparse.large/compose/settle | 1.4 µs | 2.2 µs | +1.9% |
| entity-labels-sparse.large/compose/steady | 1.90 ms | 2.50 ms | -13.1% |
| entity-labels-sparse.large/compose/teardown | 3.77 ms | 4.08 ms | -3.6% |
| entity-labels-sparse.large/memory/mounted | 6212 KiB | 6212 KiB | +0.1% |
| entity-labels-sparse.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels-sparse.medium/bare/burst | 1.08 ms | 2.06 ms | -4.7% |
| entity-labels-sparse.medium/bare/cold | 951.4 µs | 1.94 ms | -5.5% |
| entity-labels-sparse.medium/bare/settle | 0.9 µs | 1.4 µs | +114.1% |
| entity-labels-sparse.medium/bare/steady | 135.5 µs | 165.2 µs | +18.1% |
| entity-labels-sparse.medium/bare/teardown | 414.5 µs | 604.9 µs | +35.7% |
| entity-labels-sparse.medium/compose/burst | 3.65 ms | 4.94 ms | +18.3% |
| entity-labels-sparse.medium/compose/cold | 3.55 ms | 5.61 ms | +58.7% |
| entity-labels-sparse.medium/compose/counts | 18.39 ms | 18.39 ms | +46.4% |
| entity-labels-sparse.medium/compose/settle | 1.0 µs | 1.2 µs | +111.8% |
| entity-labels-sparse.medium/compose/steady | 665.1 µs | 859.8 µs | +29.7% |
| entity-labels-sparse.medium/compose/teardown | 924.8 µs | 1.28 ms | +33.8% |
| entity-labels-sparse.medium/memory/mounted | 2787 KiB | 2787 KiB | +0.0% |
| entity-labels-sparse.medium/memory/teardown | 1 KiB | 1 KiB | -88.9% |
| entity-labels.extreme/bare/burst | 9.50 ms | 12.65 ms | +12.0% |
| entity-labels.extreme/bare/cold | 6.98 ms | 17.13 ms | -18.5% |
| entity-labels.extreme/bare/settle | 1.6 µs | 2.0 µs | +48.3% |
| entity-labels.extreme/bare/steady | 869.8 µs | 984.8 µs | +0.8% |
| entity-labels.extreme/bare/teardown | 6.51 ms | 7.48 ms | +15.7% |
| entity-labels.extreme/compose/burst | 34.24 ms | 49.06 ms | +10.4% |
| entity-labels.extreme/compose/cold | 22.75 ms | 33.73 ms | -13.9% |
| entity-labels.extreme/compose/counts | 178.26 ms | 178.26 ms | -3.0% |
| entity-labels.extreme/compose/settle | 2.2 µs | 3.1 µs | +47.4% |
| entity-labels.extreme/compose/steady | 39.02 ms | 50.58 ms | -10.5% |
| entity-labels.extreme/compose/teardown | 12.00 ms | 16.55 ms | +5.2% |
| entity-labels.extreme/memory/mounted | 12132 KiB | 12132 KiB | -0.1% |
| entity-labels.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels.large/bare/burst | 3.63 ms | 6.31 ms | +54.1% |
| entity-labels.large/bare/cold | 2.69 ms | 5.85 ms | +21.7% |
| entity-labels.large/bare/settle | 1.1 µs | 1.2 µs | +134.1% |
| entity-labels.large/bare/steady | 329.9 µs | 376.9 µs | +34.6% |
| entity-labels.large/bare/teardown | 1.63 ms | 2.49 ms | +32.2% |
| entity-labels.large/compose/burst | 10.89 ms | 14.33 ms | +25.6% |
| entity-labels.large/compose/cold | 9.03 ms | 11.47 ms | +22.3% |
| entity-labels.large/compose/counts | 62.55 ms | 62.55 ms | +41.9% |
| entity-labels.large/compose/settle | 1.2 µs | 2.2 µs | +91.7% |
| entity-labels.large/compose/steady | 11.09 ms | 13.06 ms | +10.9% |
| entity-labels.large/compose/teardown | 3.36 ms | 4.52 ms | +39.2% |
| entity-labels.large/memory/mounted | 6319 KiB | 6319 KiB | +0.0% |
| entity-labels.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels.medium/bare/burst | 1.07 ms | 3.46 ms | +37.7% |
| entity-labels.medium/bare/cold | 1.61 ms | 3.31 ms | +35.1% |
| entity-labels.medium/bare/settle | 1.0 µs | 1.4 µs | +129.2% |
| entity-labels.medium/bare/steady | 145.7 µs | 180.2 µs | +24.5% |
| entity-labels.medium/bare/teardown | 419.3 µs | 812.1 µs | +40.6% |
| entity-labels.medium/compose/burst | 4.31 ms | 5.97 ms | +44.2% |
| entity-labels.medium/compose/cold | 4.07 ms | 6.08 ms | +70.6% |
| entity-labels.medium/compose/counts | 25.21 ms | 25.21 ms | +48.1% |
| entity-labels.medium/compose/settle | 1.2 µs | 1.4 µs | +136.9% |
| entity-labels.medium/compose/steady | 5.62 ms | 7.40 ms | +37.6% |
| entity-labels.medium/compose/teardown | 1.11 ms | 1.48 ms | +53.1% |
| entity-labels.medium/memory/mounted | 2850 KiB | 2850 KiB | +0.0% |
| entity-labels.medium/memory/teardown | 1 KiB | 1 KiB | -88.9% |
| events/bare | 7.51 ms | 12.71 ms | +23.9% |
| events/compose | 9.10 ms | 13.26 ms | +14.5% |
| events/memory/mounted | 20 KiB | 20 KiB | +400.0% |
| events/memory/teardown | 0 KiB | 0 KiB | — |
| inspector.extreme/bare/burst | 1.16 ms | 1.58 ms | +16.7% |
| inspector.extreme/bare/cold | 6.87 ms | 10.68 ms | +63.2% |
| inspector.extreme/bare/settle | 0.9 µs | 1.1 µs | +42.7% |
| inspector.extreme/bare/steady | 61.6 µs | 97.5 µs | +22.0% |
| inspector.extreme/bare/teardown | 4.87 ms | 5.85 ms | +18.7% |
| inspector.extreme/compose/burst | 6.97 ms | 7.62 ms | +24.4% |
| inspector.extreme/compose/cold | 19.20 ms | 30.11 ms | +2.9% |
| inspector.extreme/compose/counts | 34.07 ms | 34.07 ms | +19.6% |
| inspector.extreme/compose/settle | 1.5 µs | 1.7 µs | +6.3% |
| inspector.extreme/compose/steady | 222.4 µs | 248.4 µs | +13.6% |
| inspector.extreme/compose/teardown | 2.19 ms | 3.06 ms | +19.6% |
| inspector.extreme/memory/mounted | 21887 KiB | 21887 KiB | +0.1% |
| inspector.extreme/memory/teardown | 8 KiB | 8 KiB | — |
| inspector.large/bare/burst | 454.9 µs | 499.4 µs | +15.2% |
| inspector.large/bare/cold | 2.10 ms | 5.02 ms | +15.7% |
| inspector.large/bare/settle | 0.5 µs | 5.8 µs | +47.4% |
| inspector.large/bare/steady | 48.6 µs | 70.6 µs | +35.3% |
| inspector.large/bare/teardown | 1.31 ms | 1.94 ms | +22.8% |
| inspector.large/compose/burst | 2.54 ms | 3.51 ms | +6.0% |
| inspector.large/compose/cold | 6.30 ms | 9.30 ms | +31.0% |
| inspector.large/compose/counts | 17.66 ms | 17.66 ms | +27.4% |
| inspector.large/compose/settle | 1.1 µs | 1.5 µs | +160.7% |
| inspector.large/compose/steady | 160.8 µs | 213.5 µs | +26.1% |
| inspector.large/compose/teardown | 819.3 µs | 1.48 ms | +29.3% |
| inspector.large/memory/mounted | 7216 KiB | 7216 KiB | +0.4% |
| inspector.large/memory/teardown | 8 KiB | 8 KiB | — |
| inspector.medium/bare/burst | 190.0 µs | 208.9 µs | -18.6% |
| inspector.medium/bare/cold | 1.11 ms | 2.11 ms | +5.6% |
| inspector.medium/bare/settle | 0.3 µs | 0.5 µs | -22.6% |
| inspector.medium/bare/steady | 45.6 µs | 60.2 µs | -14.6% |
| inspector.medium/bare/teardown | 284.4 µs | 416.2 µs | -14.8% |
| inspector.medium/compose/burst | 1.20 ms | 1.41 ms | -2.1% |
| inspector.medium/compose/cold | 2.05 ms | 3.32 ms | +14.9% |
| inspector.medium/compose/counts | 5.04 ms | 5.04 ms | -10.4% |
| inspector.medium/compose/settle | 0.5 µs | 0.7 µs | -24.2% |
| inspector.medium/compose/steady | 191.8 µs | 208.5 µs | +0.6% |
| inspector.medium/compose/teardown | 305.4 µs | 356.5 µs | -11.1% |
| inspector.medium/memory/mounted | 1901 KiB | 1901 KiB | +1.7% |
| inspector.medium/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-append/bare | 1.42 ms | 1.89 ms | +13.8% |
| keyed-append/compose | 1.89 ms | 2.27 ms | +2.2% |
| keyed-append/memory/mounted | 2209 KiB | 2209 KiB | +0.7% |
| keyed-append/memory/teardown | 9 KiB | 9 KiB | +800.0% |
| keyed-insert/bare | 1.67 ms | 2.09 ms | +12.4% |
| keyed-insert/compose | 3.88 ms | 4.54 ms | +25.2% |
| keyed-insert/memory/mounted | 2242 KiB | 2242 KiB | +1.3% |
| keyed-insert/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| keyed-prepend/bare | 1.72 ms | 2.01 ms | -0.9% |
| keyed-prepend/compose | 5.28 ms | 5.64 ms | -7.5% |
| keyed-prepend/memory/mounted | 2276 KiB | 2276 KiB | +3.4% |
| keyed-prepend/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-remove/bare | 1.50 ms | 2.07 ms | +29.8% |
| keyed-remove/compose | 3.55 ms | 3.80 ms | +23.4% |
| keyed-remove/memory/mounted | 2244 KiB | 2244 KiB | +2.0% |
| keyed-remove/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| keyed-replace/bare | 28.43 ms | 29.32 ms | -8.1% |
| keyed-replace/compose | 56.89 ms | 59.82 ms | -20.4% |
| keyed-replace/memory/mounted | 2220 KiB | 2220 KiB | +0.0% |
| keyed-replace/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-reverse/bare | 1.22 ms | 1.29 ms | -2.3% |
| keyed-reverse/compose | 3.87 ms | 4.02 ms | -5.1% |
| keyed-reverse/memory/mounted | 2288 KiB | 2288 KiB | +3.8% |
| keyed-reverse/memory/teardown | 1 KiB | 1 KiB | -88.9% |
| keyed-rotate/bare | 1.23 ms | 1.32 ms | +0.8% |
| keyed-rotate/compose | 3.94 ms | 4.08 ms | -1.6% |
| keyed-rotate/memory/mounted | 2288 KiB | 2288 KiB | +3.8% |
| keyed-rotate/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| keyed-shuffle/bare | 1.34 ms | 1.37 ms | +0.9% |
| keyed-shuffle/compose | 4.06 ms | 4.30 ms | -1.8% |
| keyed-shuffle/memory/mounted | 2279 KiB | 2279 KiB | +3.4% |
| keyed-shuffle/memory/teardown | 8 KiB | 8 KiB | -11.1% |
| mount-cycles/bare | 15.92 ms | 24.75 ms | -2.3% |
| mount-cycles/compose | 24.88 ms | 26.52 ms | +1.7% |
| mount-cycles/memory/mounted | 4 KiB | 4 KiB | -66.7% |
| mount-cycles/memory/teardown | 0 KiB | 0 KiB | — |
| mount-dispose/bare | 5.49 ms | 8.92 ms | +3.9% |
| mount-dispose/compose | 6.38 ms | 7.41 ms | +8.2% |
| mount-dispose/memory/mounted | 20 KiB | 20 KiB | +400.0% |
| mount-dispose/memory/teardown | 0 KiB | 0 KiB | — |
| ordered-window-scroll/compose | 564.7 µs | 568.8 µs | +1.4% |
| ordered-window-scroll/memory/mounted | 1131 KiB | 1131 KiB | +0.0% |
| ordered-window-scroll/memory/teardown | 0 KiB | 0 KiB | — |
| scene-2d.extreme/bare/burst | 8.66 ms | 14.31 ms | -11.3% |
| scene-2d.extreme/bare/cold | 1.57 ms | 3.68 ms | -0.0% |
| scene-2d.extreme/bare/settle | 1.6 µs | 13.6 µs | -33.7% |
| scene-2d.extreme/bare/steady | 48.56 ms | 56.08 ms | +28.8% |
| scene-2d.extreme/bare/teardown | 582.1 µs | 711.1 µs | -3.9% |
| scene-2d.extreme/compose/burst | 30.68 ms | 42.94 ms | +10.3% |
| scene-2d.extreme/compose/cold | 21.04 ms | 27.53 ms | +42.5% |
| scene-2d.extreme/compose/counts | 236.14 ms | 236.14 ms | +14.0% |
| scene-2d.extreme/compose/settle | 1.9 µs | 15.9 µs | -21.6% |
| scene-2d.extreme/compose/steady | 93.91 ms | 109.11 ms | +19.4% |
| scene-2d.extreme/compose/teardown | 1.39 ms | 1.72 ms | +8.8% |
| scene-2d.extreme/memory/mounted | 13276 KiB | 13276 KiB | -0.0% |
| scene-2d.extreme/memory/teardown | 8 KiB | 8 KiB | -11.1% |
| scene-2d.large/bare/burst | 6.13 ms | 12.89 ms | -16.9% |
| scene-2d.large/bare/cold | 1.06 ms | 3.68 ms | +9.8% |
| scene-2d.large/bare/settle | 1.5 µs | 2.5 µs | +72.9% |
| scene-2d.large/bare/steady | 30.66 ms | 33.39 ms | +10.9% |
| scene-2d.large/bare/teardown | 366.5 µs | 1.07 ms | +6.2% |
| scene-2d.large/compose/burst | 23.99 ms | 32.20 ms | +63.8% |
| scene-2d.large/compose/cold | 5.93 ms | 9.00 ms | +3.2% |
| scene-2d.large/compose/counts | 160.50 ms | 160.50 ms | +36.6% |
| scene-2d.large/compose/settle | 2.1 µs | 2.5 µs | +58.8% |
| scene-2d.large/compose/steady | 68.91 ms | 77.08 ms | +35.3% |
| scene-2d.large/compose/teardown | 942.1 µs | 1.06 ms | +26.4% |
| scene-2d.large/memory/mounted | 4832 KiB | 4832 KiB | +0.2% |
| scene-2d.large/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| scene-2d.medium/bare/burst | 6.09 ms | 7.45 ms | -11.8% |
| scene-2d.medium/bare/cold | 1.25 ms | 2.16 ms | -9.6% |
| scene-2d.medium/bare/settle | 0.8 µs | 1.2 µs | -10.2% |
| scene-2d.medium/bare/steady | 36.22 ms | 38.48 ms | +0.6% |
| scene-2d.medium/bare/teardown | 359.7 µs | 397.2 µs | -14.8% |
| scene-2d.medium/compose/burst | 21.83 ms | 24.04 ms | -11.3% |
| scene-2d.medium/compose/cold | 3.90 ms | 7.13 ms | -28.7% |
| scene-2d.medium/compose/counts | 155.85 ms | 155.85 ms | -8.3% |
| scene-2d.medium/compose/settle | 1.0 µs | 1.5 µs | -21.1% |
| scene-2d.medium/compose/steady | 68.48 ms | 70.22 ms | -3.3% |
| scene-2d.medium/compose/teardown | 827.8 µs | 1.14 ms | -22.4% |
| scene-2d.medium/memory/mounted | 2330 KiB | 2330 KiB | -0.3% |
| scene-2d.medium/memory/teardown | 0 KiB | 0 KiB | — |
| scene-3d/bare | 2.93 ms | 3.66 ms | -8.0% |
| scene-3d/compose | 6.62 ms | 7.92 ms | -10.5% |
| scene-3d/memory/mounted | 1244 KiB | 1244 KiB | +0.0% |
| scene-3d/memory/teardown | 0 KiB | 0 KiB | — |
| session-cycle.extreme/bare/burst | 138.05 ms | 177.38 ms | +64.5% |
| session-cycle.extreme/bare/cold | 4.3 µs | 5.9 µs | +0.3% |
| session-cycle.extreme/bare/settle | 2.8 µs | 3.4 µs | +24.3% |
| session-cycle.extreme/bare/steady | 168.42 ms | 226.74 ms | +10.5% |
| session-cycle.extreme/bare/teardown | 2.8 µs | 3.3 µs | +6.3% |
| session-cycle.extreme/compose/burst | 113.93 ms | 164.27 ms | +10.6% |
| session-cycle.extreme/compose/cold | 4.2 µs | 6.2 µs | -2.6% |
| session-cycle.extreme/compose/counts | 332.56 ms | 332.56 ms | +34.2% |
| session-cycle.extreme/compose/settle | 2.2 µs | 3.1 µs | +11.4% |
| session-cycle.extreme/compose/steady | 193.71 ms | 262.44 ms | +23.3% |
| session-cycle.extreme/compose/teardown | 2.1 µs | 3.3 µs | -11.6% |
| session-cycle.extreme/memory/mounted | 21 KiB | 21 KiB | +425.0% |
| session-cycle.extreme/memory/teardown | 9 KiB | 9 KiB | — |
| session-cycle.large/bare/burst | 52.49 ms | 63.35 ms | +18.3% |
| session-cycle.large/bare/cold | 4.3 µs | 6.5 µs | +26.5% |
| session-cycle.large/bare/settle | 2.3 µs | 2.7 µs | +29.0% |
| session-cycle.large/bare/steady | 58.00 ms | 87.31 ms | +20.7% |
| session-cycle.large/bare/teardown | 2.1 µs | 2.7 µs | +29.9% |
| session-cycle.large/compose/burst | 39.63 ms | 59.21 ms | -21.6% |
| session-cycle.large/compose/cold | 4.2 µs | 8.7 µs | +29.2% |
| session-cycle.large/compose/counts | 117.02 ms | 117.02 ms | -6.8% |
| session-cycle.large/compose/settle | 2.1 µs | 2.3 µs | +42.6% |
| session-cycle.large/compose/steady | 74.55 ms | 90.44 ms | +30.1% |
| session-cycle.large/compose/teardown | 2.5 µs | 3.0 µs | +39.7% |
| session-cycle.large/memory/mounted | 12 KiB | 12 KiB | +0.0% |
| session-cycle.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| session-cycle.medium/bare/burst | 10.71 ms | 17.78 ms | -20.5% |
| session-cycle.medium/bare/cold | 2.6 µs | 3.3 µs | -30.9% |
| session-cycle.medium/bare/settle | 1.0 µs | 1.5 µs | -20.0% |
| session-cycle.medium/bare/steady | 16.60 ms | 23.57 ms | +8.9% |
| session-cycle.medium/bare/teardown | 1.1 µs | 1.6 µs | -5.3% |
| session-cycle.medium/compose/burst | 13.23 ms | 17.08 ms | +1.9% |
| session-cycle.medium/compose/cold | 3.0 µs | 4.1 µs | -21.7% |
| session-cycle.medium/compose/counts | 39.01 ms | 39.01 ms | -11.8% |
| session-cycle.medium/compose/settle | 1.0 µs | 1.7 µs | -23.0% |
| session-cycle.medium/compose/steady | 23.59 ms | 33.26 ms | -10.6% |
| session-cycle.medium/compose/teardown | 1.1 µs | 1.5 µs | -25.5% |
| session-cycle.medium/memory/mounted | 12 KiB | 12 KiB | -95.4% |
| session-cycle.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| spatial-scene.extreme/bare/burst | 49.85 ms | 73.40 ms | -4.1% |
| spatial-scene.extreme/bare/cold | 3.20 ms | 6.61 ms | -12.8% |
| spatial-scene.extreme/bare/settle | 1.6 µs | 2.3 µs | -17.5% |
| spatial-scene.extreme/bare/steady | 73.67 ms | 78.92 ms | -2.0% |
| spatial-scene.extreme/bare/teardown | 1.21 ms | 1.66 ms | -5.7% |
| spatial-scene.extreme/compose/burst | 138.47 ms | 148.58 ms | +1.2% |
| spatial-scene.extreme/compose/cold | 11.79 ms | 23.27 ms | -40.9% |
| spatial-scene.extreme/compose/counts | 287.84 ms | 287.84 ms | -5.5% |
| spatial-scene.extreme/compose/settle | 1.4 µs | 2.3 µs | -27.5% |
| spatial-scene.extreme/compose/steady | 63.81 ms | 78.96 ms | -8.9% |
| spatial-scene.extreme/compose/teardown | 3.47 ms | 4.81 ms | -19.7% |
| spatial-scene.extreme/memory/mounted | 5492 KiB | 5492 KiB | -1.5% |
| spatial-scene.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| spatial-scene.large/bare/burst | 12.36 ms | 15.44 ms | -6.4% |
| spatial-scene.large/bare/cold | 985.6 µs | 2.28 ms | -8.9% |
| spatial-scene.large/bare/settle | 0.8 µs | 2.4 µs | -14.3% |
| spatial-scene.large/bare/steady | 21.60 ms | 23.10 ms | -3.4% |
| spatial-scene.large/bare/teardown | 295.2 µs | 524.4 µs | +2.0% |
| spatial-scene.large/compose/burst | 36.09 ms | 39.76 ms | -7.4% |
| spatial-scene.large/compose/cold | 3.62 ms | 5.69 ms | -2.9% |
| spatial-scene.large/compose/counts | 81.38 ms | 81.38 ms | -3.1% |
| spatial-scene.large/compose/settle | 1.0 µs | 1.7 µs | -25.0% |
| spatial-scene.large/compose/steady | 21.47 ms | 23.01 ms | -2.3% |
| spatial-scene.large/compose/teardown | 803.6 µs | 1.23 ms | -6.0% |
| spatial-scene.large/memory/mounted | 1818 KiB | 1818 KiB | +1.0% |
| spatial-scene.large/memory/teardown | 0 KiB | 0 KiB | — |
| spatial-scene.medium/bare/burst | 3.83 ms | 5.38 ms | -13.1% |
| spatial-scene.medium/bare/cold | 550.1 µs | 1.19 ms | +30.5% |
| spatial-scene.medium/bare/settle | 0.8 µs | 1.2 µs | -8.3% |
| spatial-scene.medium/bare/steady | 8.26 ms | 9.61 ms | +1.4% |
| spatial-scene.medium/bare/teardown | 103.8 µs | 165.8 µs | +6.5% |
| spatial-scene.medium/compose/burst | 12.64 ms | 13.17 ms | -6.5% |
| spatial-scene.medium/compose/cold | 1.22 ms | 2.01 ms | -6.7% |
| spatial-scene.medium/compose/counts | 35.91 ms | 35.91 ms | -7.3% |
| spatial-scene.medium/compose/settle | 0.8 µs | 0.8 µs | -12.5% |
| spatial-scene.medium/compose/steady | 10.78 ms | 12.25 ms | +0.2% |
| spatial-scene.medium/compose/teardown | 289.4 µs | 340.5 µs | -6.0% |
| spatial-scene.medium/memory/mounted | 720 KiB | 720 KiB | +0.8% |
| spatial-scene.medium/memory/teardown | 0 KiB | 0 KiB | — |
| status-panel/bare | 94.7 µs | 139.6 µs | -1.9% |
| status-panel/compose | 625.9 µs | 640.6 µs | -4.1% |
| status-panel/memory/mounted | 56 KiB | 56 KiB | +1.8% |
| status-panel/memory/teardown | 8 KiB | 8 KiB | — |
| unwind/bare | 2.54 ms | 3.11 ms | +6.0% |
| unwind/compose | 3.03 ms | 5.84 ms | +36.7% |
| unwind/memory/mounted | 19 KiB | 19 KiB | +72.7% |
| unwind/memory/teardown | 16 KiB | 16 KiB | — |
| update-batched/bare | 1.03 ms | 1.09 ms | +51.3% |
| update-batched/compose | 3.06 ms | 3.31 ms | +37.0% |
| update-batched/memory/mounted | 1879 KiB | 1879 KiB | +0.4% |
| update-batched/memory/teardown | 8 KiB | 8 KiB | — |
| update-fanout/bare | 1.03 ms | 1.10 ms | +46.2% |
| update-fanout/compose | 1.84 ms | 2.00 ms | +39.5% |
| update-fanout/memory/mounted | 1815 KiB | 1815 KiB | +0.4% |
| update-fanout/memory/teardown | 0 KiB | 0 KiB | — |
| update-leaf/bare | 16.5 µs | 28.1 µs | +5.6% |
| update-leaf/compose | 40.7 µs | 52.3 µs | +1.6% |
| update-leaf/memory/mounted | 2774 KiB | 2774 KiB | +0.3% |
| update-leaf/memory/teardown | 8 KiB | 8 KiB | +0.0% |
| update-repeated/bare | 30.8 µs | 31.5 µs | -17.4% |
| update-repeated/compose | 356.1 µs | 370.4 µs | -2.2% |
| update-repeated/memory/mounted | 36 KiB | 36 KiB | +0.0% |
| update-repeated/memory/teardown | 0 KiB | 0 KiB | — |
| virtual-filtered-list.extreme/bare/burst | 618.87 ms | 666.00 ms | -7.1% |
| virtual-filtered-list.extreme/bare/cold | 394.91 ms | 440.73 ms | -9.5% |
| virtual-filtered-list.extreme/bare/settle | 2.7 µs | 3.0 µs | +27.9% |
| virtual-filtered-list.extreme/bare/steady | 8.02 ms | 15.40 ms | -12.4% |
| virtual-filtered-list.extreme/bare/teardown | 162.3 µs | 254.0 µs | -23.4% |
| virtual-filtered-list.extreme/compose/burst | 709.77 ms | 817.72 ms | +1.6% |
| virtual-filtered-list.extreme/compose/cold | 434.57 ms | 476.47 ms | -1.9% |
| virtual-filtered-list.extreme/compose/counts | 1065.31 ms | 1065.31 ms | -10.5% |
| virtual-filtered-list.extreme/compose/settle | 2.4 µs | 2.8 µs | +30.6% |
| virtual-filtered-list.extreme/compose/steady | 12.85 ms | 22.56 ms | -6.0% |
| virtual-filtered-list.extreme/compose/teardown | 467.2 µs | 542.2 µs | -12.5% |
| virtual-filtered-list.extreme/memory/mounted | 31836 KiB | 31836 KiB | +0.0% |
| virtual-filtered-list.extreme/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| virtual-filtered-list.large/bare/burst | 72.28 ms | 74.99 ms | +9.3% |
| virtual-filtered-list.large/bare/cold | 46.58 ms | 52.45 ms | +14.9% |
| virtual-filtered-list.large/bare/settle | 2.4 µs | 3.1 µs | +44.3% |
| virtual-filtered-list.large/bare/steady | 5.44 ms | 7.09 ms | +20.1% |
| virtual-filtered-list.large/bare/teardown | 99.7 µs | 122.0 µs | +52.0% |
| virtual-filtered-list.large/compose/burst | 94.25 ms | 99.24 ms | +32.7% |
| virtual-filtered-list.large/compose/cold | 55.83 ms | 59.87 ms | +27.4% |
| virtual-filtered-list.large/compose/counts | 159.71 ms | 159.71 ms | +20.2% |
| virtual-filtered-list.large/compose/settle | 2.1 µs | 2.9 µs | +100.8% |
| virtual-filtered-list.large/compose/steady | 11.07 ms | 15.26 ms | +42.5% |
| virtual-filtered-list.large/compose/teardown | 238.9 µs | 384.8 µs | +34.9% |
| virtual-filtered-list.large/memory/mounted | 6982 KiB | 6982 KiB | +0.0% |
| virtual-filtered-list.large/memory/teardown | 0 KiB | 0 KiB | — |
| virtual-filtered-list.medium/bare/burst | 13.46 ms | 15.40 ms | +21.1% |
| virtual-filtered-list.medium/bare/cold | 8.00 ms | 8.90 ms | +21.3% |
| virtual-filtered-list.medium/bare/settle | 1.3 µs | 1.5 µs | +120.1% |
| virtual-filtered-list.medium/bare/steady | 4.39 ms | 6.85 ms | +36.9% |
| virtual-filtered-list.medium/bare/teardown | 45.2 µs | 156.2 µs | +19.7% |
| virtual-filtered-list.medium/compose/burst | 15.36 ms | 18.99 ms | +7.1% |
| virtual-filtered-list.medium/compose/cold | 7.98 ms | 8.81 ms | +14.3% |
| virtual-filtered-list.medium/compose/counts | 44.86 ms | 44.86 ms | +42.4% |
| virtual-filtered-list.medium/compose/settle | 1.1 µs | 1.4 µs | +62.0% |
| virtual-filtered-list.medium/compose/steady | 8.93 ms | 11.26 ms | +40.9% |
| virtual-filtered-list.medium/compose/teardown | 130.1 µs | 236.6 µs | +16.0% |
| virtual-filtered-list.medium/memory/mounted | 1689 KiB | 1689 KiB | +0.5% |
| virtual-filtered-list.medium/memory/teardown | 1 KiB | 1 KiB | — |

## Trends over the last 5 main commits

```mermaid
xychart-beta
    title "animate-many/compose (median µs)"
    x-axis 1 --> 5
    line [9621.1, 4735.8, 9612.0, 7315.2, 9298.7]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [12461.7, 6898.2, 13915.6, 9639.3, 10905.1]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [16620.2, 11340.5, 15315.5, 12396.6, 13713.1]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [110129.9, 64349.2, 116391.7, 98569.9, 102876.7]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.2, 1.4, 1.4, 1.1, 1.1]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [46868.1, 25388.1, 44800.9, 36175.8, 41986.1]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [6005.0, 4705.5, 6853.0, 6189.7, 6219.9]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [5466.6, 3087.8, 5962.6, 4686.8, 5103.1]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [7156.2, 4813.3, 6183.5, 5849.2, 6189.4]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [76248.8, 48338.1, 78084.1, 68688.7, 75988.3]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [0.9, 1.2, 1.4, 1.2, 0.8]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [35460.5, 19037.5, 35808.1, 28678.7, 32946.1]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1975.4, 1851.1, 2399.1, 2304.8, 2075.6]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [1463.5, 1805.0, 1407.7, 1828.7, 1713.2]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [2013.4, 1659.3, 1575.4, 1806.3, 1454.3]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [22746.0, 29658.4, 24261.2, 29711.8, 27538.5]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [0.5, 0.5, 0.6, 0.6, 0.5]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [11237.2, 14637.0, 10651.3, 14357.3, 13461.9]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [356.0, 417.8, 496.0, 505.8, 421.2]
```

```mermaid
xychart-beta
    title "branch-swap/compose (median µs)"
    x-axis 1 --> 5
    line [4113.6, 4729.3, 3561.0, 2524.1, 2610.3]
```

```mermaid
xychart-beta
    title "cold-mount-100/compose (median µs)"
    x-axis 1 --> 5
    line [686.8, 560.2, 838.1, 567.4, 589.5]
```

```mermaid
xychart-beta
    title "cold-mount-1000/compose (median µs)"
    x-axis 1 --> 5
    line [8399.3, 4719.3, 3773.5, 7121.6, 6041.0]
```

```mermaid
xychart-beta
    title "cold-mount-10000/compose (median µs)"
    x-axis 1 --> 5
    line [74882.4, 77308.0, 75289.0, 90310.2, 100985.1]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [917195.8, 848359.9, 869706.9, 657651.2, 855176.6]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [564671.1, 532198.1, 527821.7, 398200.7, 504535.6]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [1731762.7, 1413521.5, 1498282.4, 1110786.6, 1445044.7]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.1, 2.1, 1.9, 2.3, 2.1]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [27880.3, 26608.5, 24816.6, 19150.7, 24207.3]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1360.6, 1265.7, 1291.4, 1110.8, 1495.5]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [108370.1, 137573.0, 114009.5, 133242.0, 132707.0]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [60694.5, 76941.3, 63120.6, 77459.9, 77741.8]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [187980.4, 244856.9, 207644.2, 241741.6, 244790.8]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.5, 1.6, 2.4, 1.8, 1.5]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [14957.3, 18099.0, 16104.9, 16959.8, 15977.4]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [469.9, 567.8, 474.6, 573.2, 553.4]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [69739.0, 35886.9, 46673.5, 57857.6, 48420.1]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [39856.7, 21102.5, 25793.1, 34471.6, 28818.4]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [141793.3, 71603.8, 99581.8, 122381.7, 107874.3]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.3, 1.0, 1.8, 1.5, 2.2]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [20754.9, 8162.0, 12334.8, 12381.3, 12840.2]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [356.8, 187.9, 248.2, 292.5, 260.1]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [20153.1, 12231.0, 11532.2, 14838.7, 15355.1]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [606.7, 398.8, 383.4, 479.8, 502.1]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [23438.8, 13693.1, 17691.5, 22404.5, 21786.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.3, 0.9, 1.2, 1.1, 1.4]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [863.1, 432.7, 533.0, 686.6, 708.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [599.1, 388.0, 393.2, 539.8, 566.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [9706.7, 4188.0, 5056.8, 5928.3, 7819.4]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [371.6, 211.1, 249.9, 272.8, 305.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [16409.6, 9670.9, 14102.2, 13629.3, 13693.5]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.0, 0.6, 1.2, 0.9, 1.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [865.5, 435.0, 514.3, 679.4, 690.4]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [297.0, 159.4, 204.5, 229.9, 234.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [3256.9, 3747.3, 2886.3, 1441.8, 1725.1]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [214.4, 274.0, 218.8, 100.9, 158.5]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [6736.4, 8374.2, 5949.6, 3187.1, 3588.3]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [0.8, 1.3, 0.7, 0.4, 0.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [823.5, 817.9, 816.4, 407.5, 448.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [120.9, 153.9, 121.5, 62.5, 79.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [57275.1, 58550.6, 48500.0, 29373.5, 40666.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [35128.8, 48787.2, 29239.1, 17390.4, 22368.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [203645.1, 278041.5, 232881.6, 153922.4, 182354.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.7, 2.7, 2.1, 1.3, 2.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [67605.4, 110490.0, 62006.6, 30428.1, 51252.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1382.9, 1964.2, 1144.8, 694.6, 900.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [22661.4, 12171.9, 13759.9, 13609.3, 14702.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [16026.8, 10773.1, 8930.7, 10020.5, 8909.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [80942.4, 39356.0, 64825.7, 63038.7, 65034.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.9, 1.8, 1.6, 1.3, 1.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [29699.1, 13169.4, 18127.8, 19237.6, 16977.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [555.6, 288.1, 337.4, 360.3, 368.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [8775.5, 6489.2, 8202.0, 6319.3, 6445.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [6847.6, 4064.4, 5318.6, 5299.9, 5743.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [33013.6, 23547.5, 40497.8, 27670.3, 31664.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.1, 1.6, 2.1, 1.6, 0.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [10632.2, 6021.8, 10678.6, 8206.7, 8958.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [231.8, 181.7, 264.1, 212.7, 181.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [38163.8, 45513.9, 41164.8, 46703.8, 44520.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [30010.2, 36978.8, 29991.4, 41393.0, 32387.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [308853.3, 356183.6, 347691.5, 358267.1, 320929.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.9, 1.8, 2.1, 2.0, 1.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [170674.3, 195161.2, 168550.7, 182630.3, 163543.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1011.2, 1123.7, 1080.1, 1376.9, 1058.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [20445.0, 22651.5, 14964.2, 12211.5, 11912.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [12195.2, 16233.7, 12335.9, 7185.3, 8832.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [116758.9, 159716.3, 121699.6, 72346.5, 90059.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.7, 2.6, 1.9, 1.3, 1.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [65487.9, 100478.1, 59706.0, 34308.7, 51437.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [465.8, 729.5, 440.9, 295.7, 317.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [7359.9, 9363.4, 7988.6, 9747.3, 9365.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [5217.5, 8076.9, 4571.3, 5260.1, 4670.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [53771.4, 72919.2, 57149.8, 65876.4, 59908.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.0, 1.3, 1.6, 1.3, 1.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [24173.9, 29083.3, 23959.0, 26680.3, 24724.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [206.6, 265.4, 235.4, 253.6, 224.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [67899.9, 40475.8, 49011.8, 47993.9, 58958.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [43440.3, 23189.6, 21354.5, 24947.4, 23666.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [322090.0, 155075.8, 263232.8, 241537.1, 281124.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.2, 2.0, 2.2, 1.5, 2.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [168290.2, 78037.0, 94632.2, 97962.6, 108987.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1918.2, 1082.7, 1099.8, 1219.6, 1413.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [15198.1, 12817.1, 17384.4, 12828.2, 14670.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [14413.0, 10025.1, 12412.5, 10919.1, 9991.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [94808.6, 66047.0, 131198.0, 102800.1, 106962.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.7, 2.1, 2.3, 1.7, 1.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [42870.9, 30465.6, 44952.7, 30109.8, 34357.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [421.7, 347.3, 504.6, 355.7, 394.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [9268.9, 6214.3, 6318.0, 7594.1, 7048.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [6175.2, 5202.2, 4209.2, 4766.1, 4414.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [48430.6, 24546.5, 34883.2, 42248.6, 35027.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.8, 1.7, 1.3, 1.0, 1.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [18970.0, 11144.9, 13984.1, 14562.6, 12821.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [266.7, 172.8, 182.1, 197.6, 194.9]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [21280.1, 17085.4, 25262.9, 28283.5, 20257.0]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [107928.0, 93149.3, 109143.0, 107346.8, 112756.0]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [345877.0, 271171.1, 372031.9, 371349.9, 343525.6]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.8, 2.2, 2.2, 2.2, 1.9]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [112062.9, 90774.1, 117256.3, 106657.1, 98348.3]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [33241.4, 38551.9, 37604.0, 45565.4, 37162.6]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [8720.8, 10514.8, 8702.4, 10287.4, 10136.5]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [35331.9, 46561.1, 36425.1, 45716.0, 39872.5]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [127887.2, 165417.5, 156094.5, 170891.3, 159918.6]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.4, 1.6, 2.0, 1.5, 1.1]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [42270.1, 58987.0, 46845.8, 49441.4, 48906.3]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [9384.4, 11676.7, 12636.7, 11453.4, 9676.2]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [8064.7, 5412.3, 8325.1, 7310.8, 7725.2]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [23640.0, 18354.3, 20523.4, 16963.3, 24114.6]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [92316.8, 67519.0, 107959.8, 94567.5, 113174.7]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.6, 2.1, 2.2, 1.7, 1.5]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [39845.5, 29943.1, 47449.4, 35007.7, 37155.4]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [6105.6, 6486.4, 6913.2, 7758.7, 5425.1]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [95057.1, 94073.3, 97254.7, 96247.4, 87014.9]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [30591.9, 22227.2, 28424.7, 29174.1, 36070.7]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [228810.1, 211002.3, 277035.4, 262243.7, 240299.8]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.0, 2.8, 2.9, 2.6, 2.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [56507.4, 52162.7, 59312.8, 52039.1, 53658.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [13113.8, 13417.0, 14500.7, 15465.3, 13655.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [27403.3, 40547.2, 27643.0, 16736.6, 24669.8]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [11952.4, 12445.2, 13843.1, 7413.0, 8312.1]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [100423.7, 101703.7, 92984.2, 61791.0, 76047.1]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.5, 2.3, 2.0, 1.3, 1.4]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [19345.5, 23966.2, 20176.3, 10165.4, 13367.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [2906.6, 4134.8, 3277.4, 2382.9, 2631.1]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [13879.1, 10176.6, 13944.0, 11937.1, 11307.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [6104.0, 4520.5, 5933.8, 6295.2, 6588.9]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [39918.2, 26024.7, 45495.9, 38988.2, 39254.8]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.3, 1.8, 2.2, 1.9, 1.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [8588.8, 6714.5, 10581.6, 7636.9, 7928.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1136.6, 1234.8, 1482.3, 1376.9, 1147.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [139551.2, 143863.6, 147758.9, 149769.7, 128240.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [37476.4, 26814.0, 37931.2, 27280.6, 33457.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [453942.0, 363604.4, 495520.1, 408039.1, 458887.5]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.0, 2.9, 2.8, 2.4, 2.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [149428.6, 140862.0, 167028.5, 121048.4, 129724.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [13492.1, 13806.8, 15285.8, 15385.2, 13545.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [64372.4, 33315.0, 43296.5, 43553.3, 35754.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [12505.9, 8058.4, 8874.3, 10385.9, 10093.6]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [187160.4, 84451.7, 121670.1, 137514.1, 119307.2]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.3, 1.9, 2.4, 1.6, 2.2]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [56628.5, 29545.4, 39104.4, 46006.1, 40089.7]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [3915.7, 2636.1, 3097.4, 3094.1, 3740.5]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [20435.0, 27247.9, 20502.7, 11766.6, 17019.7]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [6221.8, 7648.4, 5806.6, 3251.3, 4242.8]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [79311.3, 99350.5, 73925.1, 39521.4, 64266.7]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.2, 2.3, 1.9, 0.9, 1.5]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [21056.0, 29692.1, 21901.2, 11598.6, 16084.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1121.8, 1664.5, 1361.2, 805.1, 1141.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [55182.4, 21144.1, 30740.0, 30157.3, 32728.7]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [32818.0, 17437.9, 19443.1, 21501.3, 23241.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [135325.6, 59311.0, 95734.4, 87969.1, 101861.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.6, 1.7, 2.1, 1.5, 1.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [5921.1, 2635.6, 4056.5, 3954.9, 4210.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [15688.5, 7760.4, 10927.2, 10437.8, 11785.0]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [17004.7, 10266.2, 12968.2, 14944.3, 13156.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [14612.0, 9463.4, 9673.3, 10162.5, 10425.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [56031.2, 30721.5, 40692.9, 42414.6, 39516.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.0, 1.2, 1.6, 1.4, 1.4]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [2403.1, 1405.3, 2440.9, 2190.5, 1904.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [4514.6, 2934.8, 3895.1, 3908.4, 3767.0]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [6844.5, 9109.6, 5969.2, 3082.2, 3646.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [6071.8, 5752.8, 4648.3, 2237.8, 3552.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [24575.3, 28494.2, 23587.6, 12562.2, 18385.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [0.9, 2.3, 0.9, 0.5, 1.0]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [968.2, 1678.2, 1013.9, 512.7, 665.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1286.2, 1937.9, 1228.0, 691.1, 924.8]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [53690.8, 21373.5, 33150.6, 31009.3, 34242.4]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [42536.2, 18791.7, 19043.0, 26424.6, 22746.0]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [210738.5, 102006.1, 145730.7, 183814.2, 178258.1]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.5, 1.5, 1.8, 1.5, 2.2]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [52614.8, 24846.6, 30404.9, 43592.1, 39017.9]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [16453.7, 7976.6, 10670.0, 11402.2, 12000.1]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [19159.2, 27915.4, 15705.5, 8668.6, 10885.5]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [18682.7, 20066.2, 13238.4, 7382.9, 9032.9]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [91912.5, 114130.0, 97208.5, 44084.1, 62545.8]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.2, 2.6, 1.6, 0.7, 1.2]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [22658.3, 28149.5, 23067.9, 10007.7, 11093.8]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [4112.4, 6443.5, 4511.9, 2413.7, 3359.3]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [6413.9, 7923.0, 6655.7, 2987.1, 4307.0]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [7035.0, 7218.0, 4634.0, 2388.0, 4074.6]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [34527.2, 41760.6, 39554.7, 17018.3, 25208.3]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [0.9, 2.2, 1.4, 0.5, 1.2]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [9633.0, 11476.3, 10002.5, 4084.2, 5621.1]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1339.3, 2013.9, 1522.0, 723.0, 1106.6]
```

```mermaid
xychart-beta
    title "events/compose (median µs)"
    x-axis 1 --> 5
    line [12824.2, 16203.6, 12880.5, 7949.6, 9101.6]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [10283.2, 16184.3, 10218.7, 5604.9, 6973.3]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [26249.5, 32777.8, 23939.4, 18653.8, 19197.1]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [42785.5, 50581.3, 44294.9, 28478.2, 34069.7]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.2, 2.7, 1.8, 1.4, 1.5]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [264.2, 375.4, 304.4, 195.7, 222.4]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [2274.0, 4160.9, 2610.4, 1830.1, 2189.4]
```

```mermaid
xychart-beta
    title "inspector.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [5172.9, 5523.4, 4834.6, 2399.5, 2543.4]
```

```mermaid
xychart-beta
    title "inspector.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [10732.1, 10546.3, 9019.8, 4807.1, 6297.0]
```

```mermaid
xychart-beta
    title "inspector.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [22551.8, 25059.8, 22413.4, 13855.0, 17657.9]
```

```mermaid
xychart-beta
    title "inspector.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [0.8, 2.1, 1.0, 0.4, 1.1]
```

```mermaid
xychart-beta
    title "inspector.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [256.4, 347.2, 245.5, 127.5, 160.8]
```

```mermaid
xychart-beta
    title "inspector.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1173.0, 1562.2, 1034.1, 633.8, 819.3]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [1730.1, 812.1, 949.5, 1228.1, 1202.6]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [2916.5, 2007.5, 1674.3, 1787.9, 2053.5]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [6271.7, 3825.7, 3465.4, 5629.4, 5044.4]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [0.6, 0.4, 0.6, 0.6, 0.5]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [220.2, 113.5, 160.3, 190.7, 191.8]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [363.0, 214.0, 235.1, 343.4, 305.4]
```

```mermaid
xychart-beta
    title "keyed-append/compose (median µs)"
    x-axis 1 --> 5
    line [2241.5, 1230.1, 2017.3, 1849.1, 1890.5]
```

```mermaid
xychart-beta
    title "keyed-insert/compose (median µs)"
    x-axis 1 --> 5
    line [3904.0, 2135.2, 3946.0, 3101.5, 3884.0]
```

```mermaid
xychart-beta
    title "keyed-prepend/compose (median µs)"
    x-axis 1 --> 5
    line [4631.9, 5670.2, 4810.1, 5713.6, 5284.0]
```

```mermaid
xychart-beta
    title "keyed-remove/compose (median µs)"
    x-axis 1 --> 5
    line [3754.0, 2340.4, 3841.8, 2875.3, 3547.1]
```

```mermaid
xychart-beta
    title "keyed-replace/compose (median µs)"
    x-axis 1 --> 5
    line [52486.3, 65204.8, 53183.6, 71503.5, 56891.2]
```

```mermaid
xychart-beta
    title "keyed-reverse/compose (median µs)"
    x-axis 1 --> 5
    line [3454.2, 4152.3, 3170.7, 4076.7, 3867.3]
```

```mermaid
xychart-beta
    title "keyed-rotate/compose (median µs)"
    x-axis 1 --> 5
    line [3675.5, 4205.0, 3245.0, 4008.5, 3943.0]
```

```mermaid
xychart-beta
    title "keyed-shuffle/compose (median µs)"
    x-axis 1 --> 5
    line [3509.2, 4344.0, 3309.9, 4133.7, 4059.5]
```

```mermaid
xychart-beta
    title "mount-cycles/compose (median µs)"
    x-axis 1 --> 5
    line [22487.2, 16290.9, 25389.8, 24470.6, 24881.5]
```

```mermaid
xychart-beta
    title "mount-dispose/compose (median µs)"
    x-axis 1 --> 5
    line [8156.2, 11089.1, 7309.6, 5895.6, 6379.9]
```

```mermaid
xychart-beta
    title "ordered-window-scroll/compose (median µs)"
    x-axis 1 --> 5
    line [476.6, 541.8, 471.3, 556.9, 564.7]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [30003.3, 30104.3, 33381.7, 27820.2, 30682.4]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [21590.6, 18636.7, 17711.5, 14764.4, 21038.9]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [222074.4, 182929.5, 238390.1, 207079.0, 236140.7]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.0, 3.0, 2.5, 2.4, 1.9]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [101466.1, 63734.7, 97238.3, 78657.6, 93914.1]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1168.5, 1282.5, 1345.4, 1276.1, 1387.9]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [30042.0, 37026.2, 26826.4, 14648.1, 23991.6]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [9782.2, 11285.3, 8011.4, 5744.9, 5928.1]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [203516.4, 232335.1, 211377.1, 117511.9, 160501.4]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.6, 2.4, 1.7, 1.3, 2.1]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [102067.8, 113887.3, 93404.2, 50940.6, 68914.9]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1105.1, 1578.5, 1068.9, 745.5, 942.1]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [18821.8, 22931.8, 19566.8, 24613.0, 21830.9]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [5108.5, 6142.9, 3823.9, 5466.1, 3897.6]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [126713.0, 160716.4, 148021.9, 170011.4, 155845.4]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.2, 1.5, 2.2, 1.3, 1.0]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [59494.9, 76366.9, 54077.8, 70846.0, 68475.1]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [772.6, 884.1, 896.1, 1066.5, 827.8]
```

```mermaid
xychart-beta
    title "scene-3d/compose (median µs)"
    x-axis 1 --> 5
    line [10372.3, 5793.5, 5440.4, 7389.5, 6615.1]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [127130.6, 167018.1, 115393.0, 103046.5, 113930.3]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [4.2, 4.6, 4.2, 4.3, 4.2]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [296908.1, 344119.5, 308098.2, 247736.6, 332555.4]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.2, 2.3, 1.9, 2.0, 2.2]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [160845.4, 196666.1, 197076.8, 157127.6, 193707.5]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [2.2, 2.6, 2.2, 2.4, 2.1]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [57003.0, 42123.0, 46878.9, 50522.5, 39632.6]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [4.4, 3.1, 3.5, 3.2, 4.2]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [128750.1, 75810.9, 99563.4, 125498.0, 117015.6]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.2, 1.6, 1.6, 1.4, 2.1]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [69667.1, 42712.5, 61818.0, 57307.8, 74551.5]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [2.2, 1.7, 2.0, 1.8, 2.5]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [14058.5, 13643.4, 14167.1, 12992.3, 13234.1]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [3.3, 3.2, 3.5, 3.8, 3.0]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [28155.4, 34778.7, 33666.4, 44220.3, 39011.1]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.1, 1.2, 1.8, 1.4, 1.0]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [16033.0, 21649.1, 18367.5, 26384.9, 23587.7]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [1.4, 1.7, 1.8, 1.5, 1.1]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [122493.7, 149820.6, 129214.0, 136849.7, 138470.2]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [9688.2, 11822.6, 13879.1, 19936.9, 11791.9]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [218379.0, 269117.3, 254745.5, 304720.4, 287843.2]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.8, 2.0, 2.4, 2.0, 1.4]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [53873.0, 66474.9, 52024.6, 70068.5, 63812.5]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [3328.9, 4158.0, 4512.2, 4315.9, 3466.7]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [30042.5, 39771.4, 33445.5, 38984.4, 36092.3]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [2800.4, 3543.0, 3829.8, 3724.9, 3617.4]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [58121.2, 76076.5, 68807.2, 84007.9, 81376.6]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.0, 1.2, 2.3, 1.3, 1.0]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [15596.8, 21949.3, 16415.8, 21967.6, 21470.8]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [739.4, 972.7, 805.0, 855.2, 803.6]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [10440.0, 15557.2, 11457.1, 13518.7, 12640.5]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [925.2, 1427.4, 1127.5, 1311.3, 1223.2]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [27492.1, 38434.8, 28600.2, 38760.3, 35914.7]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [0.8, 1.2, 1.4, 0.9, 0.8]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [7535.1, 11593.9, 7440.0, 10757.9, 10783.6]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [209.5, 316.8, 257.4, 307.7, 289.4]
```

```mermaid
xychart-beta
    title "status-panel/compose (median µs)"
    x-axis 1 --> 5
    line [468.9, 653.2, 449.9, 652.9, 625.9]
```

```mermaid
xychart-beta
    title "unwind/compose (median µs)"
    x-axis 1 --> 5
    line [4377.9, 5909.9, 4681.9, 2220.6, 3034.6]
```

```mermaid
xychart-beta
    title "update-batched/compose (median µs)"
    x-axis 1 --> 5
    line [3498.0, 1720.7, 3034.6, 2232.9, 3059.4]
```

```mermaid
xychart-beta
    title "update-fanout/compose (median µs)"
    x-axis 1 --> 5
    line [2181.8, 955.8, 1823.1, 1315.3, 1835.1]
```

```mermaid
xychart-beta
    title "update-leaf/compose (median µs)"
    x-axis 1 --> 5
    line [36.3, 43.0, 35.9, 40.1, 40.7]
```

```mermaid
xychart-beta
    title "update-repeated/compose (median µs)"
    x-axis 1 --> 5
    line [393.2, 210.7, 261.5, 364.0, 356.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/burst (median µs)"
    x-axis 1 --> 5
    line [874021.2, 673319.5, 659995.0, 698672.7, 709767.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/cold (median µs)"
    x-axis 1 --> 5
    line [548551.6, 399701.0, 402562.3, 443175.1, 434568.7]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/counts (median µs)"
    x-axis 1 --> 5
    line [1518062.6, 1045366.1, 1078431.5, 1190165.4, 1065313.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/settle (median µs)"
    x-axis 1 --> 5
    line [2.2, 2.7, 2.7, 1.8, 2.4]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/steady (median µs)"
    x-axis 1 --> 5
    line [21817.1, 12911.6, 13726.7, 13668.5, 12849.3]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [597.3, 596.2, 570.2, 533.8, 467.2]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/burst (median µs)"
    x-axis 1 --> 5
    line [129597.0, 152881.9, 130628.4, 71007.0, 94251.3]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/cold (median µs)"
    x-axis 1 --> 5
    line [77495.7, 86845.4, 78386.1, 43806.1, 55829.2]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/counts (median µs)"
    x-axis 1 --> 5
    line [233844.8, 292742.7, 237449.0, 132886.2, 159710.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.8, 2.5, 2.0, 1.0, 2.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/steady (median µs)"
    x-axis 1 --> 5
    line [16797.9, 18068.3, 13820.3, 7769.8, 11069.5]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [394.3, 415.6, 316.6, 177.0, 238.9]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/burst (median µs)"
    x-axis 1 --> 5
    line [26466.6, 30431.0, 24749.7, 14336.6, 15360.9]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/cold (median µs)"
    x-axis 1 --> 5
    line [13006.1, 14270.7, 12615.2, 6978.4, 7976.4]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/counts (median µs)"
    x-axis 1 --> 5
    line [59589.6, 61649.5, 60488.9, 31514.3, 44861.3]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/settle (median µs)"
    x-axis 1 --> 5
    line [1.3, 2.0, 1.7, 0.7, 1.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/steady (median µs)"
    x-axis 1 --> 5
    line [13755.1, 15839.6, 11775.6, 6339.4, 8929.5]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/teardown (median µs)"
    x-axis 1 --> 5
    line [209.7, 348.6, 197.9, 112.1, 130.1]
```

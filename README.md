# Compose performance

Latest: `885b11f52972c9153bd40bb6b7b64ef7a264a7ee` on 2026-10-26T091643Z, measured on the CI Ubuntu runner by the paired performance shards.
Each value is the median of the candidate arm's samples; p95 is shown beside it. Change compares the previous main commit.

| Benchmark | Median | p95 | Change |
| --- | --- | --- | --- |
| animate-many/bare | 1.65 ms | 1.73 ms | +65.9% |
| animate-many/compose | 9.61 ms | 9.92 ms | +103.0% |
| animate-many/memory/mounted | 2208 KiB | 2208 KiB | -8.3% |
| animate-many/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.extreme/bare/burst | 1.44 ms | 1.51 ms | +87.3% |
| animated-navigation.extreme/bare/cold | 4.81 ms | 8.79 ms | +29.4% |
| animated-navigation.extreme/bare/settle | 1.3 µs | 2.1 µs | -7.1% |
| animated-navigation.extreme/bare/steady | 19.24 ms | 19.83 ms | +95.9% |
| animated-navigation.extreme/bare/teardown | 3.77 ms | 4.42 ms | +22.7% |
| animated-navigation.extreme/compose/burst | 13.92 ms | 14.33 ms | +101.7% |
| animated-navigation.extreme/compose/cold | 15.32 ms | 18.59 ms | +35.1% |
| animated-navigation.extreme/compose/counts | 116.39 ms | 116.39 ms | +80.9% |
| animated-navigation.extreme/compose/settle | 1.4 µs | 1.9 µs | +0.1% |
| animated-navigation.extreme/compose/steady | 44.80 ms | 45.72 ms | +76.5% |
| animated-navigation.extreme/compose/teardown | 6.85 ms | 7.07 ms | +45.6% |
| animated-navigation.extreme/memory/mounted | 6956 KiB | 6956 KiB | -8.3% |
| animated-navigation.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.large/bare/burst | 703.0 µs | 759.2 µs | +94.4% |
| animated-navigation.large/bare/cold | 1.59 ms | 4.60 ms | +28.4% |
| animated-navigation.large/bare/settle | 1.0 µs | 1.5 µs | +35.3% |
| animated-navigation.large/bare/steady | 9.11 ms | 9.24 ms | +89.9% |
| animated-navigation.large/bare/teardown | 1.27 ms | 1.44 ms | +21.2% |
| animated-navigation.large/compose/burst | 5.96 ms | 6.47 ms | +93.1% |
| animated-navigation.large/compose/cold | 6.18 ms | 9.15 ms | +28.5% |
| animated-navigation.large/compose/counts | 78.08 ms | 78.08 ms | +61.5% |
| animated-navigation.large/compose/settle | 1.4 µs | 2.3 µs | +18.7% |
| animated-navigation.large/compose/steady | 35.81 ms | 36.45 ms | +88.1% |
| animated-navigation.large/compose/teardown | 2.40 ms | 2.88 ms | +29.6% |
| animated-navigation.large/memory/mounted | 3496 KiB | 3496 KiB | -8.3% |
| animated-navigation.large/memory/teardown | 1 KiB | 1 KiB | — |
| animated-navigation.medium/bare/burst | 168.9 µs | 188.4 µs | -18.5% |
| animated-navigation.medium/bare/cold | 405.5 µs | 1.64 ms | -8.8% |
| animated-navigation.medium/bare/settle | 0.3 µs | 0.7 µs | -21.4% |
| animated-navigation.medium/bare/steady | 2.16 ms | 2.19 ms | -17.3% |
| animated-navigation.medium/bare/teardown | 166.3 µs | 207.6 µs | -6.5% |
| animated-navigation.medium/compose/burst | 1.41 ms | 1.89 ms | -22.0% |
| animated-navigation.medium/compose/cold | 1.58 ms | 3.12 ms | -5.1% |
| animated-navigation.medium/compose/counts | 24.26 ms | 24.26 ms | -18.2% |
| animated-navigation.medium/compose/settle | 0.6 µs | 1.0 µs | +18.5% |
| animated-navigation.medium/compose/steady | 10.65 ms | 10.96 ms | -27.2% |
| animated-navigation.medium/compose/teardown | 496.0 µs | 955.9 µs | +18.7% |
| animated-navigation.medium/memory/mounted | 1187 KiB | 1187 KiB | -8.2% |
| animated-navigation.medium/memory/teardown | 1 KiB | 1 KiB | — |
| branch-swap/bare | 2.95 ms | 4.10 ms | -1.0% |
| branch-swap/compose | 3.56 ms | 5.28 ms | -24.7% |
| branch-swap/memory/mounted | 36 KiB | 36 KiB | +24.1% |
| branch-swap/memory/teardown | 1 KiB | 1 KiB | — |
| cold-mount-100/bare | 486.3 µs | 933.4 µs | +93.4% |
| cold-mount-100/compose | 838.1 µs | 1.06 ms | +49.6% |
| cold-mount-100/memory/mounted | 1902 KiB | 1902 KiB | -2.8% |
| cold-mount-100/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| cold-mount-1000/bare | 2.86 ms | 5.71 ms | -8.0% |
| cold-mount-1000/compose | 3.77 ms | 8.42 ms | -20.0% |
| cold-mount-1000/memory/mounted | 18540 KiB | 18540 KiB | -2.9% |
| cold-mount-1000/memory/teardown | 9 KiB | 9 KiB | — |
| cold-mount-10000/bare | 67.94 ms | 72.24 ms | +17.7% |
| cold-mount-10000/compose | 75.29 ms | 124.65 ms | -2.6% |
| cold-mount-10000/memory/mounted | 186200 KiB | 186200 KiB | -2.5% |
| cold-mount-10000/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| data-grid.extreme/bare/burst | 758.45 ms | 791.25 ms | +0.3% |
| data-grid.extreme/bare/cold | 480.83 ms | 526.12 ms | -0.5% |
| data-grid.extreme/bare/settle | 2.6 µs | 3.1 µs | +5.3% |
| data-grid.extreme/bare/steady | 19.70 ms | 24.43 ms | +8.1% |
| data-grid.extreme/bare/teardown | 434.5 µs | 730.9 µs | -5.9% |
| data-grid.extreme/compose/burst | 869.71 ms | 933.16 ms | +2.5% |
| data-grid.extreme/compose/cold | 527.82 ms | 552.49 ms | -0.8% |
| data-grid.extreme/compose/counts | 1498.28 ms | 1498.28 ms | +6.0% |
| data-grid.extreme/compose/settle | 1.9 µs | 2.1 µs | -9.3% |
| data-grid.extreme/compose/steady | 24.82 ms | 31.21 ms | -6.7% |
| data-grid.extreme/compose/teardown | 1.29 ms | 1.53 ms | +2.0% |
| data-grid.extreme/memory/mounted | 32922 KiB | 32922 KiB | -2.4% |
| data-grid.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| data-grid.large/bare/burst | 94.53 ms | 97.80 ms | -16.3% |
| data-grid.large/bare/cold | 58.81 ms | 61.63 ms | -19.3% |
| data-grid.large/bare/settle | 2.4 µs | 3.5 µs | +55.4% |
| data-grid.large/bare/steady | 7.88 ms | 10.51 ms | -15.9% |
| data-grid.large/bare/teardown | 159.8 µs | 220.3 µs | -21.0% |
| data-grid.large/compose/burst | 114.01 ms | 130.75 ms | -17.1% |
| data-grid.large/compose/cold | 63.12 ms | 71.03 ms | -18.0% |
| data-grid.large/compose/counts | 207.64 ms | 207.64 ms | -15.2% |
| data-grid.large/compose/settle | 2.4 µs | 2.8 µs | +50.6% |
| data-grid.large/compose/steady | 16.10 ms | 20.80 ms | -11.0% |
| data-grid.large/compose/teardown | 474.6 µs | 638.5 µs | -16.4% |
| data-grid.large/memory/mounted | 7405 KiB | 7405 KiB | -5.2% |
| data-grid.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| data-grid.medium/bare/burst | 38.40 ms | 41.02 ms | +36.9% |
| data-grid.medium/bare/cold | 23.95 ms | 26.55 ms | +31.9% |
| data-grid.medium/bare/settle | 1.7 µs | 2.1 µs | +78.4% |
| data-grid.medium/bare/steady | 5.33 ms | 7.84 ms | +26.2% |
| data-grid.medium/bare/teardown | 80.1 µs | 117.9 µs | +40.6% |
| data-grid.medium/compose/burst | 46.67 ms | 50.28 ms | +30.1% |
| data-grid.medium/compose/cold | 25.79 ms | 29.35 ms | +22.2% |
| data-grid.medium/compose/counts | 99.58 ms | 99.58 ms | +39.1% |
| data-grid.medium/compose/settle | 1.8 µs | 1.9 µs | +74.1% |
| data-grid.medium/compose/steady | 12.33 ms | 13.48 ms | +51.1% |
| data-grid.medium/compose/teardown | 248.2 µs | 347.5 µs | +32.1% |
| data-grid.medium/memory/mounted | 3894 KiB | 3894 KiB | -5.7% |
| data-grid.medium/memory/teardown | 8 KiB | 8 KiB | +700.0% |
| dense-dashboard.extreme/bare/burst | 4.71 ms | 6.81 ms | +5.4% |
| dense-dashboard.extreme/bare/cold | 145.9 µs | 578.6 µs | +4.7% |
| dense-dashboard.extreme/bare/settle | 1.1 µs | 1.2 µs | +39.8% |
| dense-dashboard.extreme/bare/steady | 93.8 µs | 100.0 µs | +27.0% |
| dense-dashboard.extreme/bare/teardown | 161.0 µs | 413.7 µs | +19.3% |
| dense-dashboard.extreme/compose/burst | 11.53 ms | 15.98 ms | -5.7% |
| dense-dashboard.extreme/compose/cold | 383.4 µs | 1.07 ms | -3.9% |
| dense-dashboard.extreme/compose/counts | 17.69 ms | 17.69 ms | +29.2% |
| dense-dashboard.extreme/compose/settle | 1.2 µs | 1.4 µs | +23.7% |
| dense-dashboard.extreme/compose/steady | 533.0 µs | 595.9 µs | +23.2% |
| dense-dashboard.extreme/compose/teardown | 393.2 µs | 529.0 µs | +1.3% |
| dense-dashboard.extreme/memory/mounted | 1141 KiB | 1141 KiB | -18.6% |
| dense-dashboard.extreme/memory/teardown | 1 KiB | 1 KiB | — |
| dense-dashboard.large/bare/burst | 1.74 ms | 3.53 ms | -0.7% |
| dense-dashboard.large/bare/cold | 82.1 µs | 164.4 µs | +2.6% |
| dense-dashboard.large/bare/settle | 1.0 µs | 1.1 µs | +116.9% |
| dense-dashboard.large/bare/steady | 92.6 µs | 98.7 µs | +24.6% |
| dense-dashboard.large/bare/teardown | 69.9 µs | 92.6 µs | +15.4% |
| dense-dashboard.large/compose/burst | 5.06 ms | 8.82 ms | +20.7% |
| dense-dashboard.large/compose/cold | 249.9 µs | 749.5 µs | +18.4% |
| dense-dashboard.large/compose/counts | 14.10 ms | 14.10 ms | +45.8% |
| dense-dashboard.large/compose/settle | 1.2 µs | 5.3 µs | +83.0% |
| dense-dashboard.large/compose/steady | 514.3 µs | 560.5 µs | +18.2% |
| dense-dashboard.large/compose/teardown | 204.5 µs | 353.7 µs | +28.2% |
| dense-dashboard.large/memory/mounted | 614 KiB | 614 KiB | -16.9% |
| dense-dashboard.large/memory/teardown | 1 KiB | 1 KiB | — |
| dense-dashboard.medium/bare/burst | 1.22 ms | 1.96 ms | +8.7% |
| dense-dashboard.medium/bare/cold | 151.4 µs | 370.4 µs | +59.5% |
| dense-dashboard.medium/bare/settle | 0.6 µs | 0.8 µs | -1.4% |
| dense-dashboard.medium/bare/steady | 130.8 µs | 159.1 µs | +0.5% |
| dense-dashboard.medium/bare/teardown | 41.0 µs | 78.4 µs | -24.8% |
| dense-dashboard.medium/compose/burst | 2.89 ms | 4.23 ms | -23.0% |
| dense-dashboard.medium/compose/cold | 218.8 µs | 720.0 µs | -20.1% |
| dense-dashboard.medium/compose/counts | 5.95 ms | 5.95 ms | -29.0% |
| dense-dashboard.medium/compose/settle | 0.7 µs | 0.9 µs | -46.2% |
| dense-dashboard.medium/compose/steady | 816.4 µs | 849.7 µs | -0.2% |
| dense-dashboard.medium/compose/teardown | 121.5 µs | 163.4 µs | -21.1% |
| dense-dashboard.medium/memory/mounted | 306 KiB | 306 KiB | -14.0% |
| dense-dashboard.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn-10.extreme/bare/burst | 15.36 ms | 23.35 ms | -19.3% |
| entities-identity-churn-10.extreme/bare/cold | 6.54 ms | 13.54 ms | -5.7% |
| entities-identity-churn-10.extreme/bare/settle | 2.0 µs | 2.4 µs | -22.2% |
| entities-identity-churn-10.extreme/bare/steady | 29.60 ms | 39.95 ms | -9.8% |
| entities-identity-churn-10.extreme/bare/teardown | 382.6 µs | 610.1 µs | -9.6% |
| entities-identity-churn-10.extreme/compose/burst | 48.50 ms | 65.26 ms | -17.2% |
| entities-identity-churn-10.extreme/compose/cold | 29.24 ms | 45.05 ms | -40.1% |
| entities-identity-churn-10.extreme/compose/counts | 232.88 ms | 232.88 ms | -16.2% |
| entities-identity-churn-10.extreme/compose/settle | 2.1 µs | 2.6 µs | -22.6% |
| entities-identity-churn-10.extreme/compose/steady | 62.01 ms | 71.25 ms | -43.9% |
| entities-identity-churn-10.extreme/compose/teardown | 1.14 ms | 2.23 ms | -41.7% |
| entities-identity-churn-10.extreme/memory/mounted | 4238 KiB | 4238 KiB | -14.1% |
| entities-identity-churn-10.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn-10.large/bare/burst | 3.88 ms | 6.05 ms | +34.6% |
| entities-identity-churn-10.large/bare/cold | 2.01 ms | 8.14 ms | +25.4% |
| entities-identity-churn-10.large/bare/settle | 1.3 µs | 1.7 µs | +105.5% |
| entities-identity-churn-10.large/bare/steady | 7.47 ms | 9.49 ms | +25.6% |
| entities-identity-churn-10.large/bare/teardown | 102.5 µs | 139.0 µs | +48.6% |
| entities-identity-churn-10.large/compose/burst | 13.76 ms | 20.50 ms | +13.0% |
| entities-identity-churn-10.large/compose/cold | 8.93 ms | 14.80 ms | -17.1% |
| entities-identity-churn-10.large/compose/counts | 64.83 ms | 64.83 ms | +64.7% |
| entities-identity-churn-10.large/compose/settle | 1.6 µs | 1.9 µs | -14.1% |
| entities-identity-churn-10.large/compose/steady | 18.13 ms | 25.02 ms | +37.7% |
| entities-identity-churn-10.large/compose/teardown | 337.4 µs | 437.9 µs | +17.1% |
| entities-identity-churn-10.large/memory/mounted | 1699 KiB | 1699 KiB | -11.0% |
| entities-identity-churn-10.large/memory/teardown | 8 KiB | 8 KiB | — |
| entities-identity-churn-10.medium/bare/burst | 2.31 ms | 3.81 ms | +49.5% |
| entities-identity-churn-10.medium/bare/cold | 1.45 ms | 4.30 ms | +54.0% |
| entities-identity-churn-10.medium/bare/settle | 1.6 µs | 3.1 µs | +102.3% |
| entities-identity-churn-10.medium/bare/steady | 5.35 ms | 7.60 ms | +84.9% |
| entities-identity-churn-10.medium/bare/teardown | 63.2 µs | 157.9 µs | +20.0% |
| entities-identity-churn-10.medium/compose/burst | 8.20 ms | 12.81 ms | +26.4% |
| entities-identity-churn-10.medium/compose/cold | 5.32 ms | 11.42 ms | +30.9% |
| entities-identity-churn-10.medium/compose/counts | 40.50 ms | 40.50 ms | +72.0% |
| entities-identity-churn-10.medium/compose/settle | 2.1 µs | 2.8 µs | +36.8% |
| entities-identity-churn-10.medium/compose/steady | 10.68 ms | 14.93 ms | +77.3% |
| entities-identity-churn-10.medium/compose/teardown | 264.1 µs | 310.2 µs | +45.4% |
| entities-identity-churn-10.medium/memory/mounted | 875 KiB | 875 KiB | -14.6% |
| entities-identity-churn-10.medium/memory/teardown | 1 KiB | 1 KiB | — |
| entities-identity-churn-50.extreme/bare/burst | 14.75 ms | 22.99 ms | +3.3% |
| entities-identity-churn-50.extreme/bare/cold | 6.39 ms | 14.25 ms | -28.7% |
| entities-identity-churn-50.extreme/bare/settle | 2.5 µs | 4.3 µs | +11.1% |
| entities-identity-churn-50.extreme/bare/steady | 57.41 ms | 77.83 ms | -9.1% |
| entities-identity-churn-50.extreme/bare/teardown | 305.5 µs | 430.4 µs | -26.6% |
| entities-identity-churn-50.extreme/compose/burst | 41.16 ms | 68.09 ms | -9.6% |
| entities-identity-churn-50.extreme/compose/cold | 29.99 ms | 51.58 ms | -18.9% |
| entities-identity-churn-50.extreme/compose/counts | 347.69 ms | 347.69 ms | -2.4% |
| entities-identity-churn-50.extreme/compose/settle | 2.1 µs | 2.7 µs | +16.2% |
| entities-identity-churn-50.extreme/compose/steady | 168.55 ms | 194.76 ms | -13.6% |
| entities-identity-churn-50.extreme/compose/teardown | 1.08 ms | 1.30 ms | -3.9% |
| entities-identity-churn-50.extreme/memory/mounted | 4199 KiB | 4199 KiB | -14.1% |
| entities-identity-churn-50.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-identity-churn-50.large/bare/burst | 5.59 ms | 11.07 ms | -6.6% |
| entities-identity-churn-50.large/bare/cold | 2.59 ms | 9.12 ms | -37.0% |
| entities-identity-churn-50.large/bare/settle | 1.1 µs | 1.7 µs | -61.5% |
| entities-identity-churn-50.large/bare/steady | 20.28 ms | 24.09 ms | -9.7% |
| entities-identity-churn-50.large/bare/teardown | 118.0 µs | 151.5 µs | -25.6% |
| entities-identity-churn-50.large/compose/burst | 14.96 ms | 29.50 ms | -33.9% |
| entities-identity-churn-50.large/compose/cold | 12.34 ms | 22.87 ms | -24.0% |
| entities-identity-churn-50.large/compose/counts | 121.70 ms | 121.70 ms | -23.8% |
| entities-identity-churn-50.large/compose/settle | 1.9 µs | 2.4 µs | -27.4% |
| entities-identity-churn-50.large/compose/steady | 59.71 ms | 70.05 ms | -40.6% |
| entities-identity-churn-50.large/compose/teardown | 440.9 µs | 626.2 µs | -39.6% |
| entities-identity-churn-50.large/memory/mounted | 1752 KiB | 1752 KiB | -12.4% |
| entities-identity-churn-50.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn-50.medium/bare/burst | 2.30 ms | 6.60 ms | -20.1% |
| entities-identity-churn-50.medium/bare/cold | 1.68 ms | 6.42 ms | +22.5% |
| entities-identity-churn-50.medium/bare/settle | 1.3 µs | 2.0 µs | +9.8% |
| entities-identity-churn-50.medium/bare/steady | 9.24 ms | 10.99 ms | -1.5% |
| entities-identity-churn-50.medium/bare/teardown | 65.4 µs | 132.9 µs | -8.9% |
| entities-identity-churn-50.medium/compose/burst | 7.99 ms | 13.42 ms | -14.7% |
| entities-identity-churn-50.medium/compose/cold | 4.57 ms | 10.40 ms | -43.4% |
| entities-identity-churn-50.medium/compose/counts | 57.15 ms | 57.15 ms | -21.6% |
| entities-identity-churn-50.medium/compose/settle | 1.6 µs | 2.1 µs | +21.7% |
| entities-identity-churn-50.medium/compose/steady | 23.96 ms | 31.85 ms | -17.6% |
| entities-identity-churn-50.medium/compose/teardown | 235.4 µs | 317.4 µs | -11.3% |
| entities-identity-churn-50.medium/memory/mounted | 963 KiB | 963 KiB | -14.2% |
| entities-identity-churn-50.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn.extreme/bare/burst | 17.43 ms | 29.45 ms | +27.2% |
| entities-identity-churn.extreme/bare/cold | 6.09 ms | 15.32 ms | +4.4% |
| entities-identity-churn.extreme/bare/settle | 2.4 µs | 4.8 µs | +12.6% |
| entities-identity-churn.extreme/bare/steady | 46.71 ms | 57.38 ms | +48.9% |
| entities-identity-churn.extreme/bare/teardown | 466.5 µs | 756.2 µs | +40.2% |
| entities-identity-churn.extreme/compose/burst | 49.01 ms | 61.22 ms | +21.1% |
| entities-identity-churn.extreme/compose/cold | 21.35 ms | 43.03 ms | -7.9% |
| entities-identity-churn.extreme/compose/counts | 263.23 ms | 263.23 ms | +69.7% |
| entities-identity-churn.extreme/compose/settle | 2.2 µs | 2.9 µs | +12.3% |
| entities-identity-churn.extreme/compose/steady | 94.63 ms | 122.49 ms | +21.3% |
| entities-identity-churn.extreme/compose/teardown | 1.10 ms | 1.55 ms | +1.6% |
| entities-identity-churn.extreme/memory/mounted | 4585 KiB | 4585 KiB | -14.5% |
| entities-identity-churn.extreme/memory/teardown | 104 KiB | 104 KiB | +7.2% |
| entities-identity-churn.large/bare/burst | 5.23 ms | 12.76 ms | +48.9% |
| entities-identity-churn.large/bare/cold | 2.73 ms | 11.27 ms | +13.0% |
| entities-identity-churn.large/bare/settle | 2.7 µs | 6.0 µs | +70.2% |
| entities-identity-churn.large/bare/steady | 15.96 ms | 19.56 ms | +66.6% |
| entities-identity-churn.large/bare/teardown | 127.9 µs | 180.8 µs | +48.0% |
| entities-identity-churn.large/compose/burst | 17.38 ms | 26.34 ms | +35.6% |
| entities-identity-churn.large/compose/cold | 12.41 ms | 22.52 ms | +23.8% |
| entities-identity-churn.large/compose/counts | 131.20 ms | 131.20 ms | +98.6% |
| entities-identity-churn.large/compose/settle | 2.3 µs | 2.8 µs | +9.1% |
| entities-identity-churn.large/compose/steady | 44.95 ms | 57.98 ms | +47.6% |
| entities-identity-churn.large/compose/teardown | 504.6 µs | 581.4 µs | +45.3% |
| entities-identity-churn.large/memory/mounted | 1658 KiB | 1658 KiB | -13.0% |
| entities-identity-churn.large/memory/teardown | 1 KiB | 1 KiB | — |
| entities-identity-churn.medium/bare/burst | 1.93 ms | 4.79 ms | -5.9% |
| entities-identity-churn.medium/bare/cold | 1.18 ms | 2.46 ms | +44.8% |
| entities-identity-churn.medium/bare/settle | 1.2 µs | 1.3 µs | +78.8% |
| entities-identity-churn.medium/bare/steady | 4.89 ms | 5.99 ms | +33.8% |
| entities-identity-churn.medium/bare/teardown | 48.9 µs | 110.9 µs | +40.0% |
| entities-identity-churn.medium/compose/burst | 6.32 ms | 13.49 ms | +1.7% |
| entities-identity-churn.medium/compose/cold | 4.21 ms | 7.71 ms | -19.1% |
| entities-identity-churn.medium/compose/counts | 34.88 ms | 34.88 ms | +42.1% |
| entities-identity-churn.medium/compose/settle | 1.3 µs | 1.6 µs | -20.5% |
| entities-identity-churn.medium/compose/steady | 13.98 ms | 20.00 ms | +25.5% |
| entities-identity-churn.medium/compose/teardown | 182.1 µs | 486.8 µs | +5.4% |
| entities-identity-churn.medium/memory/mounted | 934 KiB | 934 KiB | -13.6% |
| entities-identity-churn.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entities-integrated.extreme/bare/burst | 6.21 ms | 7.47 ms | +51.2% |
| entities-integrated.extreme/bare/cold | 22.83 ms | 54.86 ms | -11.0% |
| entities-integrated.extreme/bare/settle | 2.2 µs | 3.0 µs | -8.4% |
| entities-integrated.extreme/bare/steady | 27.39 ms | 47.19 ms | +38.1% |
| entities-integrated.extreme/bare/teardown | 25.36 ms | 26.75 ms | +12.5% |
| entities-integrated.extreme/compose/burst | 25.26 ms | 33.23 ms | +47.9% |
| entities-integrated.extreme/compose/cold | 109.14 ms | 152.16 ms | +17.2% |
| entities-integrated.extreme/compose/counts | 372.03 ms | 372.03 ms | +37.2% |
| entities-integrated.extreme/compose/settle | 2.2 µs | 3.8 µs | -3.1% |
| entities-integrated.extreme/compose/steady | 117.26 ms | 135.06 ms | +29.2% |
| entities-integrated.extreme/compose/teardown | 37.60 ms | 41.13 ms | -2.5% |
| entities-integrated.extreme/memory/mounted | 37098 KiB | 37098 KiB | -15.3% |
| entities-integrated.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-integrated.large/bare/burst | 2.65 ms | 4.68 ms | -12.1% |
| entities-integrated.large/bare/cold | 10.79 ms | 19.11 ms | +23.7% |
| entities-integrated.large/bare/settle | 1.9 µs | 2.3 µs | +86.9% |
| entities-integrated.large/bare/steady | 11.63 ms | 23.17 ms | -1.6% |
| entities-integrated.large/bare/teardown | 6.24 ms | 9.26 ms | +21.6% |
| entities-integrated.large/compose/burst | 8.70 ms | 10.36 ms | -17.2% |
| entities-integrated.large/compose/cold | 36.43 ms | 47.85 ms | -21.8% |
| entities-integrated.large/compose/counts | 156.09 ms | 156.09 ms | -5.6% |
| entities-integrated.large/compose/settle | 2.0 µs | 2.4 µs | +30.3% |
| entities-integrated.large/compose/steady | 46.85 ms | 66.88 ms | -20.6% |
| entities-integrated.large/compose/teardown | 12.64 ms | 14.30 ms | +8.2% |
| entities-integrated.large/memory/mounted | 15339 KiB | 15339 KiB | -15.6% |
| entities-integrated.large/memory/teardown | 1 KiB | 1 KiB | — |
| entities-integrated.medium/bare/burst | 2.25 ms | 4.33 ms | +65.9% |
| entities-integrated.medium/bare/cold | 6.85 ms | 12.33 ms | +30.6% |
| entities-integrated.medium/bare/settle | 2.1 µs | 2.4 µs | +25.3% |
| entities-integrated.medium/bare/steady | 9.74 ms | 12.56 ms | +40.8% |
| entities-integrated.medium/bare/teardown | 2.76 ms | 4.27 ms | +14.6% |
| entities-integrated.medium/compose/burst | 8.33 ms | 15.59 ms | +53.8% |
| entities-integrated.medium/compose/cold | 20.52 ms | 28.24 ms | +11.8% |
| entities-integrated.medium/compose/counts | 107.96 ms | 107.96 ms | +59.9% |
| entities-integrated.medium/compose/settle | 2.2 µs | 3.1 µs | +4.0% |
| entities-integrated.medium/compose/steady | 47.45 ms | 54.82 ms | +58.5% |
| entities-integrated.medium/compose/teardown | 6.91 ms | 9.02 ms | +6.6% |
| entities-integrated.medium/memory/mounted | 8286 KiB | 8286 KiB | -15.9% |
| entities-integrated.medium/memory/teardown | 8 KiB | 8 KiB | -11.1% |
| entities-relevance-saturated.extreme/bare/burst | 20.19 ms | 34.22 ms | +38.4% |
| entities-relevance-saturated.extreme/bare/cold | 8.79 ms | 31.19 ms | +24.9% |
| entities-relevance-saturated.extreme/bare/settle | 3.2 µs | 3.7 µs | +19.2% |
| entities-relevance-saturated.extreme/bare/steady | 98.71 ms | 110.81 ms | +67.7% |
| entities-relevance-saturated.extreme/bare/teardown | 3.81 ms | 4.87 ms | -4.7% |
| entities-relevance-saturated.extreme/compose/burst | 97.25 ms | 134.01 ms | +3.4% |
| entities-relevance-saturated.extreme/compose/cold | 28.42 ms | 46.47 ms | +27.9% |
| entities-relevance-saturated.extreme/compose/counts | 277.04 ms | 277.04 ms | +31.3% |
| entities-relevance-saturated.extreme/compose/settle | 2.9 µs | 4.2 µs | +5.1% |
| entities-relevance-saturated.extreme/compose/steady | 59.31 ms | 104.31 ms | +13.7% |
| entities-relevance-saturated.extreme/compose/teardown | 14.50 ms | 15.57 ms | +8.1% |
| entities-relevance-saturated.extreme/memory/mounted | 11964 KiB | 11964 KiB | -1.4% |
| entities-relevance-saturated.extreme/memory/teardown | 17 KiB | 17 KiB | — |
| entities-relevance-saturated.large/bare/burst | 5.19 ms | 7.18 ms | -14.7% |
| entities-relevance-saturated.large/bare/cold | 3.45 ms | 6.24 ms | -0.2% |
| entities-relevance-saturated.large/bare/settle | 1.8 µs | 2.3 µs | -16.3% |
| entities-relevance-saturated.large/bare/steady | 34.10 ms | 47.84 ms | -13.1% |
| entities-relevance-saturated.large/bare/teardown | 1.06 ms | 1.40 ms | -19.6% |
| entities-relevance-saturated.large/compose/burst | 27.64 ms | 35.32 ms | -31.8% |
| entities-relevance-saturated.large/compose/cold | 13.84 ms | 16.26 ms | +11.2% |
| entities-relevance-saturated.large/compose/counts | 92.98 ms | 92.98 ms | -8.6% |
| entities-relevance-saturated.large/compose/settle | 2.0 µs | 2.3 µs | -11.9% |
| entities-relevance-saturated.large/compose/steady | 20.18 ms | 29.52 ms | -15.8% |
| entities-relevance-saturated.large/compose/teardown | 3.28 ms | 4.70 ms | -20.7% |
| entities-relevance-saturated.large/memory/mounted | 4810 KiB | 4810 KiB | -1.6% |
| entities-relevance-saturated.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-relevance-saturated.medium/bare/burst | 2.63 ms | 5.37 ms | +41.1% |
| entities-relevance-saturated.medium/bare/cold | 2.32 ms | 5.33 ms | +42.7% |
| entities-relevance-saturated.medium/bare/settle | 1.9 µs | 2.3 µs | +31.8% |
| entities-relevance-saturated.medium/bare/steady | 17.31 ms | 21.30 ms | +78.9% |
| entities-relevance-saturated.medium/bare/teardown | 595.6 µs | 760.3 µs | +1.6% |
| entities-relevance-saturated.medium/compose/burst | 13.94 ms | 20.28 ms | +37.0% |
| entities-relevance-saturated.medium/compose/cold | 5.93 ms | 11.58 ms | +31.3% |
| entities-relevance-saturated.medium/compose/counts | 45.50 ms | 45.50 ms | +74.8% |
| entities-relevance-saturated.medium/compose/settle | 2.2 µs | 3.8 µs | +17.5% |
| entities-relevance-saturated.medium/compose/steady | 10.58 ms | 16.24 ms | +57.6% |
| entities-relevance-saturated.medium/compose/teardown | 1.48 ms | 2.54 ms | +20.0% |
| entities-relevance-saturated.medium/memory/mounted | 2415 KiB | 2415 KiB | -1.6% |
| entities-relevance-saturated.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-relevance-sweep.extreme/bare/burst | 33.53 ms | 55.06 ms | +51.9% |
| entities-relevance-sweep.extreme/bare/cold | 8.30 ms | 31.70 ms | -6.6% |
| entities-relevance-sweep.extreme/bare/settle | 3.2 µs | 4.1 µs | +12.7% |
| entities-relevance-sweep.extreme/bare/steady | 28.09 ms | 55.25 ms | +23.1% |
| entities-relevance-sweep.extreme/bare/teardown | 3.64 ms | 4.43 ms | -2.2% |
| entities-relevance-sweep.extreme/compose/burst | 147.76 ms | 195.03 ms | +2.7% |
| entities-relevance-sweep.extreme/compose/cold | 37.93 ms | 60.87 ms | +41.5% |
| entities-relevance-sweep.extreme/compose/counts | 495.52 ms | 495.52 ms | +36.3% |
| entities-relevance-sweep.extreme/compose/settle | 2.8 µs | 4.4 µs | -2.4% |
| entities-relevance-sweep.extreme/compose/steady | 167.03 ms | 204.72 ms | +18.6% |
| entities-relevance-sweep.extreme/compose/teardown | 15.29 ms | 21.61 ms | +10.7% |
| entities-relevance-sweep.extreme/memory/mounted | 11940 KiB | 11940 KiB | -1.6% |
| entities-relevance-sweep.extreme/memory/teardown | 1 KiB | 1 KiB | — |
| entities-relevance-sweep.large/bare/burst | 7.18 ms | 16.68 ms | -12.3% |
| entities-relevance-sweep.large/bare/cold | 2.85 ms | 7.97 ms | +13.6% |
| entities-relevance-sweep.large/bare/settle | 1.4 µs | 1.9 µs | +11.6% |
| entities-relevance-sweep.large/bare/steady | 8.13 ms | 12.62 ms | +30.5% |
| entities-relevance-sweep.large/bare/teardown | 914.7 µs | 1.41 ms | -11.7% |
| entities-relevance-sweep.large/compose/burst | 43.30 ms | 50.63 ms | +30.0% |
| entities-relevance-sweep.large/compose/cold | 8.87 ms | 20.22 ms | +10.1% |
| entities-relevance-sweep.large/compose/counts | 121.67 ms | 121.67 ms | +44.1% |
| entities-relevance-sweep.large/compose/settle | 2.4 µs | 3.3 µs | +22.6% |
| entities-relevance-sweep.large/compose/steady | 39.10 ms | 52.83 ms | +32.4% |
| entities-relevance-sweep.large/compose/teardown | 3.10 ms | 3.80 ms | +17.5% |
| entities-relevance-sweep.large/memory/mounted | 4802 KiB | 4802 KiB | -1.6% |
| entities-relevance-sweep.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-relevance-sweep.medium/bare/burst | 6.29 ms | 10.77 ms | +41.3% |
| entities-relevance-sweep.medium/bare/cold | 1.60 ms | 3.67 ms | -29.1% |
| entities-relevance-sweep.medium/bare/settle | 1.3 µs | 2.7 µs | -39.4% |
| entities-relevance-sweep.medium/bare/steady | 4.83 ms | 6.66 ms | -3.3% |
| entities-relevance-sweep.medium/bare/teardown | 501.6 µs | 608.3 µs | -17.0% |
| entities-relevance-sweep.medium/compose/burst | 20.50 ms | 27.74 ms | -24.8% |
| entities-relevance-sweep.medium/compose/cold | 5.81 ms | 13.71 ms | -24.1% |
| entities-relevance-sweep.medium/compose/counts | 73.93 ms | 73.93 ms | -25.6% |
| entities-relevance-sweep.medium/compose/settle | 1.9 µs | 2.4 µs | -19.1% |
| entities-relevance-sweep.medium/compose/steady | 21.90 ms | 26.56 ms | -26.2% |
| entities-relevance-sweep.medium/compose/teardown | 1.36 ms | 1.65 ms | -18.2% |
| entities-relevance-sweep.medium/memory/mounted | 2424 KiB | 2424 KiB | -1.2% |
| entities-relevance-sweep.medium/memory/teardown | 1 KiB | 1 KiB | — |
| entity-labels-sparse.extreme/bare/burst | 9.29 ms | 12.05 ms | +97.3% |
| entity-labels-sparse.extreme/bare/cold | 7.72 ms | 11.36 ms | +43.0% |
| entity-labels-sparse.extreme/bare/settle | 1.4 µs | 1.8 µs | +149.6% |
| entity-labels-sparse.extreme/bare/steady | 1.19 ms | 1.48 ms | +125.6% |
| entity-labels-sparse.extreme/bare/teardown | 6.28 ms | 6.95 ms | +64.1% |
| entity-labels-sparse.extreme/compose/burst | 30.74 ms | 37.07 ms | +45.4% |
| entity-labels-sparse.extreme/compose/cold | 19.44 ms | 25.48 ms | +11.5% |
| entity-labels-sparse.extreme/compose/counts | 95.73 ms | 95.73 ms | +61.4% |
| entity-labels-sparse.extreme/compose/settle | 2.1 µs | 15.0 µs | +22.3% |
| entity-labels-sparse.extreme/compose/steady | 4.06 ms | 4.52 ms | +53.9% |
| entity-labels-sparse.extreme/compose/teardown | 10.93 ms | 11.32 ms | +40.8% |
| entity-labels-sparse.extreme/memory/mounted | 11176 KiB | 11176 KiB | -21.1% |
| entity-labels-sparse.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| entity-labels-sparse.large/bare/burst | 3.71 ms | 7.24 ms | +17.1% |
| entity-labels-sparse.large/bare/cold | 3.34 ms | 5.98 ms | +55.5% |
| entity-labels-sparse.large/bare/settle | 1.1 µs | 1.4 µs | +80.2% |
| entity-labels-sparse.large/bare/steady | 530.7 µs | 756.8 µs | +64.5% |
| entity-labels-sparse.large/bare/teardown | 1.88 ms | 3.09 ms | +24.7% |
| entity-labels-sparse.large/compose/burst | 12.97 ms | 15.72 ms | +26.3% |
| entity-labels-sparse.large/compose/cold | 9.67 ms | 14.84 ms | +2.2% |
| entity-labels-sparse.large/compose/counts | 40.69 ms | 40.69 ms | +32.5% |
| entity-labels-sparse.large/compose/settle | 1.6 µs | 3.0 µs | +32.5% |
| entity-labels-sparse.large/compose/steady | 2.44 ms | 2.84 ms | +73.7% |
| entity-labels-sparse.large/compose/teardown | 3.90 ms | 4.15 ms | +32.7% |
| entity-labels-sparse.large/memory/mounted | 5817 KiB | 5817 KiB | -21.0% |
| entity-labels-sparse.large/memory/teardown | 0 KiB | 0 KiB | — |
| entity-labels-sparse.medium/bare/burst | 1.43 ms | 2.19 ms | -38.8% |
| entity-labels-sparse.medium/bare/cold | 1.42 ms | 3.43 ms | -6.9% |
| entity-labels-sparse.medium/bare/settle | 0.6 µs | 0.7 µs | -45.4% |
| entity-labels-sparse.medium/bare/steady | 213.6 µs | 233.9 µs | -39.7% |
| entity-labels-sparse.medium/bare/teardown | 490.3 µs | 572.8 µs | -30.2% |
| entity-labels-sparse.medium/compose/burst | 5.97 ms | 7.46 ms | -34.5% |
| entity-labels-sparse.medium/compose/cold | 4.65 ms | 7.92 ms | -19.2% |
| entity-labels-sparse.medium/compose/counts | 23.59 ms | 23.59 ms | -17.2% |
| entity-labels-sparse.medium/compose/settle | 0.9 µs | 1.3 µs | -60.2% |
| entity-labels-sparse.medium/compose/steady | 1.01 ms | 1.34 ms | -39.6% |
| entity-labels-sparse.medium/compose/teardown | 1.23 ms | 1.95 ms | -36.6% |
| entity-labels-sparse.medium/memory/mounted | 2607 KiB | 2607 KiB | -21.0% |
| entity-labels-sparse.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels.extreme/bare/burst | 6.87 ms | 13.42 ms | +20.3% |
| entity-labels.extreme/bare/cold | 6.74 ms | 10.18 ms | +53.2% |
| entity-labels.extreme/bare/settle | 1.1 µs | 9.7 µs | +100.4% |
| entity-labels.extreme/bare/steady | 921.0 µs | 1.33 ms | +72.8% |
| entity-labels.extreme/bare/teardown | 5.36 ms | 7.49 ms | +11.1% |
| entity-labels.extreme/compose/burst | 33.15 ms | 35.47 ms | +55.1% |
| entity-labels.extreme/compose/cold | 19.04 ms | 23.56 ms | +1.3% |
| entity-labels.extreme/compose/counts | 145.73 ms | 145.73 ms | +42.9% |
| entity-labels.extreme/compose/settle | 1.8 µs | 4.0 µs | +18.8% |
| entity-labels.extreme/compose/steady | 30.40 ms | 37.68 ms | +22.4% |
| entity-labels.extreme/compose/teardown | 10.67 ms | 11.58 ms | +33.8% |
| entity-labels.extreme/memory/mounted | 11386 KiB | 11386 KiB | -25.4% |
| entity-labels.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| entity-labels.large/bare/burst | 3.79 ms | 5.13 ms | -25.4% |
| entity-labels.large/bare/cold | 4.94 ms | 7.76 ms | +1.6% |
| entity-labels.large/bare/settle | 1.1 µs | 2.1 µs | -39.3% |
| entity-labels.large/bare/steady | 533.7 µs | 628.4 µs | -9.2% |
| entity-labels.large/bare/teardown | 1.84 ms | 2.87 ms | -21.0% |
| entity-labels.large/compose/burst | 15.71 ms | 21.03 ms | -43.7% |
| entity-labels.large/compose/cold | 13.24 ms | 19.78 ms | -34.0% |
| entity-labels.large/compose/counts | 97.21 ms | 97.21 ms | -14.8% |
| entity-labels.large/compose/settle | 1.6 µs | 2.2 µs | -36.9% |
| entity-labels.large/compose/steady | 23.07 ms | 28.35 ms | -18.1% |
| entity-labels.large/compose/teardown | 4.51 ms | 4.97 ms | -30.0% |
| entity-labels.large/memory/mounted | 5933 KiB | 5933 KiB | -25.3% |
| entity-labels.large/memory/teardown | 0 KiB | 0 KiB | — |
| entity-labels.medium/bare/burst | 1.52 ms | 2.96 ms | -15.3% |
| entity-labels.medium/bare/cold | 1.61 ms | 4.14 ms | -25.3% |
| entity-labels.medium/bare/settle | 0.6 µs | 1.1 µs | -43.0% |
| entity-labels.medium/bare/steady | 233.7 µs | 360.1 µs | -15.3% |
| entity-labels.medium/bare/teardown | 492.9 µs | 752.5 µs | -26.4% |
| entity-labels.medium/compose/burst | 6.66 ms | 9.17 ms | -16.0% |
| entity-labels.medium/compose/cold | 4.63 ms | 8.36 ms | -35.8% |
| entity-labels.medium/compose/counts | 39.55 ms | 39.55 ms | -5.3% |
| entity-labels.medium/compose/settle | 1.4 µs | 1.7 µs | -35.5% |
| entity-labels.medium/compose/steady | 10.00 ms | 13.45 ms | -12.8% |
| entity-labels.medium/compose/teardown | 1.52 ms | 1.63 ms | -24.4% |
| entity-labels.medium/memory/mounted | 2662 KiB | 2662 KiB | -25.4% |
| entity-labels.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| events/bare | 9.74 ms | 11.80 ms | -25.7% |
| events/compose | 12.88 ms | 16.23 ms | -20.5% |
| events/memory/mounted | 16 KiB | 16 KiB | +6.7% |
| events/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| inspector.extreme/bare/burst | 1.79 ms | 2.00 ms | -13.9% |
| inspector.extreme/bare/cold | 6.38 ms | 11.80 ms | -23.5% |
| inspector.extreme/bare/settle | 0.7 µs | 1.0 µs | -56.6% |
| inspector.extreme/bare/steady | 80.6 µs | 104.0 µs | -35.6% |
| inspector.extreme/bare/teardown | 5.24 ms | 5.61 ms | -14.5% |
| inspector.extreme/compose/burst | 10.22 ms | 11.08 ms | -36.9% |
| inspector.extreme/compose/cold | 23.94 ms | 31.80 ms | -27.0% |
| inspector.extreme/compose/counts | 44.29 ms | 44.29 ms | -12.4% |
| inspector.extreme/compose/settle | 1.8 µs | 2.2 µs | -32.4% |
| inspector.extreme/compose/steady | 304.4 µs | 327.3 µs | -18.9% |
| inspector.extreme/compose/teardown | 2.61 ms | 3.49 ms | -37.3% |
| inspector.extreme/memory/mounted | 21285 KiB | 21285 KiB | -4.2% |
| inspector.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| inspector.large/bare/burst | 852.7 µs | 952.1 µs | -11.5% |
| inspector.large/bare/cold | 2.67 ms | 5.24 ms | -40.9% |
| inspector.large/bare/settle | 0.6 µs | 0.7 µs | -47.2% |
| inspector.large/bare/steady | 72.3 µs | 83.9 µs | -36.3% |
| inspector.large/bare/teardown | 1.55 ms | 2.13 ms | -17.7% |
| inspector.large/compose/burst | 4.83 ms | 5.44 ms | -12.5% |
| inspector.large/compose/cold | 9.02 ms | 15.70 ms | -14.5% |
| inspector.large/compose/counts | 22.41 ms | 22.41 ms | -10.6% |
| inspector.large/compose/settle | 1.0 µs | 1.6 µs | -50.0% |
| inspector.large/compose/steady | 245.5 µs | 337.3 µs | -29.3% |
| inspector.large/compose/teardown | 1.03 ms | 1.67 ms | -33.8% |
| inspector.large/memory/mounted | 6901 KiB | 6901 KiB | -6.4% |
| inspector.large/memory/teardown | 1 KiB | 1 KiB | — |
| inspector.medium/bare/burst | 177.2 µs | 228.3 µs | +35.0% |
| inspector.medium/bare/cold | 705.5 µs | 2.25 ms | +40.0% |
| inspector.medium/bare/settle | 0.4 µs | 0.6 µs | +49.6% |
| inspector.medium/bare/steady | 50.8 µs | 77.5 µs | +57.0% |
| inspector.medium/bare/teardown | 296.4 µs | 335.5 µs | +46.4% |
| inspector.medium/compose/burst | 949.5 µs | 1.16 ms | +16.9% |
| inspector.medium/compose/cold | 1.67 ms | 2.94 ms | -16.6% |
| inspector.medium/compose/counts | 3.47 ms | 3.47 ms | -9.4% |
| inspector.medium/compose/settle | 0.6 µs | 1.5 µs | +42.7% |
| inspector.medium/compose/steady | 160.3 µs | 201.9 µs | +41.3% |
| inspector.medium/compose/teardown | 235.1 µs | 511.7 µs | +9.9% |
| inspector.medium/memory/mounted | 1757 KiB | 1757 KiB | -9.7% |
| inspector.medium/memory/teardown | 1 KiB | 1 KiB | — |
| keyed-append/bare | 1.27 ms | 2.15 ms | +67.4% |
| keyed-append/compose | 2.02 ms | 2.39 ms | +64.0% |
| keyed-append/memory/mounted | 1951 KiB | 1951 KiB | -16.3% |
| keyed-append/memory/teardown | 1 KiB | 1 KiB | -88.9% |
| keyed-insert/bare | 1.60 ms | 1.93 ms | +67.6% |
| keyed-insert/compose | 3.95 ms | 4.33 ms | +84.8% |
| keyed-insert/memory/mounted | 1963 KiB | 1963 KiB | -15.6% |
| keyed-insert/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| keyed-prepend/bare | 1.37 ms | 1.91 ms | -18.1% |
| keyed-prepend/compose | 4.81 ms | 5.35 ms | -15.2% |
| keyed-prepend/memory/mounted | 1950 KiB | 1950 KiB | -16.9% |
| keyed-prepend/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| keyed-remove/bare | 1.44 ms | 1.73 ms | +71.2% |
| keyed-remove/compose | 3.84 ms | 4.45 ms | +64.1% |
| keyed-remove/memory/mounted | 1959 KiB | 1959 KiB | -15.9% |
| keyed-remove/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| keyed-replace/bare | 23.96 ms | 27.14 ms | -0.4% |
| keyed-replace/compose | 53.18 ms | 62.17 ms | -18.4% |
| keyed-replace/memory/mounted | 1970 KiB | 1970 KiB | -15.9% |
| keyed-replace/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-reverse/bare | 963.3 µs | 1.02 ms | -20.8% |
| keyed-reverse/compose | 3.17 ms | 3.52 ms | -23.6% |
| keyed-reverse/memory/mounted | 1962 KiB | 1962 KiB | -15.9% |
| keyed-reverse/memory/teardown | 1 KiB | 1 KiB | -88.9% |
| keyed-rotate/bare | 893.2 µs | 1.03 ms | -27.8% |
| keyed-rotate/compose | 3.25 ms | 3.40 ms | -22.8% |
| keyed-rotate/memory/mounted | 1954 KiB | 1954 KiB | -16.6% |
| keyed-rotate/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| keyed-shuffle/bare | 962.4 µs | 1.03 ms | -24.4% |
| keyed-shuffle/compose | 3.31 ms | 3.60 ms | -23.8% |
| keyed-shuffle/memory/mounted | 1954 KiB | 1954 KiB | -16.3% |
| keyed-shuffle/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| mount-cycles/bare | 15.08 ms | 16.11 ms | +41.9% |
| mount-cycles/compose | 25.39 ms | 28.90 ms | +55.9% |
| mount-cycles/memory/mounted | 16 KiB | 16 KiB | +6.7% |
| mount-cycles/memory/teardown | 1 KiB | 1 KiB | — |
| mount-dispose/bare | 7.51 ms | 9.94 ms | -3.1% |
| mount-dispose/compose | 7.31 ms | 10.27 ms | -34.1% |
| mount-dispose/memory/mounted | 8 KiB | 8 KiB | -65.2% |
| mount-dispose/memory/teardown | 0 KiB | 0 KiB | — |
| ordered-window-scroll/compose | 471.3 µs | 479.2 µs | -13.0% |
| ordered-window-scroll/memory/mounted | 1117 KiB | 1117 KiB | -2.3% |
| ordered-window-scroll/memory/teardown | 1 KiB | 1 KiB | — |
| scene-2d.extreme/bare/burst | 8.71 ms | 10.47 ms | +62.0% |
| scene-2d.extreme/bare/cold | 1.51 ms | 3.00 ms | +33.1% |
| scene-2d.extreme/bare/settle | 2.7 µs | 3.0 µs | +7.5% |
| scene-2d.extreme/bare/steady | 48.25 ms | 56.23 ms | +59.2% |
| scene-2d.extreme/bare/teardown | 509.4 µs | 564.3 µs | +7.3% |
| scene-2d.extreme/compose/burst | 33.38 ms | 54.67 ms | +10.9% |
| scene-2d.extreme/compose/cold | 17.71 ms | 27.86 ms | -5.0% |
| scene-2d.extreme/compose/counts | 238.39 ms | 238.39 ms | +30.3% |
| scene-2d.extreme/compose/settle | 2.5 µs | 3.6 µs | -13.9% |
| scene-2d.extreme/compose/steady | 97.24 ms | 107.66 ms | +52.6% |
| scene-2d.extreme/compose/teardown | 1.35 ms | 2.16 ms | +4.9% |
| scene-2d.extreme/memory/mounted | 13028 KiB | 13028 KiB | -4.1% |
| scene-2d.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| scene-2d.large/bare/burst | 8.96 ms | 13.42 ms | -14.3% |
| scene-2d.large/bare/cold | 1.41 ms | 5.60 ms | +0.6% |
| scene-2d.large/bare/settle | 1.7 µs | 2.2 µs | -28.7% |
| scene-2d.large/bare/steady | 49.17 ms | 50.54 ms | +0.5% |
| scene-2d.large/bare/teardown | 501.0 µs | 723.9 µs | -19.1% |
| scene-2d.large/compose/burst | 26.83 ms | 33.91 ms | -27.5% |
| scene-2d.large/compose/cold | 8.01 ms | 12.01 ms | -29.0% |
| scene-2d.large/compose/counts | 211.38 ms | 211.38 ms | -9.0% |
| scene-2d.large/compose/settle | 1.7 µs | 2.2 µs | -29.2% |
| scene-2d.large/compose/steady | 93.40 ms | 100.46 ms | -18.0% |
| scene-2d.large/compose/teardown | 1.07 ms | 1.21 ms | -32.3% |
| scene-2d.large/memory/mounted | 4599 KiB | 4599 KiB | -10.5% |
| scene-2d.large/memory/teardown | 9 KiB | 9 KiB | — |
| scene-2d.medium/bare/burst | 6.11 ms | 11.95 ms | +3.6% |
| scene-2d.medium/bare/cold | 1.13 ms | 3.14 ms | -3.8% |
| scene-2d.medium/bare/settle | 1.8 µs | 3.1 µs | +84.5% |
| scene-2d.medium/bare/steady | 29.15 ms | 31.45 ms | -22.2% |
| scene-2d.medium/bare/teardown | 427.7 µs | 588.1 µs | +8.8% |
| scene-2d.medium/compose/burst | 19.57 ms | 22.84 ms | -14.7% |
| scene-2d.medium/compose/cold | 3.82 ms | 8.13 ms | -37.8% |
| scene-2d.medium/compose/counts | 148.02 ms | 148.02 ms | -7.9% |
| scene-2d.medium/compose/settle | 2.2 µs | 2.7 µs | +50.6% |
| scene-2d.medium/compose/steady | 54.08 ms | 56.43 ms | -29.2% |
| scene-2d.medium/compose/teardown | 896.1 µs | 1.25 ms | +1.4% |
| scene-2d.medium/memory/mounted | 2120 KiB | 2120 KiB | -21.1% |
| scene-2d.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| scene-3d/bare | 2.42 ms | 3.41 ms | +25.4% |
| scene-3d/compose | 5.44 ms | 6.54 ms | -6.1% |
| scene-3d/memory/mounted | 1139 KiB | 1139 KiB | -21.3% |
| scene-3d/memory/teardown | 0 KiB | 0 KiB | — |
| session-cycle.extreme/bare/burst | 138.41 ms | 172.05 ms | +25.9% |
| session-cycle.extreme/bare/cold | 4.0 µs | 6.1 µs | -12.2% |
| session-cycle.extreme/bare/settle | 1.9 µs | 2.9 µs | -33.6% |
| session-cycle.extreme/bare/steady | 160.62 ms | 251.24 ms | -25.3% |
| session-cycle.extreme/bare/teardown | 2.0 µs | 2.5 µs | -29.4% |
| session-cycle.extreme/compose/burst | 115.39 ms | 157.20 ms | -30.9% |
| session-cycle.extreme/compose/cold | 4.2 µs | 16.8 µs | -8.3% |
| session-cycle.extreme/compose/counts | 308.10 ms | 308.10 ms | -10.5% |
| session-cycle.extreme/compose/settle | 1.9 µs | 2.4 µs | -16.5% |
| session-cycle.extreme/compose/steady | 197.08 ms | 255.02 ms | +0.2% |
| session-cycle.extreme/compose/teardown | 2.2 µs | 2.7 µs | -15.2% |
| session-cycle.extreme/memory/mounted | 0 KiB | 0 KiB | -100.0% |
| session-cycle.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| session-cycle.large/bare/burst | 30.37 ms | 58.75 ms | +22.6% |
| session-cycle.large/bare/cold | 4.3 µs | 6.9 µs | -1.9% |
| session-cycle.large/bare/settle | 2.2 µs | 2.5 µs | +27.0% |
| session-cycle.large/bare/steady | 62.74 ms | 93.39 ms | +28.6% |
| session-cycle.large/bare/teardown | 2.2 µs | 2.9 µs | +25.3% |
| session-cycle.large/compose/burst | 46.88 ms | 60.23 ms | +11.3% |
| session-cycle.large/compose/cold | 3.5 µs | 5.9 µs | +11.1% |
| session-cycle.large/compose/counts | 99.56 ms | 99.56 ms | +31.3% |
| session-cycle.large/compose/settle | 1.6 µs | 2.7 µs | -2.0% |
| session-cycle.large/compose/steady | 61.82 ms | 96.16 ms | +44.7% |
| session-cycle.large/compose/teardown | 2.0 µs | 2.7 µs | +15.9% |
| session-cycle.large/memory/mounted | 0 KiB | 0 KiB | -100.0% |
| session-cycle.large/memory/teardown | 0 KiB | 0 KiB | — |
| session-cycle.medium/bare/burst | 12.00 ms | 16.28 ms | +14.5% |
| session-cycle.medium/bare/cold | 3.9 µs | 5.1 µs | +26.3% |
| session-cycle.medium/bare/settle | 1.5 µs | 1.9 µs | +54.5% |
| session-cycle.medium/bare/steady | 14.75 ms | 22.06 ms | +11.4% |
| session-cycle.medium/bare/teardown | 1.4 µs | 2.1 µs | +28.6% |
| session-cycle.medium/compose/burst | 14.17 ms | 17.89 ms | +3.8% |
| session-cycle.medium/compose/cold | 3.5 µs | 6.2 µs | +9.7% |
| session-cycle.medium/compose/counts | 33.67 ms | 33.67 ms | -3.2% |
| session-cycle.medium/compose/settle | 1.8 µs | 2.2 µs | +47.8% |
| session-cycle.medium/compose/steady | 18.37 ms | 28.10 ms | -15.2% |
| session-cycle.medium/compose/teardown | 1.8 µs | 2.4 µs | +9.6% |
| session-cycle.medium/memory/mounted | 8 KiB | 8 KiB | +0.0% |
| session-cycle.medium/memory/teardown | 0 KiB | 0 KiB | — |
| spatial-scene.extreme/bare/burst | 47.33 ms | 69.60 ms | +18.5% |
| spatial-scene.extreme/bare/cold | 4.58 ms | 9.32 ms | +71.5% |
| spatial-scene.extreme/bare/settle | 2.8 µs | 3.5 µs | +59.5% |
| spatial-scene.extreme/bare/steady | 56.05 ms | 81.90 ms | -25.4% |
| spatial-scene.extreme/bare/teardown | 1.62 ms | 4.15 ms | +25.2% |
| spatial-scene.extreme/compose/burst | 129.21 ms | 143.44 ms | -13.8% |
| spatial-scene.extreme/compose/cold | 13.88 ms | 21.60 ms | +17.4% |
| spatial-scene.extreme/compose/counts | 254.75 ms | 254.75 ms | -5.3% |
| spatial-scene.extreme/compose/settle | 2.4 µs | 3.0 µs | +19.1% |
| spatial-scene.extreme/compose/steady | 52.02 ms | 58.60 ms | -21.7% |
| spatial-scene.extreme/compose/teardown | 4.51 ms | 6.19 ms | +8.5% |
| spatial-scene.extreme/memory/mounted | 4911 KiB | 4911 KiB | -13.9% |
| spatial-scene.extreme/memory/teardown | 7 KiB | 7 KiB | +600.0% |
| spatial-scene.large/bare/burst | 11.27 ms | 15.98 ms | +4.6% |
| spatial-scene.large/bare/cold | 886.5 µs | 2.52 ms | -1.4% |
| spatial-scene.large/bare/settle | 2.0 µs | 2.9 µs | +92.2% |
| spatial-scene.large/bare/steady | 15.36 ms | 21.74 ms | -30.5% |
| spatial-scene.large/bare/teardown | 229.0 µs | 323.9 µs | -16.1% |
| spatial-scene.large/compose/burst | 33.45 ms | 36.69 ms | -15.9% |
| spatial-scene.large/compose/cold | 3.83 ms | 5.01 ms | +8.1% |
| spatial-scene.large/compose/counts | 68.81 ms | 68.81 ms | -9.6% |
| spatial-scene.large/compose/settle | 2.3 µs | 2.4 µs | +84.5% |
| spatial-scene.large/compose/steady | 16.42 ms | 21.42 ms | -25.2% |
| spatial-scene.large/compose/teardown | 805.0 µs | 1.39 ms | -17.2% |
| spatial-scene.large/memory/mounted | 1632 KiB | 1632 KiB | -13.8% |
| spatial-scene.large/memory/teardown | 1 KiB | 1 KiB | — |
| spatial-scene.medium/bare/burst | 3.14 ms | 7.50 ms | +0.2% |
| spatial-scene.medium/bare/cold | 329.6 µs | 1.42 ms | -10.8% |
| spatial-scene.medium/bare/settle | 0.8 µs | 1.5 µs | -25.0% |
| spatial-scene.medium/bare/steady | 5.91 ms | 7.25 ms | -26.5% |
| spatial-scene.medium/bare/teardown | 80.3 µs | 150.1 µs | -21.8% |
| spatial-scene.medium/compose/burst | 11.46 ms | 14.14 ms | -26.4% |
| spatial-scene.medium/compose/cold | 1.13 ms | 2.11 ms | -21.0% |
| spatial-scene.medium/compose/counts | 28.60 ms | 28.60 ms | -25.6% |
| spatial-scene.medium/compose/settle | 1.4 µs | 1.9 µs | +16.9% |
| spatial-scene.medium/compose/steady | 7.44 ms | 8.42 ms | -35.8% |
| spatial-scene.medium/compose/teardown | 257.4 µs | 462.9 µs | -18.7% |
| spatial-scene.medium/memory/mounted | 648 KiB | 648 KiB | -13.4% |
| spatial-scene.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| status-panel/bare | 77.6 µs | 157.1 µs | -0.5% |
| status-panel/compose | 449.9 µs | 494.1 µs | -31.1% |
| status-panel/memory/mounted | 56 KiB | 56 KiB | -5.1% |
| status-panel/memory/teardown | 0 KiB | 0 KiB | — |
| unwind/bare | 3.65 ms | 4.15 ms | -6.1% |
| unwind/compose | 4.68 ms | 7.62 ms | -20.8% |
| unwind/memory/mounted | 15 KiB | 15 KiB | +0.0% |
| unwind/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| update-batched/bare | 1.03 ms | 1.14 ms | +105.1% |
| update-batched/compose | 3.03 ms | 3.35 ms | +76.4% |
| update-batched/memory/mounted | 1629 KiB | 1629 KiB | -14.1% |
| update-batched/memory/teardown | 0 KiB | 0 KiB | — |
| update-fanout/bare | 1.05 ms | 1.13 ms | +110.8% |
| update-fanout/compose | 1.82 ms | 2.23 ms | +90.7% |
| update-fanout/memory/mounted | 1565 KiB | 1565 KiB | -14.9% |
| update-fanout/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| update-leaf/bare | 13.6 µs | 17.0 µs | -14.5% |
| update-leaf/compose | 35.9 µs | 54.7 µs | -16.5% |
| update-leaf/memory/mounted | 2355 KiB | 2355 KiB | -2.6% |
| update-leaf/memory/teardown | 0 KiB | 0 KiB | — |
| update-repeated/bare | 31.4 µs | 31.6 µs | +51.2% |
| update-repeated/compose | 261.5 µs | 270.6 µs | +24.1% |
| update-repeated/memory/mounted | 30 KiB | 30 KiB | -23.1% |
| update-repeated/memory/teardown | 9 KiB | 9 KiB | — |
| virtual-filtered-list.extreme/bare/burst | 600.47 ms | 652.63 ms | +10.6% |
| virtual-filtered-list.extreme/bare/cold | 384.63 ms | 409.59 ms | +11.0% |
| virtual-filtered-list.extreme/bare/settle | 3.1 µs | 3.4 µs | +12.4% |
| virtual-filtered-list.extreme/bare/steady | 7.44 ms | 10.15 ms | +9.1% |
| virtual-filtered-list.extreme/bare/teardown | 199.5 µs | 329.5 µs | -10.8% |
| virtual-filtered-list.extreme/compose/burst | 660.00 ms | 689.16 ms | -2.0% |
| virtual-filtered-list.extreme/compose/cold | 402.56 ms | 428.93 ms | +0.7% |
| virtual-filtered-list.extreme/compose/counts | 1078.43 ms | 1078.43 ms | +3.2% |
| virtual-filtered-list.extreme/compose/settle | 2.7 µs | 3.0 µs | +0.1% |
| virtual-filtered-list.extreme/compose/steady | 13.73 ms | 15.90 ms | +6.3% |
| virtual-filtered-list.extreme/compose/teardown | 570.2 µs | 666.4 µs | -4.4% |
| virtual-filtered-list.extreme/memory/mounted | 31774 KiB | 31774 KiB | -1.2% |
| virtual-filtered-list.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| virtual-filtered-list.large/bare/burst | 114.35 ms | 116.95 ms | -6.5% |
| virtual-filtered-list.large/bare/cold | 73.47 ms | 77.43 ms | -7.2% |
| virtual-filtered-list.large/bare/settle | 1.9 µs | 2.4 µs | -28.3% |
| virtual-filtered-list.large/bare/steady | 7.18 ms | 9.53 ms | +5.4% |
| virtual-filtered-list.large/bare/teardown | 98.6 µs | 225.3 µs | -4.4% |
| virtual-filtered-list.large/compose/burst | 130.63 ms | 144.75 ms | -14.6% |
| virtual-filtered-list.large/compose/cold | 78.39 ms | 84.01 ms | -9.7% |
| virtual-filtered-list.large/compose/counts | 237.45 ms | 237.45 ms | -18.9% |
| virtual-filtered-list.large/compose/settle | 2.0 µs | 2.5 µs | -21.1% |
| virtual-filtered-list.large/compose/steady | 13.82 ms | 19.83 ms | -23.5% |
| virtual-filtered-list.large/compose/teardown | 316.6 µs | 371.5 µs | -23.8% |
| virtual-filtered-list.large/memory/mounted | 6941 KiB | 6941 KiB | -3.4% |
| virtual-filtered-list.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| virtual-filtered-list.medium/bare/burst | 18.51 ms | 20.45 ms | -7.5% |
| virtual-filtered-list.medium/bare/cold | 11.81 ms | 12.51 ms | -2.6% |
| virtual-filtered-list.medium/bare/settle | 1.3 µs | 2.2 µs | -42.6% |
| virtual-filtered-list.medium/bare/steady | 6.09 ms | 7.87 ms | -3.4% |
| virtual-filtered-list.medium/bare/teardown | 59.6 µs | 307.7 µs | -5.3% |
| virtual-filtered-list.medium/compose/burst | 24.75 ms | 28.94 ms | -18.7% |
| virtual-filtered-list.medium/compose/cold | 12.62 ms | 16.45 ms | -11.6% |
| virtual-filtered-list.medium/compose/counts | 60.49 ms | 60.49 ms | -1.9% |
| virtual-filtered-list.medium/compose/settle | 1.7 µs | 2.1 µs | -14.7% |
| virtual-filtered-list.medium/compose/steady | 11.78 ms | 16.07 ms | -25.7% |
| virtual-filtered-list.medium/compose/teardown | 197.9 µs | 247.4 µs | -43.2% |
| virtual-filtered-list.medium/memory/mounted | 1662 KiB | 1662 KiB | -8.9% |
| virtual-filtered-list.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |

## Trends over the last 3 main commits

```mermaid
xychart-beta
    title "animate-many/compose (median µs)"
    x-axis 1 --> 3
    line [9621.1, 4735.8, 9612.0]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [12461.7, 6898.2, 13915.6]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [16620.2, 11340.5, 15315.5]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [110129.9, 64349.2, 116391.7]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.2, 1.4, 1.4]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [46868.1, 25388.1, 44800.9]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [6005.0, 4705.5, 6853.0]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [5466.6, 3087.8, 5962.6]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [7156.2, 4813.3, 6183.5]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [76248.8, 48338.1, 78084.1]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [0.9, 1.2, 1.4]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [35460.5, 19037.5, 35808.1]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1975.4, 1851.1, 2399.1]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [1463.5, 1805.0, 1407.7]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [2013.4, 1659.3, 1575.4]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [22746.0, 29658.4, 24261.2]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [0.5, 0.5, 0.6]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [11237.2, 14637.0, 10651.3]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [356.0, 417.8, 496.0]
```

```mermaid
xychart-beta
    title "branch-swap/compose (median µs)"
    x-axis 1 --> 3
    line [4113.6, 4729.3, 3561.0]
```

```mermaid
xychart-beta
    title "cold-mount-100/compose (median µs)"
    x-axis 1 --> 3
    line [686.8, 560.2, 838.1]
```

```mermaid
xychart-beta
    title "cold-mount-1000/compose (median µs)"
    x-axis 1 --> 3
    line [8399.3, 4719.3, 3773.5]
```

```mermaid
xychart-beta
    title "cold-mount-10000/compose (median µs)"
    x-axis 1 --> 3
    line [74882.4, 77308.0, 75289.0]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [917195.8, 848359.9, 869706.9]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [564671.1, 532198.1, 527821.7]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [1731762.7, 1413521.5, 1498282.4]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.1, 2.1, 1.9]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [27880.3, 26608.5, 24816.6]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1360.6, 1265.7, 1291.4]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [108370.1, 137573.0, 114009.5]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [60694.5, 76941.3, 63120.6]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [187980.4, 244856.9, 207644.2]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.5, 1.6, 2.4]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [14957.3, 18099.0, 16104.9]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [469.9, 567.8, 474.6]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [69739.0, 35886.9, 46673.5]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [39856.7, 21102.5, 25793.1]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [141793.3, 71603.8, 99581.8]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.3, 1.0, 1.8]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [20754.9, 8162.0, 12334.8]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [356.8, 187.9, 248.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [20153.1, 12231.0, 11532.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [606.7, 398.8, 383.4]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [23438.8, 13693.1, 17691.5]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.3, 0.9, 1.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [863.1, 432.7, 533.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [599.1, 388.0, 393.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [9706.7, 4188.0, 5056.8]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [371.6, 211.1, 249.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [16409.6, 9670.9, 14102.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.0, 0.6, 1.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [865.5, 435.0, 514.3]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [297.0, 159.4, 204.5]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [3256.9, 3747.3, 2886.3]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [214.4, 274.0, 218.8]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [6736.4, 8374.2, 5949.6]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [0.8, 1.3, 0.7]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [823.5, 817.9, 816.4]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [120.9, 153.9, 121.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [57275.1, 58550.6, 48500.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [35128.8, 48787.2, 29239.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [203645.1, 278041.5, 232881.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.7, 2.7, 2.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [67605.4, 110490.0, 62006.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1382.9, 1964.2, 1144.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [22661.4, 12171.9, 13759.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [16026.8, 10773.1, 8930.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [80942.4, 39356.0, 64825.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.9, 1.8, 1.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [29699.1, 13169.4, 18127.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [555.6, 288.1, 337.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [8775.5, 6489.2, 8202.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [6847.6, 4064.4, 5318.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [33013.6, 23547.5, 40497.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.1, 1.6, 2.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [10632.2, 6021.8, 10678.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [231.8, 181.7, 264.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [38163.8, 45513.9, 41164.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [30010.2, 36978.8, 29991.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [308853.3, 356183.6, 347691.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.9, 1.8, 2.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [170674.3, 195161.2, 168550.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1011.2, 1123.7, 1080.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [20445.0, 22651.5, 14964.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [12195.2, 16233.7, 12335.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [116758.9, 159716.3, 121699.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.7, 2.6, 1.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [65487.9, 100478.1, 59706.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [465.8, 729.5, 440.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [7359.9, 9363.4, 7988.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [5217.5, 8076.9, 4571.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [53771.4, 72919.2, 57149.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.0, 1.3, 1.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [24173.9, 29083.3, 23959.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [206.6, 265.4, 235.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [67899.9, 40475.8, 49011.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [43440.3, 23189.6, 21354.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [322090.0, 155075.8, 263232.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.2, 2.0, 2.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [168290.2, 78037.0, 94632.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1918.2, 1082.7, 1099.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [15198.1, 12817.1, 17384.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [14413.0, 10025.1, 12412.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [94808.6, 66047.0, 131198.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.7, 2.1, 2.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [42870.9, 30465.6, 44952.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [421.7, 347.3, 504.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [9268.9, 6214.3, 6318.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [6175.2, 5202.2, 4209.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [48430.6, 24546.5, 34883.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.8, 1.7, 1.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [18970.0, 11144.9, 13984.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [266.7, 172.8, 182.1]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [21280.1, 17085.4, 25262.9]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [107928.0, 93149.3, 109143.0]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [345877.0, 271171.1, 372031.9]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.8, 2.2, 2.2]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [112062.9, 90774.1, 117256.3]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [33241.4, 38551.9, 37604.0]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [8720.8, 10514.8, 8702.4]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [35331.9, 46561.1, 36425.1]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [127887.2, 165417.5, 156094.5]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.4, 1.6, 2.0]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [42270.1, 58987.0, 46845.8]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [9384.4, 11676.7, 12636.7]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [8064.7, 5412.3, 8325.1]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [23640.0, 18354.3, 20523.4]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [92316.8, 67519.0, 107959.8]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.6, 2.1, 2.2]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [39845.5, 29943.1, 47449.4]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [6105.6, 6486.4, 6913.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [95057.1, 94073.3, 97254.7]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [30591.9, 22227.2, 28424.7]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [228810.1, 211002.3, 277035.4]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.0, 2.8, 2.9]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [56507.4, 52162.7, 59312.8]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [13113.8, 13417.0, 14500.7]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [27403.3, 40547.2, 27643.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [11952.4, 12445.2, 13843.1]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [100423.7, 101703.7, 92984.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.5, 2.3, 2.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [19345.5, 23966.2, 20176.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [2906.6, 4134.8, 3277.4]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [13879.1, 10176.6, 13944.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [6104.0, 4520.5, 5933.8]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [39918.2, 26024.7, 45495.9]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.3, 1.8, 2.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [8588.8, 6714.5, 10581.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1136.6, 1234.8, 1482.3]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [139551.2, 143863.6, 147758.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [37476.4, 26814.0, 37931.2]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [453942.0, 363604.4, 495520.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.0, 2.9, 2.8]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [149428.6, 140862.0, 167028.5]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [13492.1, 13806.8, 15285.8]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [64372.4, 33315.0, 43296.5]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [12505.9, 8058.4, 8874.3]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [187160.4, 84451.7, 121670.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.3, 1.9, 2.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [56628.5, 29545.4, 39104.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [3915.7, 2636.1, 3097.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [20435.0, 27247.9, 20502.7]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [6221.8, 7648.4, 5806.6]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [79311.3, 99350.5, 73925.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.2, 2.3, 1.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [21056.0, 29692.1, 21901.2]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1121.8, 1664.5, 1361.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [55182.4, 21144.1, 30740.0]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [32818.0, 17437.9, 19443.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [135325.6, 59311.0, 95734.4]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.6, 1.7, 2.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [5921.1, 2635.6, 4056.5]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [15688.5, 7760.4, 10927.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [17004.7, 10266.2, 12968.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [14612.0, 9463.4, 9673.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [56031.2, 30721.5, 40692.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.0, 1.2, 1.6]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [2403.1, 1405.3, 2440.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [4514.6, 2934.8, 3895.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [6844.5, 9109.6, 5969.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [6071.8, 5752.8, 4648.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [24575.3, 28494.2, 23587.6]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [0.9, 2.3, 0.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [968.2, 1678.2, 1013.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1286.2, 1937.9, 1228.0]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [53690.8, 21373.5, 33150.6]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [42536.2, 18791.7, 19043.0]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [210738.5, 102006.1, 145730.7]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.5, 1.5, 1.8]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [52614.8, 24846.6, 30404.9]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [16453.7, 7976.6, 10670.0]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [19159.2, 27915.4, 15705.5]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [18682.7, 20066.2, 13238.4]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [91912.5, 114130.0, 97208.5]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.2, 2.6, 1.6]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [22658.3, 28149.5, 23067.9]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [4112.4, 6443.5, 4511.9]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [6413.9, 7923.0, 6655.7]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [7035.0, 7218.0, 4634.0]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [34527.2, 41760.6, 39554.7]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [0.9, 2.2, 1.4]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [9633.0, 11476.3, 10002.5]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1339.3, 2013.9, 1522.0]
```

```mermaid
xychart-beta
    title "events/compose (median µs)"
    x-axis 1 --> 3
    line [12824.2, 16203.6, 12880.5]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [10283.2, 16184.3, 10218.7]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [26249.5, 32777.8, 23939.4]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [42785.5, 50581.3, 44294.9]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.2, 2.7, 1.8]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [264.2, 375.4, 304.4]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [2274.0, 4160.9, 2610.4]
```

```mermaid
xychart-beta
    title "inspector.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [5172.9, 5523.4, 4834.6]
```

```mermaid
xychart-beta
    title "inspector.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [10732.1, 10546.3, 9019.8]
```

```mermaid
xychart-beta
    title "inspector.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [22551.8, 25059.8, 22413.4]
```

```mermaid
xychart-beta
    title "inspector.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [0.8, 2.1, 1.0]
```

```mermaid
xychart-beta
    title "inspector.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [256.4, 347.2, 245.5]
```

```mermaid
xychart-beta
    title "inspector.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1173.0, 1562.2, 1034.1]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [1730.1, 812.1, 949.5]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [2916.5, 2007.5, 1674.3]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [6271.7, 3825.7, 3465.4]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [0.6, 0.4, 0.6]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [220.2, 113.5, 160.3]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [363.0, 214.0, 235.1]
```

```mermaid
xychart-beta
    title "keyed-append/compose (median µs)"
    x-axis 1 --> 3
    line [2241.5, 1230.1, 2017.3]
```

```mermaid
xychart-beta
    title "keyed-insert/compose (median µs)"
    x-axis 1 --> 3
    line [3904.0, 2135.2, 3946.0]
```

```mermaid
xychart-beta
    title "keyed-prepend/compose (median µs)"
    x-axis 1 --> 3
    line [4631.9, 5670.2, 4810.1]
```

```mermaid
xychart-beta
    title "keyed-remove/compose (median µs)"
    x-axis 1 --> 3
    line [3754.0, 2340.4, 3841.8]
```

```mermaid
xychart-beta
    title "keyed-replace/compose (median µs)"
    x-axis 1 --> 3
    line [52486.3, 65204.8, 53183.6]
```

```mermaid
xychart-beta
    title "keyed-reverse/compose (median µs)"
    x-axis 1 --> 3
    line [3454.2, 4152.3, 3170.7]
```

```mermaid
xychart-beta
    title "keyed-rotate/compose (median µs)"
    x-axis 1 --> 3
    line [3675.5, 4205.0, 3245.0]
```

```mermaid
xychart-beta
    title "keyed-shuffle/compose (median µs)"
    x-axis 1 --> 3
    line [3509.2, 4344.0, 3309.9]
```

```mermaid
xychart-beta
    title "mount-cycles/compose (median µs)"
    x-axis 1 --> 3
    line [22487.2, 16290.9, 25389.8]
```

```mermaid
xychart-beta
    title "mount-dispose/compose (median µs)"
    x-axis 1 --> 3
    line [8156.2, 11089.1, 7309.6]
```

```mermaid
xychart-beta
    title "ordered-window-scroll/compose (median µs)"
    x-axis 1 --> 3
    line [476.6, 541.8, 471.3]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [30003.3, 30104.3, 33381.7]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [21590.6, 18636.7, 17711.5]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [222074.4, 182929.5, 238390.1]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.0, 3.0, 2.5]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [101466.1, 63734.7, 97238.3]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1168.5, 1282.5, 1345.4]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [30042.0, 37026.2, 26826.4]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [9782.2, 11285.3, 8011.4]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [203516.4, 232335.1, 211377.1]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.6, 2.4, 1.7]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [102067.8, 113887.3, 93404.2]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1105.1, 1578.5, 1068.9]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [18821.8, 22931.8, 19566.8]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [5108.5, 6142.9, 3823.9]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [126713.0, 160716.4, 148021.9]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.2, 1.5, 2.2]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [59494.9, 76366.9, 54077.8]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [772.6, 884.1, 896.1]
```

```mermaid
xychart-beta
    title "scene-3d/compose (median µs)"
    x-axis 1 --> 3
    line [10372.3, 5793.5, 5440.4]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [127130.6, 167018.1, 115393.0]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [4.2, 4.6, 4.2]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [296908.1, 344119.5, 308098.2]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.2, 2.3, 1.9]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [160845.4, 196666.1, 197076.8]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [2.2, 2.6, 2.2]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [57003.0, 42123.0, 46878.9]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [4.4, 3.1, 3.5]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [128750.1, 75810.9, 99563.4]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.2, 1.6, 1.6]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [69667.1, 42712.5, 61818.0]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [2.2, 1.7, 2.0]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [14058.5, 13643.4, 14167.1]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [3.3, 3.2, 3.5]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [28155.4, 34778.7, 33666.4]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.1, 1.2, 1.8]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [16033.0, 21649.1, 18367.5]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [1.4, 1.7, 1.8]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [122493.7, 149820.6, 129214.0]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [9688.2, 11822.6, 13879.1]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [218379.0, 269117.3, 254745.5]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.8, 2.0, 2.4]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [53873.0, 66474.9, 52024.6]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [3328.9, 4158.0, 4512.2]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [30042.5, 39771.4, 33445.5]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [2800.4, 3543.0, 3829.8]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [58121.2, 76076.5, 68807.2]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.0, 1.2, 2.3]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [15596.8, 21949.3, 16415.8]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [739.4, 972.7, 805.0]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [10440.0, 15557.2, 11457.1]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [925.2, 1427.4, 1127.5]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [27492.1, 38434.8, 28600.2]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [0.8, 1.2, 1.4]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [7535.1, 11593.9, 7440.0]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [209.5, 316.8, 257.4]
```

```mermaid
xychart-beta
    title "status-panel/compose (median µs)"
    x-axis 1 --> 3
    line [468.9, 653.2, 449.9]
```

```mermaid
xychart-beta
    title "unwind/compose (median µs)"
    x-axis 1 --> 3
    line [4377.9, 5909.9, 4681.9]
```

```mermaid
xychart-beta
    title "update-batched/compose (median µs)"
    x-axis 1 --> 3
    line [3498.0, 1720.7, 3034.6]
```

```mermaid
xychart-beta
    title "update-fanout/compose (median µs)"
    x-axis 1 --> 3
    line [2181.8, 955.8, 1823.1]
```

```mermaid
xychart-beta
    title "update-leaf/compose (median µs)"
    x-axis 1 --> 3
    line [36.3, 43.0, 35.9]
```

```mermaid
xychart-beta
    title "update-repeated/compose (median µs)"
    x-axis 1 --> 3
    line [393.2, 210.7, 261.5]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/burst (median µs)"
    x-axis 1 --> 3
    line [874021.2, 673319.5, 659995.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/cold (median µs)"
    x-axis 1 --> 3
    line [548551.6, 399701.0, 402562.3]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/counts (median µs)"
    x-axis 1 --> 3
    line [1518062.6, 1045366.1, 1078431.5]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/settle (median µs)"
    x-axis 1 --> 3
    line [2.2, 2.7, 2.7]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/steady (median µs)"
    x-axis 1 --> 3
    line [21817.1, 12911.6, 13726.7]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [597.3, 596.2, 570.2]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/burst (median µs)"
    x-axis 1 --> 3
    line [129597.0, 152881.9, 130628.4]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/cold (median µs)"
    x-axis 1 --> 3
    line [77495.7, 86845.4, 78386.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/counts (median µs)"
    x-axis 1 --> 3
    line [233844.8, 292742.7, 237449.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.8, 2.5, 2.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/steady (median µs)"
    x-axis 1 --> 3
    line [16797.9, 18068.3, 13820.3]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [394.3, 415.6, 316.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/burst (median µs)"
    x-axis 1 --> 3
    line [26466.6, 30431.0, 24749.7]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/cold (median µs)"
    x-axis 1 --> 3
    line [13006.1, 14270.7, 12615.2]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/counts (median µs)"
    x-axis 1 --> 3
    line [59589.6, 61649.5, 60488.9]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/settle (median µs)"
    x-axis 1 --> 3
    line [1.3, 2.0, 1.7]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/steady (median µs)"
    x-axis 1 --> 3
    line [13755.1, 15839.6, 11775.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/teardown (median µs)"
    x-axis 1 --> 3
    line [209.7, 348.6, 197.9]
```

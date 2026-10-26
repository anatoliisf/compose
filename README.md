# Compose performance

Latest: `7674be4f4f78cf71119b8a6f66980b6df0a8a94e` on 2026-10-26T220118Z, measured on the CI Ubuntu runner by the paired performance shards.
Each value is the median of the candidate arm's samples; p95 is shown beside it. Change compares the previous main commit.

| Benchmark | Median | p95 | Change |
| --- | --- | --- | --- |
| animate-many/bare | 1.65 ms | 1.73 ms | -1.2% |
| animate-many/compose | 9.02 ms | 9.36 ms | +2.3% |
| animate-many/memory/mounted | 2391 KiB | 2391 KiB | +0.0% |
| animate-many/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.extreme/bare/burst | 1.39 ms | 1.43 ms | +90.8% |
| animated-navigation.extreme/bare/cold | 4.49 ms | 7.50 ms | +33.8% |
| animated-navigation.extreme/bare/settle | 0.6 µs | 0.6 µs | +55.8% |
| animated-navigation.extreme/bare/steady | 18.81 ms | 19.72 ms | +96.5% |
| animated-navigation.extreme/bare/teardown | 3.17 ms | 3.79 ms | +44.5% |
| animated-navigation.extreme/compose/burst | 10.35 ms | 10.65 ms | +91.1% |
| animated-navigation.extreme/compose/cold | 11.22 ms | 13.80 ms | +63.4% |
| animated-navigation.extreme/compose/counts | 99.33 ms | 99.33 ms | +94.7% |
| animated-navigation.extreme/compose/settle | 0.6 µs | 0.9 µs | +48.7% |
| animated-navigation.extreme/compose/steady | 39.99 ms | 41.15 ms | +95.0% |
| animated-navigation.extreme/compose/teardown | 5.25 ms | 6.15 ms | +76.3% |
| animated-navigation.extreme/memory/mounted | 7535 KiB | 7535 KiB | +0.0% |
| animated-navigation.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.large/bare/burst | 719.6 µs | 817.5 µs | +0.3% |
| animated-navigation.large/bare/cold | 3.09 ms | 4.29 ms | +54.4% |
| animated-navigation.large/bare/settle | 0.8 µs | 1.4 µs | -28.9% |
| animated-navigation.large/bare/steady | 9.35 ms | 9.59 ms | +3.0% |
| animated-navigation.large/bare/teardown | 1.36 ms | 1.99 ms | +0.3% |
| animated-navigation.large/compose/burst | 5.31 ms | 6.41 ms | -2.7% |
| animated-navigation.large/compose/cold | 7.80 ms | 10.08 ms | +8.5% |
| animated-navigation.large/compose/counts | 76.89 ms | 76.89 ms | -3.3% |
| animated-navigation.large/compose/settle | 1.3 µs | 1.6 µs | +18.0% |
| animated-navigation.large/compose/steady | 33.94 ms | 34.74 ms | -2.3% |
| animated-navigation.large/compose/teardown | 2.47 ms | 2.80 ms | -3.2% |
| animated-navigation.large/memory/mounted | 3784 KiB | 3784 KiB | +0.0% |
| animated-navigation.large/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.medium/bare/burst | 209.4 µs | 253.4 µs | +74.3% |
| animated-navigation.medium/bare/cold | 536.9 µs | 936.7 µs | +116.1% |
| animated-navigation.medium/bare/settle | 0.4 µs | 0.5 µs | +70.8% |
| animated-navigation.medium/bare/steady | 2.60 ms | 2.65 ms | +69.9% |
| animated-navigation.medium/bare/teardown | 198.2 µs | 266.6 µs | +73.7% |
| animated-navigation.medium/compose/burst | 1.70 ms | 1.75 ms | +116.6% |
| animated-navigation.medium/compose/cold | 1.42 ms | 2.32 ms | +91.6% |
| animated-navigation.medium/compose/counts | 28.47 ms | 28.47 ms | +117.1% |
| animated-navigation.medium/compose/settle | 0.5 µs | 0.6 µs | +56.1% |
| animated-navigation.medium/compose/steady | 13.28 ms | 13.81 ms | +126.9% |
| animated-navigation.medium/compose/teardown | 416.5 µs | 492.2 µs | +86.6% |
| animated-navigation.medium/memory/mounted | 1282 KiB | 1282 KiB | +0.0% |
| animated-navigation.medium/memory/teardown | 0 KiB | 0 KiB | — |
| branch-swap/bare | 3.57 ms | 5.76 ms | -14.3% |
| branch-swap/compose | 4.40 ms | 7.70 ms | -20.2% |
| branch-swap/memory/mounted | 27 KiB | 27 KiB | +0.0% |
| branch-swap/memory/teardown | 0 KiB | 0 KiB | — |
| cold-mount-100/bare | 680.4 µs | 1.25 ms | -18.1% |
| cold-mount-100/compose | 531.3 µs | 1.03 ms | -16.9% |
| cold-mount-100/memory/mounted | 2240 KiB | 2240 KiB | -0.4% |
| cold-mount-100/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| cold-mount-1000/bare | 7.05 ms | 9.57 ms | +40.6% |
| cold-mount-1000/compose | 6.10 ms | 13.72 ms | -21.8% |
| cold-mount-1000/memory/mounted | 21906 KiB | 21906 KiB | +0.0% |
| cold-mount-1000/memory/teardown | 0 KiB | 0 KiB | — |
| cold-mount-10000/bare | 59.82 ms | 110.90 ms | -15.8% |
| cold-mount-10000/compose | 111.35 ms | 153.07 ms | +19.2% |
| cold-mount-10000/memory/mounted | 219958 KiB | 219958 KiB | -0.0% |
| cold-mount-10000/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| data-grid.extreme/bare/burst | 715.85 ms | 737.28 ms | +2.4% |
| data-grid.extreme/bare/cold | 454.26 ms | 466.53 ms | +2.5% |
| data-grid.extreme/bare/settle | 2.4 µs | 3.0 µs | +11.9% |
| data-grid.extreme/bare/steady | 18.59 ms | 22.68 ms | -3.3% |
| data-grid.extreme/bare/teardown | 488.2 µs | 574.8 µs | +9.1% |
| data-grid.extreme/compose/burst | 772.29 ms | 793.74 ms | +2.3% |
| data-grid.extreme/compose/cold | 476.09 ms | 486.12 ms | +2.9% |
| data-grid.extreme/compose/counts | 1340.88 ms | 1340.88 ms | +2.2% |
| data-grid.extreme/compose/settle | 2.1 µs | 2.5 µs | -0.0% |
| data-grid.extreme/compose/steady | 23.57 ms | 30.15 ms | -0.4% |
| data-grid.extreme/compose/teardown | 1.17 ms | 1.30 ms | +3.9% |
| data-grid.extreme/memory/mounted | 33063 KiB | 33063 KiB | +0.0% |
| data-grid.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| data-grid.large/bare/burst | 114.20 ms | 117.21 ms | -15.1% |
| data-grid.large/bare/cold | 69.52 ms | 75.39 ms | -17.0% |
| data-grid.large/bare/settle | 1.9 µs | 3.0 µs | -47.4% |
| data-grid.large/bare/steady | 9.88 ms | 15.75 ms | -22.0% |
| data-grid.large/bare/teardown | 200.4 µs | 271.4 µs | -24.6% |
| data-grid.large/compose/burst | 135.42 ms | 141.03 ms | -10.8% |
| data-grid.large/compose/cold | 74.63 ms | 81.97 ms | -19.0% |
| data-grid.large/compose/counts | 248.49 ms | 248.49 ms | -12.0% |
| data-grid.large/compose/settle | 2.0 µs | 2.8 µs | -31.0% |
| data-grid.large/compose/steady | 17.19 ms | 20.15 ms | -7.9% |
| data-grid.large/compose/teardown | 540.5 µs | 769.3 µs | -15.8% |
| data-grid.large/memory/mounted | 7474 KiB | 7474 KiB | -0.1% |
| data-grid.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| data-grid.medium/bare/burst | 52.83 ms | 54.61 ms | +80.2% |
| data-grid.medium/bare/cold | 33.49 ms | 34.37 ms | +82.8% |
| data-grid.medium/bare/settle | 0.9 µs | 2.0 µs | +65.5% |
| data-grid.medium/bare/steady | 7.17 ms | 11.05 ms | +96.2% |
| data-grid.medium/bare/teardown | 104.3 µs | 183.0 µs | +76.6% |
| data-grid.medium/compose/burst | 61.51 ms | 67.64 ms | +76.2% |
| data-grid.medium/compose/cold | 36.21 ms | 38.05 ms | +86.6% |
| data-grid.medium/compose/counts | 144.00 ms | 144.00 ms | +103.0% |
| data-grid.medium/compose/settle | 1.1 µs | 2.3 µs | +63.1% |
| data-grid.medium/compose/steady | 14.34 ms | 18.45 ms | +105.2% |
| data-grid.medium/compose/teardown | 289.9 µs | 346.0 µs | +80.2% |
| data-grid.medium/memory/mounted | 3935 KiB | 3935 KiB | +0.0% |
| data-grid.medium/memory/teardown | 0 KiB | 0 KiB | — |
| dense-dashboard.extreme/bare/burst | 5.78 ms | 7.07 ms | +70.7% |
| dense-dashboard.extreme/bare/cold | 215.8 µs | 379.9 µs | +89.5% |
| dense-dashboard.extreme/bare/settle | 0.7 µs | 1.0 µs | +59.2% |
| dense-dashboard.extreme/bare/steady | 133.8 µs | 148.2 µs | +77.3% |
| dense-dashboard.extreme/bare/teardown | 200.5 µs | 256.5 µs | +50.3% |
| dense-dashboard.extreme/compose/burst | 14.60 ms | 17.27 ms | +81.4% |
| dense-dashboard.extreme/compose/cold | 461.3 µs | 724.8 µs | +85.7% |
| dense-dashboard.extreme/compose/counts | 21.52 ms | 21.52 ms | +78.0% |
| dense-dashboard.extreme/compose/settle | 0.8 µs | 1.0 µs | +48.1% |
| dense-dashboard.extreme/compose/steady | 842.4 µs | 855.6 µs | +86.0% |
| dense-dashboard.extreme/compose/teardown | 507.9 µs | 538.3 µs | +75.1% |
| dense-dashboard.extreme/memory/mounted | 1250 KiB | 1250 KiB | +0.0% |
| dense-dashboard.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| dense-dashboard.large/bare/burst | 2.85 ms | 4.18 ms | -15.7% |
| dense-dashboard.large/bare/cold | 133.2 µs | 261.4 µs | -12.9% |
| dense-dashboard.large/bare/settle | 0.7 µs | 1.1 µs | -4.5% |
| dense-dashboard.large/bare/steady | 132.3 µs | 152.9 µs | -0.3% |
| dense-dashboard.large/bare/teardown | 97.0 µs | 134.6 µs | -10.2% |
| dense-dashboard.large/compose/burst | 8.46 ms | 10.88 ms | -0.2% |
| dense-dashboard.large/compose/cold | 340.1 µs | 929.4 µs | -2.7% |
| dense-dashboard.large/compose/counts | 16.08 ms | 16.08 ms | -3.8% |
| dense-dashboard.large/compose/settle | 0.8 µs | 1.0 µs | -8.0% |
| dense-dashboard.large/compose/steady | 839.5 µs | 880.0 µs | +1.6% |
| dense-dashboard.large/compose/teardown | 284.2 µs | 360.6 µs | +6.3% |
| dense-dashboard.large/memory/mounted | 672 KiB | 672 KiB | -0.1% |
| dense-dashboard.large/memory/teardown | 0 KiB | 0 KiB | — |
| dense-dashboard.medium/bare/burst | 1.01 ms | 2.07 ms | +4.1% |
| dense-dashboard.medium/bare/cold | 129.6 µs | 224.7 µs | +1.9% |
| dense-dashboard.medium/bare/settle | 0.6 µs | 0.8 µs | -13.1% |
| dense-dashboard.medium/bare/steady | 132.0 µs | 156.2 µs | +1.5% |
| dense-dashboard.medium/bare/teardown | 43.8 µs | 72.5 µs | +1.0% |
| dense-dashboard.medium/compose/burst | 2.97 ms | 4.36 ms | +4.9% |
| dense-dashboard.medium/compose/cold | 202.7 µs | 411.5 µs | +7.8% |
| dense-dashboard.medium/compose/counts | 6.36 ms | 6.36 ms | +6.6% |
| dense-dashboard.medium/compose/settle | 0.7 µs | 1.1 µs | +7.6% |
| dense-dashboard.medium/compose/steady | 821.9 µs | 850.6 µs | +0.0% |
| dense-dashboard.medium/compose/teardown | 114.1 µs | 169.1 µs | -3.0% |
| dense-dashboard.medium/memory/mounted | 336 KiB | 336 KiB | +0.0% |
| dense-dashboard.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn-10.extreme/bare/burst | 19.49 ms | 35.21 ms | +28.6% |
| entities-identity-churn-10.extreme/bare/cold | 8.67 ms | 29.27 ms | +16.1% |
| entities-identity-churn-10.extreme/bare/settle | 2.2 µs | 3.1 µs | +27.1% |
| entities-identity-churn-10.extreme/bare/steady | 31.26 ms | 43.45 ms | +7.0% |
| entities-identity-churn-10.extreme/bare/teardown | 422.1 µs | 496.1 µs | +16.6% |
| entities-identity-churn-10.extreme/compose/burst | 56.11 ms | 72.87 ms | +19.9% |
| entities-identity-churn-10.extreme/compose/cold | 31.62 ms | 53.46 ms | +10.5% |
| entities-identity-churn-10.extreme/compose/counts | 259.69 ms | 259.69 ms | +19.8% |
| entities-identity-churn-10.extreme/compose/settle | 2.2 µs | 2.5 µs | +14.6% |
| entities-identity-churn-10.extreme/compose/steady | 68.55 ms | 82.67 ms | +22.0% |
| entities-identity-churn-10.extreme/compose/teardown | 1.34 ms | 1.80 ms | +19.2% |
| entities-identity-churn-10.extreme/memory/mounted | 4391 KiB | 4391 KiB | +0.0% |
| entities-identity-churn-10.extreme/memory/teardown | 9 KiB | 9 KiB | — |
| entities-identity-churn-10.large/bare/burst | 4.60 ms | 5.92 ms | +43.6% |
| entities-identity-churn-10.large/bare/cold | 2.47 ms | 6.82 ms | +52.6% |
| entities-identity-churn-10.large/bare/settle | 0.8 µs | 1.6 µs | +54.0% |
| entities-identity-churn-10.large/bare/steady | 10.51 ms | 13.59 ms | +91.4% |
| entities-identity-churn-10.large/bare/teardown | 114.5 µs | 165.2 µs | +61.9% |
| entities-identity-churn-10.large/compose/burst | 14.94 ms | 17.77 ms | +92.4% |
| entities-identity-churn-10.large/compose/cold | 10.17 ms | 15.92 ms | +92.2% |
| entities-identity-churn-10.large/compose/counts | 64.21 ms | 64.21 ms | +85.6% |
| entities-identity-churn-10.large/compose/settle | 1.2 µs | 2.7 µs | +42.4% |
| entities-identity-churn-10.large/compose/steady | 20.35 ms | 29.12 ms | +105.7% |
| entities-identity-churn-10.large/compose/teardown | 428.1 µs | 501.4 µs | +96.4% |
| entities-identity-churn-10.large/memory/mounted | 1729 KiB | 1729 KiB | -1.1% |
| entities-identity-churn-10.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn-10.medium/bare/burst | 2.17 ms | 3.65 ms | +90.0% |
| entities-identity-churn-10.medium/bare/cold | 1.88 ms | 2.75 ms | +56.5% |
| entities-identity-churn-10.medium/bare/settle | 0.7 µs | 0.9 µs | +56.7% |
| entities-identity-churn-10.medium/bare/steady | 5.11 ms | 6.07 ms | +95.0% |
| entities-identity-churn-10.medium/bare/teardown | 66.7 µs | 117.9 µs | +97.9% |
| entities-identity-churn-10.medium/compose/burst | 6.17 ms | 8.86 ms | +85.7% |
| entities-identity-churn-10.medium/compose/cold | 4.86 ms | 6.75 ms | +67.5% |
| entities-identity-churn-10.medium/compose/counts | 28.06 ms | 28.06 ms | +77.6% |
| entities-identity-churn-10.medium/compose/settle | 0.7 µs | 0.8 µs | +30.3% |
| entities-identity-churn-10.medium/compose/steady | 8.42 ms | 9.42 ms | +90.2% |
| entities-identity-churn-10.medium/compose/teardown | 178.6 µs | 209.8 µs | +77.2% |
| entities-identity-churn-10.medium/memory/mounted | 919 KiB | 919 KiB | +1.8% |
| entities-identity-churn-10.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn-50.extreme/bare/burst | 15.11 ms | 23.29 ms | +45.1% |
| entities-identity-churn-50.extreme/bare/cold | 7.04 ms | 16.82 ms | +19.8% |
| entities-identity-churn-50.extreme/bare/settle | 1.7 µs | 1.9 µs | +7.5% |
| entities-identity-churn-50.extreme/bare/steady | 58.89 ms | 74.77 ms | +27.7% |
| entities-identity-churn-50.extreme/bare/teardown | 373.6 µs | 449.3 µs | +53.4% |
| entities-identity-churn-50.extreme/compose/burst | 40.63 ms | 61.30 ms | +16.6% |
| entities-identity-churn-50.extreme/compose/cold | 28.47 ms | 49.49 ms | +70.3% |
| entities-identity-churn-50.extreme/compose/counts | 342.10 ms | 342.10 ms | +63.9% |
| entities-identity-churn-50.extreme/compose/settle | 1.7 µs | 2.3 µs | +3.0% |
| entities-identity-churn-50.extreme/compose/steady | 174.89 ms | 189.48 ms | +68.4% |
| entities-identity-churn-50.extreme/compose/teardown | 1.07 ms | 1.90 ms | +55.5% |
| entities-identity-churn-50.extreme/memory/mounted | 4347 KiB | 4347 KiB | +0.0% |
| entities-identity-churn-50.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn-50.large/bare/burst | 5.79 ms | 14.44 ms | -14.4% |
| entities-identity-churn-50.large/bare/cold | 3.36 ms | 5.84 ms | +7.6% |
| entities-identity-churn-50.large/bare/settle | 2.0 µs | 11.9 µs | +9.8% |
| entities-identity-churn-50.large/bare/steady | 23.86 ms | 29.26 ms | +6.3% |
| entities-identity-churn-50.large/bare/teardown | 134.4 µs | 198.9 µs | -2.3% |
| entities-identity-churn-50.large/compose/burst | 17.97 ms | 20.93 ms | +19.4% |
| entities-identity-churn-50.large/compose/cold | 14.12 ms | 23.79 ms | +36.3% |
| entities-identity-churn-50.large/compose/counts | 121.59 ms | 121.59 ms | -4.7% |
| entities-identity-churn-50.large/compose/settle | 1.8 µs | 2.5 µs | -1.7% |
| entities-identity-churn-50.large/compose/steady | 59.72 ms | 76.95 ms | +1.2% |
| entities-identity-churn-50.large/compose/teardown | 437.2 µs | 500.3 µs | +4.0% |
| entities-identity-churn-50.large/memory/mounted | 1832 KiB | 1832 KiB | +3.2% |
| entities-identity-churn-50.large/memory/teardown | 24 KiB | 24 KiB | — |
| entities-identity-churn-50.medium/bare/burst | 3.07 ms | 6.18 ms | -5.1% |
| entities-identity-churn-50.medium/bare/cold | 1.45 ms | 6.68 ms | -23.4% |
| entities-identity-churn-50.medium/bare/settle | 1.2 µs | 1.6 µs | -30.8% |
| entities-identity-churn-50.medium/bare/steady | 10.06 ms | 14.94 ms | -1.8% |
| entities-identity-churn-50.medium/bare/teardown | 72.0 µs | 183.7 µs | -21.6% |
| entities-identity-churn-50.medium/compose/burst | 9.79 ms | 14.99 ms | -0.8% |
| entities-identity-churn-50.medium/compose/cold | 6.55 ms | 8.64 ms | +4.9% |
| entities-identity-churn-50.medium/compose/counts | 66.96 ms | 66.96 ms | -11.7% |
| entities-identity-churn-50.medium/compose/settle | 1.5 µs | 2.4 µs | -25.0% |
| entities-identity-churn-50.medium/compose/steady | 26.16 ms | 37.15 ms | -3.5% |
| entities-identity-churn-50.medium/compose/teardown | 265.5 µs | 505.0 µs | -9.7% |
| entities-identity-churn-50.medium/memory/mounted | 1006 KiB | 1006 KiB | +0.0% |
| entities-identity-churn-50.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-identity-churn.extreme/bare/burst | 18.82 ms | 45.87 ms | -19.9% |
| entities-identity-churn.extreme/bare/cold | 9.52 ms | 17.12 ms | -5.9% |
| entities-identity-churn.extreme/bare/settle | 2.1 µs | 3.0 µs | -24.7% |
| entities-identity-churn.extreme/bare/steady | 45.92 ms | 68.21 ms | -13.2% |
| entities-identity-churn.extreme/bare/teardown | 490.5 µs | 1.29 ms | -14.4% |
| entities-identity-churn.extreme/compose/burst | 60.12 ms | 73.99 ms | -20.7% |
| entities-identity-churn.extreme/compose/cold | 26.27 ms | 49.60 ms | -13.8% |
| entities-identity-churn.extreme/compose/counts | 275.78 ms | 275.78 ms | -25.1% |
| entities-identity-churn.extreme/compose/settle | 2.0 µs | 2.4 µs | -27.3% |
| entities-identity-churn.extreme/compose/steady | 107.22 ms | 134.47 ms | -32.2% |
| entities-identity-churn.extreme/compose/teardown | 1.37 ms | 3.70 ms | -34.6% |
| entities-identity-churn.extreme/memory/mounted | 4865 KiB | 4865 KiB | +0.0% |
| entities-identity-churn.extreme/memory/teardown | 209 KiB | 209 KiB | +0.0% |
| entities-identity-churn.large/bare/burst | 4.26 ms | 7.17 ms | -13.3% |
| entities-identity-churn.large/bare/cold | 3.08 ms | 8.84 ms | -12.3% |
| entities-identity-churn.large/bare/settle | 0.8 µs | 1.3 µs | +20.9% |
| entities-identity-churn.large/bare/steady | 14.73 ms | 17.43 ms | +7.9% |
| entities-identity-churn.large/bare/teardown | 105.4 µs | 139.0 µs | -3.6% |
| entities-identity-churn.large/compose/burst | 13.31 ms | 19.11 ms | -5.2% |
| entities-identity-churn.large/compose/cold | 11.40 ms | 21.01 ms | +5.1% |
| entities-identity-churn.large/compose/counts | 98.35 ms | 98.35 ms | +6.0% |
| entities-identity-churn.large/compose/settle | 1.1 µs | 1.5 µs | +2.9% |
| entities-identity-churn.large/compose/steady | 30.73 ms | 38.40 ms | +1.5% |
| entities-identity-churn.large/compose/teardown | 368.4 µs | 388.7 µs | +2.2% |
| entities-identity-churn.large/memory/mounted | 1712 KiB | 1712 KiB | +0.0% |
| entities-identity-churn.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn.medium/bare/burst | 2.61 ms | 4.67 ms | -8.2% |
| entities-identity-churn.medium/bare/cold | 1.33 ms | 4.77 ms | -11.0% |
| entities-identity-churn.medium/bare/settle | 1.1 µs | 2.4 µs | -17.3% |
| entities-identity-churn.medium/bare/steady | 7.79 ms | 9.54 ms | +0.5% |
| entities-identity-churn.medium/bare/teardown | 63.5 µs | 93.5 µs | -7.7% |
| entities-identity-churn.medium/compose/burst | 8.08 ms | 14.70 ms | -12.6% |
| entities-identity-churn.medium/compose/cold | 4.99 ms | 12.72 ms | -4.8% |
| entities-identity-churn.medium/compose/counts | 45.12 ms | 45.12 ms | -6.9% |
| entities-identity-churn.medium/compose/settle | 1.6 µs | 2.9 µs | -15.0% |
| entities-identity-churn.medium/compose/steady | 16.33 ms | 21.79 ms | -0.9% |
| entities-identity-churn.medium/compose/teardown | 237.9 µs | 361.0 µs | -4.6% |
| entities-identity-churn.medium/memory/mounted | 961 KiB | 961 KiB | -0.8% |
| entities-identity-churn.medium/memory/teardown | 12 KiB | 12 KiB | +200.0% |
| entities-integrated.extreme/bare/burst | 6.12 ms | 10.69 ms | -10.7% |
| entities-integrated.extreme/bare/cold | 33.99 ms | 48.79 ms | -15.1% |
| entities-integrated.extreme/bare/settle | 2.4 µs | 2.7 µs | -8.1% |
| entities-integrated.extreme/bare/steady | 26.52 ms | 42.68 ms | -15.5% |
| entities-integrated.extreme/bare/teardown | 27.87 ms | 32.92 ms | -0.2% |
| entities-integrated.extreme/compose/burst | 20.73 ms | 32.14 ms | -30.7% |
| entities-integrated.extreme/compose/cold | 118.43 ms | 163.64 ms | -8.9% |
| entities-integrated.extreme/compose/counts | 425.69 ms | 425.69 ms | +8.5% |
| entities-integrated.extreme/compose/settle | 1.9 µs | 2.6 µs | -20.2% |
| entities-integrated.extreme/compose/steady | 112.21 ms | 125.24 ms | -2.8% |
| entities-integrated.extreme/compose/teardown | 41.82 ms | 47.34 ms | -3.2% |
| entities-integrated.extreme/memory/mounted | 40384 KiB | 40384 KiB | +0.0% |
| entities-integrated.extreme/memory/teardown | 8 KiB | 8 KiB | — |
| entities-integrated.large/bare/burst | 3.01 ms | 7.32 ms | -11.6% |
| entities-integrated.large/bare/cold | 11.95 ms | 27.87 ms | -16.2% |
| entities-integrated.large/bare/settle | 1.3 µs | 2.2 µs | -26.4% |
| entities-integrated.large/bare/steady | 14.77 ms | 23.51 ms | -6.6% |
| entities-integrated.large/bare/teardown | 6.15 ms | 7.92 ms | -14.8% |
| entities-integrated.large/compose/burst | 10.07 ms | 14.78 ms | -8.0% |
| entities-integrated.large/compose/cold | 41.59 ms | 56.25 ms | -25.5% |
| entities-integrated.large/compose/counts | 165.64 ms | 165.64 ms | -19.9% |
| entities-integrated.large/compose/settle | 1.5 µs | 2.4 µs | -24.9% |
| entities-integrated.large/compose/steady | 47.28 ms | 68.81 ms | -23.0% |
| entities-integrated.large/compose/teardown | 11.74 ms | 18.24 ms | -26.0% |
| entities-integrated.large/memory/mounted | 16705 KiB | 16705 KiB | +0.0% |
| entities-integrated.large/memory/teardown | 8 KiB | 8 KiB | — |
| entities-integrated.medium/bare/burst | 2.21 ms | 4.38 ms | +3.9% |
| entities-integrated.medium/bare/cold | 4.92 ms | 8.69 ms | +15.5% |
| entities-integrated.medium/bare/settle | 0.9 µs | 1.3 µs | +7.4% |
| entities-integrated.medium/bare/steady | 10.59 ms | 16.66 ms | -6.7% |
| entities-integrated.medium/bare/teardown | 2.08 ms | 2.89 ms | +9.3% |
| entities-integrated.medium/compose/burst | 7.54 ms | 10.22 ms | +3.6% |
| entities-integrated.medium/compose/cold | 20.32 ms | 26.50 ms | +17.3% |
| entities-integrated.medium/compose/counts | 88.14 ms | 88.14 ms | -5.6% |
| entities-integrated.medium/compose/settle | 1.2 µs | 1.5 µs | +10.5% |
| entities-integrated.medium/compose/steady | 35.66 ms | 45.12 ms | -5.8% |
| entities-integrated.medium/compose/teardown | 4.44 ms | 6.86 ms | -2.6% |
| entities-integrated.medium/memory/mounted | 9029 KiB | 9029 KiB | -0.1% |
| entities-integrated.medium/memory/teardown | 9 KiB | 9 KiB | +800.0% |
| entities-relevance-saturated.extreme/bare/burst | 18.18 ms | 26.28 ms | +55.3% |
| entities-relevance-saturated.extreme/bare/cold | 9.23 ms | 29.25 ms | +43.0% |
| entities-relevance-saturated.extreme/bare/settle | 2.3 µs | 2.7 µs | +48.4% |
| entities-relevance-saturated.extreme/bare/steady | 91.79 ms | 123.91 ms | +75.4% |
| entities-relevance-saturated.extreme/bare/teardown | 3.31 ms | 4.00 ms | -1.4% |
| entities-relevance-saturated.extreme/compose/burst | 68.55 ms | 91.26 ms | +31.9% |
| entities-relevance-saturated.extreme/compose/cold | 28.45 ms | 61.79 ms | +42.1% |
| entities-relevance-saturated.extreme/compose/counts | 239.11 ms | 239.11 ms | +57.5% |
| entities-relevance-saturated.extreme/compose/settle | 2.1 µs | 2.3 µs | -2.3% |
| entities-relevance-saturated.extreme/compose/steady | 50.54 ms | 71.57 ms | +64.0% |
| entities-relevance-saturated.extreme/compose/teardown | 12.81 ms | 13.12 ms | +30.2% |
| entities-relevance-saturated.extreme/memory/mounted | 12672 KiB | 12672 KiB | +0.1% |
| entities-relevance-saturated.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-relevance-saturated.large/bare/burst | 5.94 ms | 8.88 ms | +45.9% |
| entities-relevance-saturated.large/bare/cold | 4.60 ms | 10.98 ms | +87.7% |
| entities-relevance-saturated.large/bare/settle | 1.0 µs | 2.1 µs | +38.1% |
| entities-relevance-saturated.large/bare/steady | 34.47 ms | 41.39 ms | +74.9% |
| entities-relevance-saturated.large/bare/teardown | 916.9 µs | 1.34 ms | +14.2% |
| entities-relevance-saturated.large/compose/burst | 24.30 ms | 37.83 ms | +58.3% |
| entities-relevance-saturated.large/compose/cold | 11.42 ms | 26.71 ms | +62.1% |
| entities-relevance-saturated.large/compose/counts | 95.56 ms | 95.56 ms | +62.3% |
| entities-relevance-saturated.large/compose/settle | 1.2 µs | 1.6 µs | +18.1% |
| entities-relevance-saturated.large/compose/steady | 16.22 ms | 25.65 ms | +66.6% |
| entities-relevance-saturated.large/compose/teardown | 3.02 ms | 3.33 ms | +44.1% |
| entities-relevance-saturated.large/memory/mounted | 5088 KiB | 5088 KiB | +0.0% |
| entities-relevance-saturated.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-relevance-saturated.medium/bare/burst | 3.47 ms | 6.53 ms | -15.9% |
| entities-relevance-saturated.medium/bare/cold | 1.94 ms | 4.08 ms | -3.9% |
| entities-relevance-saturated.medium/bare/settle | 1.3 µs | 1.9 µs | -39.7% |
| entities-relevance-saturated.medium/bare/steady | 15.09 ms | 21.89 ms | -15.6% |
| entities-relevance-saturated.medium/bare/teardown | 516.2 µs | 780.3 µs | -31.4% |
| entities-relevance-saturated.medium/compose/burst | 12.09 ms | 19.65 ms | -21.1% |
| entities-relevance-saturated.medium/compose/cold | 6.49 ms | 12.28 ms | -18.7% |
| entities-relevance-saturated.medium/compose/counts | 41.30 ms | 41.30 ms | -13.1% |
| entities-relevance-saturated.medium/compose/settle | 1.5 µs | 2.0 µs | -27.8% |
| entities-relevance-saturated.medium/compose/steady | 8.06 ms | 12.18 ms | -25.5% |
| entities-relevance-saturated.medium/compose/teardown | 1.34 ms | 1.51 ms | -19.3% |
| entities-relevance-saturated.medium/memory/mounted | 2557 KiB | 2557 KiB | +0.0% |
| entities-relevance-saturated.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entities-relevance-sweep.extreme/bare/burst | 40.13 ms | 66.05 ms | +60.4% |
| entities-relevance-sweep.extreme/bare/cold | 10.89 ms | 39.23 ms | -15.8% |
| entities-relevance-sweep.extreme/bare/settle | 2.6 µs | 2.9 µs | +36.0% |
| entities-relevance-sweep.extreme/bare/steady | 37.62 ms | 62.02 ms | +41.4% |
| entities-relevance-sweep.extreme/bare/teardown | 4.78 ms | 5.60 ms | +42.4% |
| entities-relevance-sweep.extreme/compose/burst | 125.43 ms | 144.19 ms | -1.8% |
| entities-relevance-sweep.extreme/compose/cold | 36.63 ms | 72.66 ms | +26.0% |
| entities-relevance-sweep.extreme/compose/counts | 424.35 ms | 424.35 ms | +11.5% |
| entities-relevance-sweep.extreme/compose/settle | 2.2 µs | 2.5 µs | +25.7% |
| entities-relevance-sweep.extreme/compose/steady | 114.29 ms | 159.42 ms | -2.8% |
| entities-relevance-sweep.extreme/compose/teardown | 15.87 ms | 20.34 ms | +20.2% |
| entities-relevance-sweep.extreme/memory/mounted | 12656 KiB | 12656 KiB | +0.0% |
| entities-relevance-sweep.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| entities-relevance-sweep.large/bare/burst | 9.43 ms | 15.36 ms | +39.4% |
| entities-relevance-sweep.large/bare/cold | 4.16 ms | 10.08 ms | +38.3% |
| entities-relevance-sweep.large/bare/settle | 1.3 µs | 2.2 µs | +104.8% |
| entities-relevance-sweep.large/bare/steady | 11.01 ms | 17.95 ms | +27.2% |
| entities-relevance-sweep.large/bare/teardown | 1.29 ms | 2.23 ms | +24.4% |
| entities-relevance-sweep.large/compose/burst | 50.27 ms | 62.55 ms | +92.4% |
| entities-relevance-sweep.large/compose/cold | 12.54 ms | 25.78 ms | +76.0% |
| entities-relevance-sweep.large/compose/counts | 148.92 ms | 148.92 ms | +109.5% |
| entities-relevance-sweep.large/compose/settle | 2.0 µs | 2.8 µs | +68.3% |
| entities-relevance-sweep.large/compose/steady | 51.10 ms | 70.36 ms | +109.2% |
| entities-relevance-sweep.large/compose/teardown | 3.87 ms | 4.32 ms | +46.2% |
| entities-relevance-sweep.large/memory/mounted | 5088 KiB | 5088 KiB | +0.0% |
| entities-relevance-sweep.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-relevance-sweep.medium/bare/burst | 4.84 ms | 11.28 ms | -34.2% |
| entities-relevance-sweep.medium/bare/cold | 1.90 ms | 5.47 ms | -20.4% |
| entities-relevance-sweep.medium/bare/settle | 1.2 µs | 1.9 µs | -51.6% |
| entities-relevance-sweep.medium/bare/steady | 4.84 ms | 6.96 ms | -32.6% |
| entities-relevance-sweep.medium/bare/teardown | 641.8 µs | 1.03 ms | -14.8% |
| entities-relevance-sweep.medium/compose/burst | 21.25 ms | 29.03 ms | -13.3% |
| entities-relevance-sweep.medium/compose/cold | 6.38 ms | 10.27 ms | -1.1% |
| entities-relevance-sweep.medium/compose/counts | 76.22 ms | 76.22 ms | -16.6% |
| entities-relevance-sweep.medium/compose/settle | 2.0 µs | 2.5 µs | -11.1% |
| entities-relevance-sweep.medium/compose/steady | 20.44 ms | 30.74 ms | -14.0% |
| entities-relevance-sweep.medium/compose/teardown | 1.43 ms | 1.84 ms | -14.8% |
| entities-relevance-sweep.medium/memory/mounted | 2556 KiB | 2556 KiB | -0.3% |
| entities-relevance-sweep.medium/memory/teardown | 0 KiB | 0 KiB | — |
| entity-labels-sparse.extreme/bare/burst | 10.46 ms | 15.67 ms | -9.1% |
| entity-labels-sparse.extreme/bare/cold | 9.08 ms | 13.78 ms | -32.0% |
| entity-labels-sparse.extreme/bare/settle | 1.1 µs | 1.6 µs | -62.0% |
| entity-labels-sparse.extreme/bare/steady | 839.1 µs | 966.6 µs | -35.6% |
| entity-labels-sparse.extreme/bare/teardown | 6.48 ms | 6.98 ms | -10.7% |
| entity-labels-sparse.extreme/compose/burst | 34.83 ms | 46.54 ms | -25.4% |
| entity-labels-sparse.extreme/compose/cold | 25.59 ms | 37.46 ms | -22.0% |
| entity-labels-sparse.extreme/compose/counts | 105.74 ms | 105.74 ms | -24.1% |
| entity-labels-sparse.extreme/compose/settle | 1.8 µs | 2.2 µs | -40.0% |
| entity-labels-sparse.extreme/compose/steady | 4.26 ms | 4.84 ms | -23.8% |
| entity-labels-sparse.extreme/compose/teardown | 12.22 ms | 13.07 ms | -22.3% |
| entity-labels-sparse.extreme/memory/mounted | 11915 KiB | 11915 KiB | +0.0% |
| entity-labels-sparse.extreme/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| entity-labels-sparse.large/bare/burst | 5.16 ms | 7.45 ms | -5.9% |
| entity-labels-sparse.large/bare/cold | 5.04 ms | 11.44 ms | -17.3% |
| entity-labels-sparse.large/bare/settle | 0.9 µs | 1.3 µs | -35.7% |
| entity-labels-sparse.large/bare/steady | 433.3 µs | 599.8 µs | -26.2% |
| entity-labels-sparse.large/bare/teardown | 2.15 ms | 2.38 ms | -9.4% |
| entity-labels-sparse.large/compose/burst | 13.88 ms | 18.93 ms | -33.1% |
| entity-labels-sparse.large/compose/cold | 11.25 ms | 18.82 ms | -27.3% |
| entity-labels-sparse.large/compose/counts | 46.76 ms | 46.76 ms | -19.6% |
| entity-labels-sparse.large/compose/settle | 1.1 µs | 2.1 µs | -55.5% |
| entity-labels-sparse.large/compose/steady | 2.09 ms | 2.31 ms | -25.8% |
| entity-labels-sparse.large/compose/teardown | 4.12 ms | 4.51 ms | -26.5% |
| entity-labels-sparse.large/memory/mounted | 6204 KiB | 6204 KiB | +0.0% |
| entity-labels-sparse.large/memory/teardown | 1 KiB | 1 KiB | — |
| entity-labels-sparse.medium/bare/burst | 1.51 ms | 2.51 ms | +3.6% |
| entity-labels-sparse.medium/bare/cold | 2.14 ms | 4.47 ms | -8.7% |
| entity-labels-sparse.medium/bare/settle | 0.7 µs | 0.9 µs | +23.3% |
| entity-labels-sparse.medium/bare/steady | 202.0 µs | 223.7 µs | -8.7% |
| entity-labels-sparse.medium/bare/teardown | 557.7 µs | 631.0 µs | +14.6% |
| entity-labels-sparse.medium/compose/burst | 5.46 ms | 7.07 ms | +1.5% |
| entity-labels-sparse.medium/compose/cold | 6.70 ms | 8.75 ms | +11.1% |
| entity-labels-sparse.medium/compose/counts | 24.93 ms | 24.93 ms | -0.8% |
| entity-labels-sparse.medium/compose/settle | 1.3 µs | 1.7 µs | +51.1% |
| entity-labels-sparse.medium/compose/steady | 1.06 ms | 1.20 ms | +7.4% |
| entity-labels-sparse.medium/compose/teardown | 1.39 ms | 2.19 ms | +14.9% |
| entity-labels-sparse.medium/memory/mounted | 2795 KiB | 2795 KiB | +0.0% |
| entity-labels-sparse.medium/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| entity-labels.extreme/bare/burst | 8.68 ms | 12.82 ms | -11.8% |
| entity-labels.extreme/bare/cold | 10.55 ms | 18.42 ms | -3.3% |
| entity-labels.extreme/bare/settle | 1.6 µs | 2.1 µs | -35.3% |
| entity-labels.extreme/bare/steady | 1.02 ms | 1.32 ms | -21.6% |
| entity-labels.extreme/bare/teardown | 6.11 ms | 7.53 ms | -18.2% |
| entity-labels.extreme/compose/burst | 37.62 ms | 42.94 ms | -25.2% |
| entity-labels.extreme/compose/cold | 29.42 ms | 41.19 ms | -9.7% |
| entity-labels.extreme/compose/counts | 210.09 ms | 210.09 ms | -10.5% |
| entity-labels.extreme/compose/settle | 2.1 µs | 3.2 µs | -22.0% |
| entity-labels.extreme/compose/steady | 44.59 ms | 52.86 ms | -10.2% |
| entity-labels.extreme/compose/teardown | 12.57 ms | 16.07 ms | -18.7% |
| entity-labels.extreme/memory/mounted | 12132 KiB | 12132 KiB | -0.1% |
| entity-labels.extreme/memory/teardown | 1 KiB | 1 KiB | -88.9% |
| entity-labels.large/bare/burst | 4.18 ms | 9.46 ms | -12.3% |
| entity-labels.large/bare/cold | 4.14 ms | 7.71 ms | -23.6% |
| entity-labels.large/bare/settle | 1.0 µs | 1.4 µs | +6.5% |
| entity-labels.large/bare/steady | 456.2 µs | 515.4 µs | -12.7% |
| entity-labels.large/bare/teardown | 2.32 ms | 3.55 ms | +12.3% |
| entity-labels.large/compose/burst | 15.35 ms | 18.43 ms | -16.1% |
| entity-labels.large/compose/cold | 13.87 ms | 21.00 ms | -23.8% |
| entity-labels.large/compose/counts | 94.85 ms | 94.85 ms | -10.2% |
| entity-labels.large/compose/settle | 1.7 µs | 1.9 µs | -29.9% |
| entity-labels.large/compose/steady | 21.97 ms | 25.92 ms | -13.2% |
| entity-labels.large/compose/teardown | 4.69 ms | 5.50 ms | -11.2% |
| entity-labels.large/memory/mounted | 6320 KiB | 6320 KiB | +0.0% |
| entity-labels.large/memory/teardown | 1 KiB | 1 KiB | — |
| entity-labels.medium/bare/burst | 1.44 ms | 2.81 ms | +3.6% |
| entity-labels.medium/bare/cold | 1.40 ms | 3.45 ms | +3.1% |
| entity-labels.medium/bare/settle | 0.6 µs | 0.9 µs | +8.6% |
| entity-labels.medium/bare/steady | 212.8 µs | 239.5 µs | +0.3% |
| entity-labels.medium/bare/teardown | 492.0 µs | 644.4 µs | -3.2% |
| entity-labels.medium/compose/burst | 5.58 ms | 6.54 ms | +4.1% |
| entity-labels.medium/compose/cold | 4.36 ms | 6.78 ms | +0.5% |
| entity-labels.medium/compose/counts | 35.29 ms | 35.29 ms | +3.5% |
| entity-labels.medium/compose/settle | 0.9 µs | 1.6 µs | +10.0% |
| entity-labels.medium/compose/steady | 9.17 ms | 10.83 ms | -1.4% |
| entity-labels.medium/compose/teardown | 1.25 ms | 1.32 ms | +3.3% |
| entity-labels.medium/memory/mounted | 2849 KiB | 2849 KiB | +0.3% |
| entity-labels.medium/memory/teardown | 0 KiB | 0 KiB | — |
| events/bare | 10.68 ms | 12.03 ms | -18.6% |
| events/compose | 13.91 ms | 16.84 ms | +6.3% |
| events/memory/mounted | 4 KiB | 4 KiB | -98.5% |
| events/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| inspector.extreme/bare/burst | 1.70 ms | 2.27 ms | +74.5% |
| inspector.extreme/bare/cold | 7.15 ms | 10.83 ms | +85.1% |
| inspector.extreme/bare/settle | 0.7 µs | 0.9 µs | +49.9% |
| inspector.extreme/bare/steady | 71.5 µs | 88.3 µs | +75.6% |
| inspector.extreme/bare/teardown | 5.13 ms | 6.35 ms | +35.2% |
| inspector.extreme/compose/burst | 9.05 ms | 9.46 ms | +85.6% |
| inspector.extreme/compose/cold | 24.53 ms | 28.31 ms | +62.8% |
| inspector.extreme/compose/counts | 42.34 ms | 42.34 ms | +63.6% |
| inspector.extreme/compose/settle | 0.9 µs | 1.2 µs | +40.8% |
| inspector.extreme/compose/steady | 273.1 µs | 289.1 µs | +68.9% |
| inspector.extreme/compose/teardown | 2.12 ms | 2.75 ms | +69.9% |
| inspector.extreme/memory/mounted | 21871 KiB | 21871 KiB | -0.0% |
| inspector.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| inspector.large/bare/burst | 732.5 µs | 772.3 µs | -19.6% |
| inspector.large/bare/cold | 2.88 ms | 6.38 ms | -35.8% |
| inspector.large/bare/settle | 0.6 µs | 1.1 µs | -8.8% |
| inspector.large/bare/steady | 65.9 µs | 78.2 µs | -23.2% |
| inspector.large/bare/teardown | 1.81 ms | 2.34 ms | +5.3% |
| inspector.large/compose/burst | 4.65 ms | 5.56 ms | -8.6% |
| inspector.large/compose/cold | 10.04 ms | 14.12 ms | -2.3% |
| inspector.large/compose/counts | 23.42 ms | 23.42 ms | -7.5% |
| inspector.large/compose/settle | 0.9 µs | 1.0 µs | -46.7% |
| inspector.large/compose/steady | 258.8 µs | 330.5 µs | -16.1% |
| inspector.large/compose/teardown | 1.26 ms | 2.11 ms | -21.3% |
| inspector.large/memory/mounted | 7208 KiB | 7208 KiB | +0.1% |
| inspector.large/memory/teardown | 0 KiB | 0 KiB | — |
| inspector.medium/bare/burst | 257.7 µs | 270.5 µs | -2.8% |
| inspector.medium/bare/cold | 1.07 ms | 2.86 ms | +21.3% |
| inspector.medium/bare/settle | 0.4 µs | 0.6 µs | -6.4% |
| inspector.medium/bare/steady | 59.5 µs | 72.6 µs | -1.0% |
| inspector.medium/bare/teardown | 382.4 µs | 489.5 µs | +12.1% |
| inspector.medium/compose/burst | 1.59 ms | 2.12 ms | -3.4% |
| inspector.medium/compose/cold | 2.33 ms | 4.68 ms | -17.2% |
| inspector.medium/compose/counts | 5.66 ms | 5.66 ms | -1.1% |
| inspector.medium/compose/settle | 0.7 µs | 0.9 µs | -1.7% |
| inspector.medium/compose/steady | 260.8 µs | 605.9 µs | +10.9% |
| inspector.medium/compose/teardown | 449.6 µs | 780.5 µs | +4.0% |
| inspector.medium/memory/mounted | 1884 KiB | 1884 KiB | +0.0% |
| inspector.medium/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-append/bare | 1.23 ms | 1.75 ms | -30.6% |
| keyed-append/compose | 1.86 ms | 2.33 ms | -11.1% |
| keyed-append/memory/mounted | 2201 KiB | 2201 KiB | +0.0% |
| keyed-append/memory/teardown | 8 KiB | 8 KiB | — |
| keyed-insert/bare | 1.58 ms | 1.87 ms | +1.3% |
| keyed-insert/compose | 3.59 ms | 3.85 ms | +0.3% |
| keyed-insert/memory/mounted | 2250 KiB | 2250 KiB | +0.4% |
| keyed-insert/memory/teardown | 8 KiB | 8 KiB | +0.0% |
| keyed-prepend/bare | 1.73 ms | 2.61 ms | -3.8% |
| keyed-prepend/compose | 6.08 ms | 6.84 ms | +5.8% |
| keyed-prepend/memory/mounted | 2291 KiB | 2291 KiB | +0.0% |
| keyed-prepend/memory/teardown | 8 KiB | 8 KiB | +0.0% |
| keyed-remove/bare | 1.51 ms | 1.85 ms | -6.9% |
| keyed-remove/compose | 3.55 ms | 3.93 ms | -9.0% |
| keyed-remove/memory/mounted | 2244 KiB | 2244 KiB | +0.4% |
| keyed-remove/memory/teardown | 8 KiB | 8 KiB | — |
| keyed-replace/bare | 32.55 ms | 37.20 ms | -9.8% |
| keyed-replace/compose | 63.44 ms | 70.31 ms | -15.7% |
| keyed-replace/memory/mounted | 2220 KiB | 2220 KiB | -0.4% |
| keyed-replace/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| keyed-reverse/bare | 1.22 ms | 1.45 ms | +80.8% |
| keyed-reverse/compose | 3.84 ms | 4.08 ms | +91.6% |
| keyed-reverse/memory/mounted | 2279 KiB | 2279 KiB | +0.0% |
| keyed-reverse/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-rotate/bare | 1.22 ms | 1.34 ms | -5.4% |
| keyed-rotate/compose | 3.95 ms | 4.08 ms | -4.4% |
| keyed-rotate/memory/mounted | 2279 KiB | 2279 KiB | +0.0% |
| keyed-rotate/memory/teardown | 8 KiB | 8 KiB | +0.0% |
| keyed-shuffle/bare | 1.27 ms | 1.45 ms | -2.5% |
| keyed-shuffle/compose | 4.25 ms | 4.69 ms | +4.9% |
| keyed-shuffle/memory/mounted | 2279 KiB | 2279 KiB | +0.0% |
| keyed-shuffle/memory/teardown | 8 KiB | 8 KiB | +0.0% |
| mount-cycles/bare | 18.31 ms | 23.12 ms | -3.5% |
| mount-cycles/compose | 32.33 ms | 34.91 ms | +19.1% |
| mount-cycles/memory/mounted | 12 KiB | 12 KiB | +200.0% |
| mount-cycles/memory/teardown | 0 KiB | 0 KiB | — |
| mount-dispose/bare | 8.47 ms | 11.33 ms | +1.8% |
| mount-dispose/compose | 9.76 ms | 14.67 ms | -12.4% |
| mount-dispose/memory/mounted | 4 KiB | 4 KiB | -80.0% |
| mount-dispose/memory/teardown | 0 KiB | 0 KiB | — |
| ordered-window-scroll/compose | 557.2 µs | 595.9 µs | +1.8% |
| ordered-window-scroll/memory/mounted | 1131 KiB | 1131 KiB | +0.0% |
| ordered-window-scroll/memory/teardown | 0 KiB | 0 KiB | — |
| scene-2d.extreme/bare/burst | 9.74 ms | 17.48 ms | +4.0% |
| scene-2d.extreme/bare/cold | 1.73 ms | 7.80 ms | -28.4% |
| scene-2d.extreme/bare/settle | 2.4 µs | 3.4 µs | +5.2% |
| scene-2d.extreme/bare/steady | 48.04 ms | 52.08 ms | -8.6% |
| scene-2d.extreme/bare/teardown | 662.7 µs | 1.13 ms | -0.2% |
| scene-2d.extreme/compose/burst | 29.34 ms | 46.31 ms | +9.0% |
| scene-2d.extreme/compose/cold | 17.39 ms | 28.39 ms | -7.7% |
| scene-2d.extreme/compose/counts | 238.07 ms | 238.07 ms | -0.1% |
| scene-2d.extreme/compose/settle | 2.3 µs | 2.8 µs | +0.0% |
| scene-2d.extreme/compose/steady | 94.71 ms | 110.70 ms | -2.2% |
| scene-2d.extreme/compose/teardown | 1.31 ms | 1.67 ms | +0.3% |
| scene-2d.extreme/memory/mounted | 13261 KiB | 13261 KiB | -0.1% |
| scene-2d.extreme/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| scene-2d.large/bare/burst | 9.17 ms | 18.79 ms | -5.9% |
| scene-2d.large/bare/cold | 1.65 ms | 3.18 ms | +8.0% |
| scene-2d.large/bare/settle | 1.6 µs | 2.6 µs | +8.0% |
| scene-2d.large/bare/steady | 48.99 ms | 55.58 ms | +4.6% |
| scene-2d.large/bare/teardown | 576.1 µs | 1.03 ms | -0.4% |
| scene-2d.large/compose/burst | 29.51 ms | 35.71 ms | +18.9% |
| scene-2d.large/compose/cold | 6.50 ms | 9.92 ms | -2.8% |
| scene-2d.large/compose/counts | 209.85 ms | 209.85 ms | -3.4% |
| scene-2d.large/compose/settle | 1.5 µs | 2.1 µs | +38.5% |
| scene-2d.large/compose/steady | 94.48 ms | 96.71 ms | +3.0% |
| scene-2d.large/compose/teardown | 1.17 ms | 1.93 ms | +9.6% |
| scene-2d.large/memory/mounted | 4831 KiB | 4831 KiB | +0.0% |
| scene-2d.large/memory/teardown | 8 KiB | 8 KiB | +0.0% |
| scene-2d.medium/bare/burst | 8.75 ms | 10.76 ms | +36.4% |
| scene-2d.medium/bare/cold | 1.44 ms | 3.33 ms | -40.4% |
| scene-2d.medium/bare/settle | 1.7 µs | 2.9 µs | -22.9% |
| scene-2d.medium/bare/steady | 36.74 ms | 39.68 ms | -4.6% |
| scene-2d.medium/bare/teardown | 500.3 µs | 710.4 µs | -16.8% |
| scene-2d.medium/compose/burst | 20.31 ms | 27.29 ms | -16.6% |
| scene-2d.medium/compose/cold | 5.70 ms | 8.32 ms | +12.9% |
| scene-2d.medium/compose/counts | 168.36 ms | 168.36 ms | -3.5% |
| scene-2d.medium/compose/settle | 1.9 µs | 2.2 µs | -18.5% |
| scene-2d.medium/compose/steady | 71.35 ms | 76.91 ms | -1.8% |
| scene-2d.medium/compose/teardown | 1.07 ms | 1.26 ms | -7.0% |
| scene-2d.medium/memory/mounted | 2337 KiB | 2337 KiB | -5.5% |
| scene-2d.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| scene-3d/bare | 3.54 ms | 4.38 ms | +3.8% |
| scene-3d/compose | 7.37 ms | 8.40 ms | -0.1% |
| scene-3d/memory/mounted | 1252 KiB | 1252 KiB | +0.0% |
| scene-3d/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| session-cycle.extreme/bare/burst | 171.22 ms | 215.40 ms | +59.7% |
| session-cycle.extreme/bare/cold | 4.9 µs | 7.0 µs | +7.5% |
| session-cycle.extreme/bare/settle | 3.3 µs | 15.6 µs | +14.8% |
| session-cycle.extreme/bare/steady | 220.27 ms | 292.96 ms | -11.2% |
| session-cycle.extreme/bare/teardown | 3.1 µs | 4.1 µs | +14.2% |
| session-cycle.extreme/compose/burst | 155.20 ms | 175.73 ms | -3.9% |
| session-cycle.extreme/compose/cold | 4.8 µs | 7.6 µs | -16.3% |
| session-cycle.extreme/compose/counts | 388.44 ms | 388.44 ms | +7.8% |
| session-cycle.extreme/compose/settle | 2.4 µs | 4.1 µs | +5.2% |
| session-cycle.extreme/compose/steady | 217.22 ms | 254.90 ms | -4.9% |
| session-cycle.extreme/compose/teardown | 2.7 µs | 3.5 µs | +4.7% |
| session-cycle.extreme/memory/mounted | 20 KiB | 20 KiB | -98.1% |
| session-cycle.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| session-cycle.large/bare/burst | 48.08 ms | 70.82 ms | +11.9% |
| session-cycle.large/bare/cold | 4.4 µs | 9.6 µs | -19.2% |
| session-cycle.large/bare/settle | 2.5 µs | 3.3 µs | -6.0% |
| session-cycle.large/bare/steady | 63.39 ms | 104.07 ms | -7.4% |
| session-cycle.large/bare/teardown | 2.2 µs | 3.2 µs | -17.6% |
| session-cycle.large/compose/burst | 62.67 ms | 80.40 ms | +26.8% |
| session-cycle.large/compose/cold | 4.9 µs | 7.4 µs | +5.2% |
| session-cycle.large/compose/counts | 120.02 ms | 120.02 ms | -28.0% |
| session-cycle.large/compose/settle | 2.2 µs | 3.2 µs | +5.9% |
| session-cycle.large/compose/steady | 72.85 ms | 108.82 ms | -28.3% |
| session-cycle.large/compose/teardown | 2.6 µs | 3.8 µs | -1.2% |
| session-cycle.large/memory/mounted | 5 KiB | 5 KiB | -99.1% |
| session-cycle.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| session-cycle.medium/bare/burst | 10.17 ms | 16.71 ms | -8.9% |
| session-cycle.medium/bare/cold | 3.5 µs | 6.2 µs | +10.1% |
| session-cycle.medium/bare/settle | 1.4 µs | 2.6 µs | +19.3% |
| session-cycle.medium/bare/steady | 19.56 ms | 27.38 ms | +14.6% |
| session-cycle.medium/bare/teardown | 1.4 µs | 2.8 µs | -4.8% |
| session-cycle.medium/compose/burst | 17.43 ms | 24.36 ms | +13.2% |
| session-cycle.medium/compose/cold | 3.4 µs | 5.6 µs | +6.0% |
| session-cycle.medium/compose/counts | 42.72 ms | 42.72 ms | +3.7% |
| session-cycle.medium/compose/settle | 1.3 µs | 2.1 µs | -9.6% |
| session-cycle.medium/compose/steady | 22.07 ms | 30.12 ms | -16.2% |
| session-cycle.medium/compose/teardown | 1.6 µs | 2.1 µs | -3.5% |
| session-cycle.medium/memory/mounted | 0 KiB | 0 KiB | — |
| session-cycle.medium/memory/teardown | 0 KiB | 0 KiB | — |
| spatial-scene.extreme/bare/burst | 54.22 ms | 78.10 ms | -17.4% |
| spatial-scene.extreme/bare/cold | 4.53 ms | 10.94 ms | -33.7% |
| spatial-scene.extreme/bare/settle | 2.4 µs | 3.0 µs | -24.5% |
| spatial-scene.extreme/bare/steady | 73.34 ms | 76.71 ms | -4.2% |
| spatial-scene.extreme/bare/teardown | 1.78 ms | 3.48 ms | +2.4% |
| spatial-scene.extreme/compose/burst | 150.12 ms | 159.06 ms | -16.8% |
| spatial-scene.extreme/compose/cold | 11.91 ms | 17.78 ms | -23.2% |
| spatial-scene.extreme/compose/counts | 302.53 ms | 302.53 ms | -13.6% |
| spatial-scene.extreme/compose/settle | 2.0 µs | 3.7 µs | -15.1% |
| spatial-scene.extreme/compose/steady | 64.90 ms | 79.30 ms | -12.1% |
| spatial-scene.extreme/compose/teardown | 4.14 ms | 6.72 ms | -23.4% |
| spatial-scene.extreme/memory/mounted | 5493 KiB | 5493 KiB | +0.0% |
| spatial-scene.extreme/memory/teardown | 2 KiB | 2 KiB | — |
| spatial-scene.large/bare/burst | 15.49 ms | 19.86 ms | +7.6% |
| spatial-scene.large/bare/cold | 1.14 ms | 3.10 ms | +7.5% |
| spatial-scene.large/bare/settle | 1.6 µs | 2.1 µs | +28.6% |
| spatial-scene.large/bare/steady | 20.17 ms | 21.04 ms | -10.7% |
| spatial-scene.large/bare/teardown | 326.2 µs | 480.7 µs | +8.0% |
| spatial-scene.large/compose/burst | 36.38 ms | 44.51 ms | -5.8% |
| spatial-scene.large/compose/cold | 4.81 ms | 5.47 ms | +43.4% |
| spatial-scene.large/compose/counts | 82.55 ms | 82.55 ms | +4.2% |
| spatial-scene.large/compose/settle | 1.9 µs | 2.5 µs | +58.1% |
| spatial-scene.large/compose/steady | 21.55 ms | 23.67 ms | +0.2% |
| spatial-scene.large/compose/teardown | 874.0 µs | 1.11 ms | +10.3% |
| spatial-scene.large/memory/mounted | 1827 KiB | 1827 KiB | +0.3% |
| spatial-scene.large/memory/teardown | 1 KiB | 1 KiB | — |
| spatial-scene.medium/bare/burst | 4.76 ms | 8.39 ms | +2.3% |
| spatial-scene.medium/bare/cold | 452.5 µs | 1.53 ms | -3.8% |
| spatial-scene.medium/bare/settle | 1.3 µs | 2.2 µs | -34.4% |
| spatial-scene.medium/bare/steady | 8.48 ms | 10.16 ms | -5.2% |
| spatial-scene.medium/bare/teardown | 129.8 µs | 380.1 µs | -0.9% |
| spatial-scene.medium/compose/burst | 16.08 ms | 20.37 ms | +4.4% |
| spatial-scene.medium/compose/cold | 1.77 ms | 2.69 ms | +20.9% |
| spatial-scene.medium/compose/counts | 42.83 ms | 42.83 ms | -0.4% |
| spatial-scene.medium/compose/settle | 1.7 µs | 2.7 µs | -14.8% |
| spatial-scene.medium/compose/steady | 11.39 ms | 13.15 ms | +2.5% |
| spatial-scene.medium/compose/teardown | 459.6 µs | 603.7 µs | +37.7% |
| spatial-scene.medium/memory/mounted | 728 KiB | 728 KiB | +1.3% |
| spatial-scene.medium/memory/teardown | 9 KiB | 9 KiB | — |
| status-panel/bare | 90.4 µs | 131.9 µs | +93.3% |
| status-panel/compose | 579.2 µs | 615.3 µs | +95.6% |
| status-panel/memory/mounted | 49 KiB | 49 KiB | +0.0% |
| status-panel/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| unwind/bare | 2.41 ms | 4.16 ms | -5.6% |
| unwind/compose | 4.83 ms | 7.12 ms | +25.2% |
| unwind/memory/mounted | 11 KiB | 11 KiB | +0.0% |
| unwind/memory/teardown | 0 KiB | 0 KiB | — |
| update-batched/bare | 878.9 µs | 918.1 µs | -15.8% |
| update-batched/compose | 2.82 ms | 3.02 ms | -9.1% |
| update-batched/memory/mounted | 1878 KiB | 1878 KiB | -0.4% |
| update-batched/memory/teardown | 0 KiB | 0 KiB | — |
| update-fanout/bare | 1.03 ms | 1.09 ms | +112.5% |
| update-fanout/compose | 1.82 ms | 1.90 ms | +122.6% |
| update-fanout/memory/mounted | 1823 KiB | 1823 KiB | +0.0% |
| update-fanout/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| update-leaf/bare | 17.3 µs | 17.9 µs | -19.4% |
| update-leaf/compose | 46.2 µs | 47.7 µs | +0.7% |
| update-leaf/memory/mounted | 2774 KiB | 2774 KiB | +0.3% |
| update-leaf/memory/teardown | 0 KiB | 0 KiB | — |
| update-repeated/bare | 37.5 µs | 38.7 µs | -0.4% |
| update-repeated/compose | 386.4 µs | 405.0 µs | -2.4% |
| update-repeated/memory/mounted | 28 KiB | 28 KiB | +0.0% |
| update-repeated/memory/teardown | 8 KiB | 8 KiB | — |
| virtual-filtered-list.extreme/bare/burst | 764.84 ms | 783.74 ms | +5.0% |
| virtual-filtered-list.extreme/bare/cold | 489.10 ms | 502.90 ms | +4.8% |
| virtual-filtered-list.extreme/bare/settle | 2.6 µs | 3.0 µs | +2.8% |
| virtual-filtered-list.extreme/bare/steady | 10.21 ms | 12.11 ms | +3.7% |
| virtual-filtered-list.extreme/bare/teardown | 198.7 µs | 243.4 µs | +6.2% |
| virtual-filtered-list.extreme/compose/burst | 845.22 ms | 879.23 ms | +8.3% |
| virtual-filtered-list.extreme/compose/cold | 519.08 ms | 541.11 ms | +6.9% |
| virtual-filtered-list.extreme/compose/counts | 1369.44 ms | 1369.44 ms | +3.7% |
| virtual-filtered-list.extreme/compose/settle | 1.9 µs | 2.4 µs | -11.1% |
| virtual-filtered-list.extreme/compose/steady | 18.05 ms | 21.54 ms | +1.1% |
| virtual-filtered-list.extreme/compose/teardown | 556.3 µs | 794.3 µs | +3.3% |
| virtual-filtered-list.extreme/memory/mounted | 31843 KiB | 31843 KiB | -0.0% |
| virtual-filtered-list.extreme/memory/teardown | 9 KiB | 9 KiB | +800.0% |
| virtual-filtered-list.large/bare/burst | 111.68 ms | 115.57 ms | +77.1% |
| virtual-filtered-list.large/bare/cold | 72.17 ms | 75.90 ms | +75.4% |
| virtual-filtered-list.large/bare/settle | 1.1 µs | 2.4 µs | +92.0% |
| virtual-filtered-list.large/bare/steady | 6.66 ms | 9.52 ms | +66.1% |
| virtual-filtered-list.large/bare/teardown | 114.7 µs | 268.3 µs | +93.0% |
| virtual-filtered-list.large/compose/burst | 122.39 ms | 125.84 ms | +77.2% |
| virtual-filtered-list.large/compose/cold | 76.52 ms | 82.12 ms | +76.0% |
| virtual-filtered-list.large/compose/counts | 225.18 ms | 225.18 ms | +76.7% |
| virtual-filtered-list.large/compose/settle | 1.2 µs | 2.2 µs | +52.6% |
| virtual-filtered-list.large/compose/steady | 13.57 ms | 16.28 ms | +66.9% |
| virtual-filtered-list.large/compose/teardown | 293.8 µs | 337.6 µs | +69.2% |
| virtual-filtered-list.large/memory/mounted | 6982 KiB | 6982 KiB | +0.0% |
| virtual-filtered-list.large/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| virtual-filtered-list.medium/bare/burst | 19.16 ms | 20.58 ms | +2.0% |
| virtual-filtered-list.medium/bare/cold | 11.45 ms | 13.31 ms | -2.3% |
| virtual-filtered-list.medium/bare/settle | 1.7 µs | 2.9 µs | +79.4% |
| virtual-filtered-list.medium/bare/steady | 6.62 ms | 9.80 ms | +8.7% |
| virtual-filtered-list.medium/bare/teardown | 69.8 µs | 98.5 µs | +15.0% |
| virtual-filtered-list.medium/compose/burst | 23.83 ms | 29.27 ms | -2.5% |
| virtual-filtered-list.medium/compose/cold | 12.35 ms | 14.02 ms | -3.8% |
| virtual-filtered-list.medium/compose/counts | 60.94 ms | 60.94 ms | -2.5% |
| virtual-filtered-list.medium/compose/settle | 1.6 µs | 2.4 µs | +39.7% |
| virtual-filtered-list.medium/compose/steady | 12.56 ms | 16.85 ms | -10.1% |
| virtual-filtered-list.medium/compose/teardown | 194.4 µs | 233.6 µs | -11.1% |
| virtual-filtered-list.medium/memory/mounted | 1688 KiB | 1688 KiB | +0.0% |
| virtual-filtered-list.medium/memory/teardown | 0 KiB | 0 KiB | — |

## Trends over the last 22 main commits

```mermaid
xychart-beta
    title "animate-many/compose (median µs)"
    x-axis 1 --> 22
    line [9621.1, 4735.8, 9612.0, 7315.2, 9298.7, 4130.8, 8970.6, 6790.0, 8834.4, 9205.4, 9306.1, 9292.8, 4799.0, 9161.8, 4902.4, 4191.9, 9068.1, 8766.5, 4198.0, 9106.8, 8812.6, 9018.9]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [12461.7, 6898.2, 13915.6, 9639.3, 10905.1, 5761.3, 10113.7, 11560.1, 10842.8, 12348.2, 10426.3, 10764.8, 8413.1, 11612.7, 9088.3, 5246.3, 11867.2, 10792.9, 8751.7, 10545.1, 5417.4, 10352.0]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [16620.2, 11340.5, 15315.5, 12396.6, 13713.1, 7474.2, 13373.9, 13257.9, 12235.4, 11996.7, 13273.8, 13300.5, 8485.0, 13524.2, 9443.8, 8468.3, 14553.2, 13281.6, 9844.9, 11022.4, 6863.5, 11215.0]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [110129.9, 64349.2, 116391.7, 98569.9, 102876.7, 58688.1, 115195.9, 108552.8, 103684.7, 115937.5, 106415.2, 111517.3, 69185.6, 111367.5, 75157.6, 61703.5, 121144.3, 97313.7, 76393.8, 100027.7, 51011.6, 99326.3]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.2, 1.4, 1.4, 1.1, 1.1, 0.7, 1.1, 1.4, 0.9, 1.4, 0.7, 1.2, 1.0, 1.1, 1.0, 0.7, 1.2, 1.1, 1.1, 0.7, 0.4, 0.6]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [46868.1, 25388.1, 44800.9, 36175.8, 41986.1, 21150.1, 40467.5, 39782.6, 41428.4, 44914.1, 40760.0, 40602.3, 24776.9, 43474.0, 26309.4, 19709.9, 43774.9, 40296.3, 24582.5, 40685.6, 20506.3, 39990.7]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [6005.0, 4705.5, 6853.0, 6189.7, 6219.9, 3693.0, 6309.6, 6278.2, 5999.3, 7491.5, 5412.1, 6942.1, 4250.5, 6786.2, 4660.1, 3451.8, 7156.4, 6192.8, 4544.8, 5447.8, 2977.0, 5249.1]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [5466.6, 3087.8, 5962.6, 4686.8, 5103.1, 2868.2, 5466.2, 5265.7, 5203.7, 5908.6, 5162.6, 5477.3, 3485.2, 5570.7, 3972.3, 2743.9, 5046.1, 5416.8, 4981.3, 5057.2, 5460.4, 5311.3]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [7156.2, 4813.3, 6183.5, 5849.2, 6189.4, 4268.5, 7025.1, 5800.1, 6961.6, 6669.8, 5592.5, 5777.9, 4927.5, 7385.2, 5169.2, 4696.1, 5514.8, 7626.9, 6577.0, 6406.6, 7184.5, 7797.2]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [76248.8, 48338.1, 78084.1, 68688.7, 75988.3, 46887.2, 80418.2, 77193.1, 76591.3, 85909.7, 76703.1, 83933.1, 52237.7, 87116.2, 55206.4, 43133.9, 75942.8, 78449.8, 68043.5, 70805.6, 79481.4, 76894.2]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [0.9, 1.2, 1.4, 1.2, 0.8, 1.0, 1.1, 1.4, 0.8, 1.4, 0.6, 1.1, 0.7, 1.1, 0.8, 0.6, 0.8, 1.1, 1.3, 0.6, 1.1, 1.3]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [35460.5, 19037.5, 35808.1, 28678.7, 32946.1, 17234.9, 34669.9, 32836.2, 33753.5, 35965.6, 33580.5, 34615.5, 18867.2, 35156.6, 21295.6, 16923.0, 33166.9, 34296.9, 28151.3, 32755.2, 34740.3, 33937.2]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1975.4, 1851.1, 2399.1, 2304.8, 2075.6, 1672.7, 2579.5, 2372.6, 2180.7, 2684.2, 1910.4, 2522.5, 1640.1, 2454.4, 1910.3, 1238.0, 2056.1, 2301.7, 2181.8, 1866.8, 2550.9, 2469.9]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [1463.5, 1805.0, 1407.7, 1828.7, 1713.2, 1721.3, 1089.5, 842.0, 1734.8, 1371.7, 837.2, 999.1, 1721.7, 1812.8, 1349.6, 779.2, 1774.3, 1755.1, 846.0, 1726.4, 785.0, 1700.0]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [2013.4, 1659.3, 1575.4, 1806.3, 1454.3, 1510.6, 1309.3, 1262.3, 1600.9, 1362.0, 1114.5, 1106.6, 1816.0, 1916.6, 1411.0, 1033.3, 1882.6, 1726.4, 1064.2, 1488.7, 738.5, 1415.3]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [22746.0, 29658.4, 24261.2, 29711.8, 27538.5, 28220.6, 22030.3, 17110.4, 28591.1, 24743.2, 17148.6, 18167.6, 28376.3, 30524.5, 22988.2, 13747.6, 30513.1, 27507.8, 15585.4, 29535.9, 13117.0, 28472.2]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [0.5, 0.5, 0.6, 0.6, 0.5, 0.6, 0.5, 0.6, 0.6, 0.4, 0.5, 0.5, 0.6, 0.9, 0.5, 0.4, 1.0, 0.6, 0.5, 0.5, 0.3, 0.5]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [11237.2, 14637.0, 10651.3, 14357.3, 13461.9, 13406.0, 8401.2, 6375.1, 13610.7, 10392.6, 6186.6, 7688.8, 13447.4, 13901.2, 10215.3, 5845.4, 13107.8, 13527.2, 6531.9, 13446.8, 5854.3, 13280.4]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [356.0, 417.8, 496.0, 505.8, 421.2, 418.6, 338.6, 432.0, 436.3, 384.9, 351.9, 309.6, 472.7, 597.3, 383.1, 337.5, 663.1, 476.5, 258.9, 421.1, 223.2, 416.5]
```

```mermaid
xychart-beta
    title "branch-swap/compose (median µs)"
    x-axis 1 --> 22
    line [4113.6, 4729.3, 3561.0, 2524.1, 2610.3, 2522.9, 4591.4, 1909.9, 4240.8, 3939.9, 3102.4, 4086.3, 4713.5, 5185.1, 5329.1, 2353.1, 4969.3, 5028.7, 3624.7, 4874.4, 5507.4, 4395.0]
```

```mermaid
xychart-beta
    title "cold-mount-100/compose (median µs)"
    x-axis 1 --> 22
    line [686.8, 560.2, 838.1, 567.4, 589.5, 322.8, 586.1, 833.3, 574.8, 590.4, 542.0, 551.8, 731.2, 1077.2, 808.7, 483.9, 513.1, 534.3, 922.8, 567.9, 639.7, 531.3]
```

```mermaid
xychart-beta
    title "cold-mount-1000/compose (median µs)"
    x-axis 1 --> 22
    line [8399.3, 4719.3, 3773.5, 7121.6, 6041.0, 5964.6, 7856.3, 5534.2, 7586.1, 7564.1, 6423.2, 5716.5, 6155.1, 4680.5, 6242.3, 3574.2, 8163.7, 6784.7, 5523.8, 7026.9, 7804.5, 6104.5]
```

```mermaid
xychart-beta
    title "cold-mount-10000/compose (median µs)"
    x-axis 1 --> 22
    line [74882.4, 77308.0, 75289.0, 90310.2, 100985.1, 86939.8, 92707.3, 108106.4, 117169.6, 87680.3, 84895.8, 118560.2, 74046.2, 87189.7, 102051.1, 65038.2, 94025.5, 96889.0, 94901.7, 182168.4, 93383.3, 111347.0]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [917195.8, 848359.9, 869706.9, 657651.2, 855176.6, 921506.7, 908083.0, 573450.9, 461483.4, 761043.5, 816508.3, 689906.6, 803454.6, 618026.1, 853689.3, 524407.7, 829320.4, 694790.7, 531210.0, 585345.5, 754887.8, 772293.0]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [564671.1, 532198.1, 527821.7, 398200.7, 504535.6, 560369.8, 559329.2, 357117.7, 275265.8, 469042.6, 502280.7, 419753.1, 493032.1, 374544.2, 525916.9, 330742.4, 514822.8, 415984.9, 320520.3, 345634.0, 462469.9, 476090.6]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [1731762.7, 1413521.5, 1498282.4, 1110786.6, 1445044.7, 1520204.8, 1598444.8, 1013220.0, 820746.8, 1359771.1, 1345694.4, 1198215.0, 1381937.6, 1103694.0, 1487289.3, 939246.6, 1449304.9, 1164488.0, 914851.5, 944741.2, 1311694.3, 1340877.2]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.1, 2.1, 1.9, 2.3, 2.1, 2.0, 2.5, 1.9, 2.3, 1.6, 2.0, 2.4, 2.0, 2.1, 2.0, 2.5, 3.0, 2.6, 2.8, 2.9, 2.1, 2.1]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [27880.3, 26608.5, 24816.6, 19150.7, 24207.3, 25586.7, 23913.6, 16161.1, 13884.4, 22676.4, 23497.7, 19627.2, 24715.0, 19926.1, 21328.2, 13514.4, 19969.7, 19510.9, 15303.7, 13224.5, 23661.7, 23571.0]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1360.6, 1265.7, 1291.4, 1110.8, 1495.5, 1394.8, 1342.7, 1198.4, 894.8, 1159.8, 1218.1, 1067.8, 1172.8, 980.9, 1356.9, 990.5, 1421.0, 1112.8, 1135.4, 1185.1, 1123.5, 1167.7]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [108370.1, 137573.0, 114009.5, 133242.0, 132707.0, 131389.9, 95336.0, 90479.1, 132048.5, 117034.0, 90517.6, 99924.5, 142674.2, 152054.8, 107266.5, 109774.4, 131631.2, 133642.9, 121904.3, 189744.7, 151845.7, 135416.4]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [60694.5, 76941.3, 63120.6, 77459.9, 77741.8, 77504.9, 55851.8, 49552.1, 78186.9, 63835.1, 50574.9, 58902.3, 83015.1, 91492.9, 63434.2, 63517.8, 78011.2, 75642.8, 68891.3, 120222.9, 92098.4, 74633.1]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [187980.4, 244856.9, 207644.2, 241741.6, 244790.8, 244140.2, 179442.8, 167872.8, 245479.5, 209517.2, 173625.5, 183503.3, 247575.1, 280353.1, 191777.3, 191942.0, 246828.4, 241264.2, 220125.9, 368904.3, 282491.5, 248494.0]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.5, 1.6, 2.4, 1.8, 1.5, 1.4, 1.2, 2.6, 1.6, 1.7, 2.0, 1.4, 1.6, 2.2, 1.3, 2.0, 1.6, 1.4, 2.5, 2.0, 2.9, 2.0]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [14957.3, 18099.0, 16104.9, 16959.8, 15977.4, 16630.3, 11479.9, 11754.6, 16353.8, 12991.3, 10569.2, 12334.9, 17439.5, 17744.9, 12209.4, 12926.7, 16077.8, 16718.3, 14103.3, 18470.0, 18673.3, 17193.8]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [469.9, 567.8, 474.6, 573.2, 553.4, 516.9, 391.3, 447.8, 530.9, 497.7, 413.5, 417.8, 673.8, 622.3, 432.9, 482.3, 498.6, 494.5, 593.8, 536.3, 641.7, 540.5]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [69739.0, 35886.9, 46673.5, 57857.6, 48420.1, 50977.2, 67910.8, 47817.6, 71027.7, 60248.1, 63971.8, 40554.9, 61266.2, 43948.0, 45646.3, 37707.1, 69933.5, 61140.7, 40745.2, 63439.8, 34916.1, 61511.6]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [39856.7, 21102.5, 25793.1, 34471.6, 28818.4, 27678.6, 37266.3, 27413.1, 42489.8, 36315.9, 37015.0, 23026.9, 36389.3, 25537.0, 24976.5, 22520.6, 36575.2, 36342.5, 24121.2, 35877.5, 19402.6, 36210.4]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [141793.3, 71603.8, 99581.8, 122381.7, 107874.3, 104361.4, 148720.8, 103336.5, 148623.9, 130794.7, 134981.7, 87414.3, 140256.9, 101443.1, 103966.6, 82991.9, 140560.5, 132248.1, 88553.3, 139829.2, 70947.7, 144000.7]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.3, 1.0, 1.8, 1.5, 2.2, 2.0, 2.7, 2.0, 2.4, 1.4, 1.9, 1.2, 1.8, 2.0, 2.6, 1.8, 2.5, 1.0, 1.1, 1.5, 0.7, 1.1]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [20754.9, 8162.0, 12334.8, 12381.3, 12840.2, 10470.5, 13619.2, 11418.3, 14976.0, 13623.4, 16125.3, 9286.1, 15988.6, 10571.0, 10284.2, 8331.7, 13691.2, 13996.3, 10262.7, 13810.7, 6990.4, 14343.4]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [356.8, 187.9, 248.2, 292.5, 260.1, 258.1, 350.6, 241.2, 365.1, 291.9, 312.0, 182.4, 298.5, 260.1, 225.5, 199.1, 374.9, 287.6, 199.1, 292.5, 160.9, 289.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [20153.1, 12231.0, 11532.2, 14838.7, 15355.1, 14237.6, 19804.9, 12160.9, 22267.2, 17938.8, 17343.2, 11744.1, 18935.9, 12431.7, 13563.7, 10265.6, 18057.4, 15307.7, 10841.2, 15532.2, 8047.5, 14601.3]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [606.7, 398.8, 383.4, 479.8, 502.1, 460.9, 622.2, 391.5, 598.7, 533.1, 544.2, 396.2, 582.7, 433.7, 388.8, 357.0, 574.0, 491.1, 349.3, 485.5, 248.4, 461.3]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [23438.8, 13693.1, 17691.5, 22404.5, 21786.2, 19601.6, 29177.0, 18354.6, 29196.1, 24726.4, 24497.4, 17843.8, 29355.9, 16907.7, 21176.1, 14811.4, 28504.9, 21197.0, 15521.1, 22807.6, 12089.7, 21520.1]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.3, 0.9, 1.2, 1.1, 1.4, 0.9, 2.0, 1.1, 1.9, 1.0, 1.0, 1.1, 1.1, 1.3, 1.9, 1.1, 1.5, 0.8, 1.0, 0.8, 0.5, 0.8]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [863.1, 432.7, 533.0, 686.6, 708.9, 700.6, 897.3, 551.6, 891.7, 837.9, 851.9, 466.5, 847.8, 522.7, 468.9, 431.9, 891.4, 842.6, 463.9, 847.5, 452.8, 842.4]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [599.1, 388.0, 393.2, 539.8, 566.2, 477.4, 750.9, 387.6, 852.7, 578.6, 584.8, 403.3, 604.5, 409.3, 558.9, 425.1, 670.2, 525.6, 354.8, 507.8, 290.0, 507.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [9706.7, 4188.0, 5056.8, 5928.3, 7819.4, 5262.6, 10115.0, 6456.2, 9438.2, 6248.7, 8699.0, 5344.5, 8641.8, 5255.7, 6678.1, 10081.2, 4617.9, 4393.4, 3734.2, 8912.1, 8475.1, 8457.4]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [371.6, 211.1, 249.9, 272.8, 305.9, 241.0, 388.7, 281.7, 353.2, 277.0, 315.2, 224.8, 318.8, 254.6, 260.3, 378.8, 209.3, 164.0, 172.4, 367.4, 349.5, 340.1]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [16409.6, 9670.9, 14102.2, 13629.3, 13693.5, 13209.6, 18184.6, 13156.2, 19699.1, 16149.3, 17614.6, 12484.4, 17033.2, 11006.9, 11748.4, 17291.5, 11206.2, 8308.1, 9001.0, 17274.5, 16718.8, 16077.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.0, 0.6, 1.2, 0.9, 1.0, 0.7, 1.6, 1.1, 1.3, 0.8, 0.8, 1.0, 0.8, 1.1, 1.4, 1.4, 0.6, 0.5, 0.5, 1.3, 0.9, 0.8]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [865.5, 435.0, 514.3, 679.4, 690.4, 687.8, 906.9, 544.2, 843.3, 826.2, 842.4, 453.4, 832.9, 543.4, 462.1, 840.6, 475.5, 424.6, 436.6, 837.1, 826.7, 839.5]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [297.0, 159.4, 204.5, 229.9, 234.0, 203.9, 330.2, 203.6, 300.1, 241.5, 297.5, 179.0, 256.5, 184.9, 236.6, 313.4, 166.4, 144.4, 145.8, 305.5, 267.3, 284.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [3256.9, 3747.3, 2886.3, 1441.8, 1725.1, 2212.3, 2923.7, 1545.5, 3048.9, 2276.1, 2787.0, 3601.1, 2820.4, 3481.9, 3299.7, 2334.4, 2540.8, 3338.4, 2082.2, 1710.9, 2831.0, 2969.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [214.4, 274.0, 218.8, 100.9, 158.5, 169.7, 216.8, 94.9, 220.6, 178.7, 193.6, 231.5, 195.7, 210.2, 308.6, 138.8, 217.4, 234.4, 147.6, 105.9, 188.2, 202.7]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [6736.4, 8374.2, 5949.6, 3187.1, 3588.3, 3998.0, 5805.3, 3074.5, 6058.2, 4688.6, 4602.1, 6344.4, 5931.1, 6502.2, 6059.5, 3138.1, 4633.3, 6093.5, 4211.2, 3095.8, 5970.4, 6362.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [0.8, 1.3, 0.7, 0.4, 0.9, 0.6, 1.0, 0.4, 0.7, 0.5, 0.7, 0.7, 0.7, 0.7, 1.2, 0.6, 1.0, 1.4, 0.9, 0.4, 0.7, 0.7]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [823.5, 817.9, 816.4, 407.5, 448.9, 446.8, 626.3, 405.8, 836.7, 691.9, 679.1, 829.3, 806.3, 886.2, 635.3, 437.8, 644.6, 709.4, 452.7, 409.0, 821.6, 821.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [120.9, 153.9, 121.5, 62.5, 79.1, 89.7, 105.7, 57.1, 114.0, 91.1, 113.4, 114.9, 114.1, 129.6, 134.7, 83.7, 109.7, 156.3, 80.9, 63.9, 117.6, 114.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [57275.1, 58550.6, 48500.0, 29373.5, 40666.3, 39982.2, 49684.3, 29001.5, 55300.8, 46626.0, 54331.2, 47385.4, 44184.1, 57350.2, 55638.5, 36466.5, 53142.1, 40953.7, 40503.1, 80157.0, 46793.7, 56109.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [35128.8, 48787.2, 29239.1, 17390.4, 22368.5, 29280.2, 24311.0, 16950.3, 33925.4, 35068.3, 35395.1, 30904.1, 25973.8, 35820.1, 27155.8, 19162.0, 39830.0, 28260.2, 18550.0, 44833.8, 28617.6, 31620.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [203645.1, 278041.5, 232881.6, 153922.4, 182354.5, 184019.0, 216326.1, 144957.2, 253653.9, 222367.1, 244247.3, 227252.0, 222707.6, 229905.6, 227412.0, 154463.0, 253905.0, 179264.3, 170048.3, 434668.3, 216711.2, 259686.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.7, 2.7, 2.1, 1.3, 2.4, 2.5, 2.5, 1.7, 2.1, 2.4, 2.7, 1.8, 1.7, 2.3, 2.4, 1.7, 2.5, 1.5, 1.3, 3.2, 1.9, 2.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [67605.4, 110490.0, 62006.6, 30428.1, 51252.0, 46762.5, 64252.2, 28767.6, 66612.9, 59787.7, 63653.0, 55688.2, 55625.3, 65233.1, 65161.4, 37503.7, 66247.5, 54105.1, 46206.4, 85779.4, 56176.7, 68552.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1382.9, 1964.2, 1144.8, 694.6, 900.0, 1153.0, 1185.0, 704.6, 1317.6, 1288.5, 1374.1, 1154.8, 1108.5, 1439.2, 1308.5, 830.9, 1325.7, 1140.3, 956.2, 2163.9, 1126.7, 1342.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [22661.4, 12171.9, 13759.9, 13609.3, 14702.9, 13810.3, 16589.5, 13156.5, 16938.4, 14336.2, 14496.7, 12469.3, 15407.9, 10352.2, 12022.2, 9505.6, 16359.3, 13144.2, 11752.4, 15603.8, 7762.6, 14936.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [16026.8, 10773.1, 8930.7, 10020.5, 8909.7, 10600.2, 13336.4, 10600.4, 12699.6, 11446.0, 12019.2, 7298.6, 11158.7, 8272.5, 7480.0, 7996.4, 11097.1, 10183.1, 7739.9, 10622.5, 5293.1, 10171.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [80942.4, 39356.0, 64825.7, 63038.7, 65034.2, 58295.1, 80549.5, 59637.8, 87345.1, 67044.6, 67442.3, 52391.8, 70744.8, 45340.9, 42928.4, 43869.5, 72373.2, 63240.3, 60410.3, 68541.4, 34587.1, 64209.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.9, 1.8, 1.6, 1.3, 1.8, 1.6, 2.4, 1.4, 2.1, 1.2, 1.3, 1.3, 1.7, 1.2, 2.0, 1.9, 1.6, 1.0, 1.3, 1.4, 0.9, 1.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [29699.1, 13169.4, 18127.8, 19237.6, 16977.4, 16994.0, 22978.3, 17373.8, 24022.9, 20372.9, 19422.1, 16158.3, 19649.2, 15884.6, 12704.8, 12213.1, 20784.8, 18987.4, 15374.7, 20202.7, 9889.0, 20346.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [555.6, 288.1, 337.4, 360.3, 368.0, 351.5, 470.6, 319.2, 503.9, 407.0, 387.4, 294.0, 408.2, 292.6, 308.6, 273.4, 452.2, 367.8, 292.4, 399.4, 218.0, 428.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [8775.5, 6489.2, 8202.0, 6319.3, 6445.7, 3900.8, 7292.3, 7175.4, 6417.0, 7572.0, 6505.7, 7539.0, 4551.2, 7381.0, 5312.0, 4364.1, 7817.1, 6734.5, 4953.6, 6146.2, 3321.2, 6166.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [6847.6, 4064.4, 5318.6, 5299.9, 5743.4, 2913.7, 5973.1, 4930.1, 5396.7, 6172.9, 5428.8, 6106.4, 3768.4, 5332.9, 3655.2, 3607.3, 5864.0, 5187.8, 4265.0, 5425.7, 2899.8, 4857.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [33013.6, 23547.5, 40497.8, 27670.3, 31664.9, 18380.9, 32467.4, 30743.4, 32153.6, 32792.7, 29426.3, 33269.3, 24241.3, 32295.2, 25382.5, 19297.4, 32529.2, 35449.8, 22600.3, 30347.4, 15802.5, 28064.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.1, 1.6, 2.1, 1.6, 0.8, 0.6, 1.3, 1.4, 0.8, 1.5, 0.7, 1.7, 0.9, 0.9, 0.9, 1.0, 1.5, 0.8, 1.1, 0.8, 0.6, 0.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [10632.2, 6021.8, 10678.6, 8206.7, 8958.3, 4763.9, 9523.9, 9074.0, 9048.8, 9567.1, 9299.6, 9981.8, 6169.6, 8767.4, 6681.7, 5242.5, 9912.6, 8878.4, 5726.2, 8868.8, 4425.2, 8417.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [231.8, 181.7, 264.1, 212.7, 181.2, 110.8, 211.8, 210.3, 188.4, 238.5, 207.6, 239.0, 147.6, 196.3, 151.4, 128.1, 234.7, 197.1, 159.9, 181.7, 100.8, 178.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [38163.8, 45513.9, 41164.8, 46703.8, 44520.9, 38822.5, 40775.0, 36485.4, 43653.6, 35867.4, 34266.2, 32167.3, 47315.9, 56247.1, 35460.4, 40749.2, 61095.9, 48204.4, 42451.3, 43030.3, 34847.7, 40630.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [30010.2, 36978.8, 29991.4, 41393.0, 32387.4, 25962.5, 25504.0, 25319.0, 37083.9, 25771.7, 25931.6, 22738.4, 30340.0, 38850.1, 21841.9, 22148.0, 27247.6, 25313.6, 31830.4, 27729.0, 16713.9, 28466.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [308853.3, 356183.6, 347691.5, 358267.1, 320929.1, 329140.8, 275854.8, 259581.0, 334907.8, 295014.5, 246701.5, 267573.0, 384574.9, 394862.2, 297066.8, 273180.8, 391930.7, 337473.9, 289712.9, 343512.7, 208716.7, 342102.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.9, 1.8, 2.1, 2.0, 1.8, 1.8, 1.4, 2.3, 2.2, 1.9, 2.2, 1.6, 2.1, 2.4, 1.6, 2.4, 2.2, 1.8, 3.1, 1.9, 1.7, 1.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [170674.3, 195161.2, 168550.7, 182630.3, 163543.1, 182753.2, 138682.5, 133780.4, 165275.8, 149408.4, 111451.2, 136217.5, 203349.1, 212304.8, 142963.5, 149138.1, 201633.3, 177102.1, 153164.5, 186993.2, 103826.3, 174887.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1011.2, 1123.7, 1080.1, 1376.9, 1058.4, 1062.6, 926.8, 1133.5, 1104.3, 970.0, 848.3, 985.0, 1305.6, 1480.7, 939.4, 1362.0, 1291.8, 1096.0, 1045.0, 1113.5, 688.6, 1070.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [20445.0, 22651.5, 14964.2, 12211.5, 11912.3, 14060.4, 15071.6, 9027.6, 18620.6, 19561.0, 14256.0, 15757.8, 16733.7, 18175.8, 16394.2, 9684.6, 19151.9, 16631.0, 12152.6, 21721.6, 15047.3, 17972.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [12195.2, 16233.7, 12335.9, 7185.3, 8832.7, 11712.1, 10066.8, 8342.5, 10620.5, 8742.6, 11307.8, 13813.6, 10078.2, 11520.7, 10071.1, 7153.1, 11875.7, 13108.6, 9349.3, 14947.2, 10357.9, 14120.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [116758.9, 159716.3, 121699.6, 72346.5, 90059.4, 95283.3, 117176.1, 61067.3, 135298.4, 127316.3, 114177.9, 123935.4, 115659.7, 141317.2, 124010.9, 68080.2, 136069.5, 116476.5, 86959.3, 264527.8, 127616.1, 121588.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.7, 2.6, 1.9, 1.3, 1.5, 2.2, 2.2, 1.2, 1.7, 1.7, 1.8, 1.7, 1.7, 2.2, 2.2, 1.9, 2.1, 1.2, 1.5, 2.4, 1.8, 1.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [65487.9, 100478.1, 59706.0, 34308.7, 51437.5, 47528.6, 59568.6, 31848.4, 60575.3, 53501.9, 51348.9, 56812.4, 56379.8, 63971.2, 62136.9, 35904.4, 63448.6, 54429.3, 49701.9, 79725.6, 59019.4, 59722.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [465.8, 729.5, 440.9, 295.7, 317.9, 369.3, 410.5, 228.9, 431.5, 405.0, 388.3, 429.0, 422.8, 503.6, 408.5, 265.8, 496.0, 429.4, 314.3, 501.3, 420.5, 437.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [7359.9, 9363.4, 7988.6, 9747.3, 9365.5, 8349.5, 6021.4, 7530.2, 8564.1, 7945.3, 5942.5, 6061.8, 9300.0, 9685.8, 6780.4, 7288.8, 8050.7, 7981.7, 8314.8, 8789.7, 9875.1, 9792.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [5217.5, 8076.9, 4571.3, 5260.1, 4670.0, 5901.2, 3485.4, 3508.0, 6353.3, 5982.3, 4253.9, 3093.3, 6073.5, 5226.8, 5253.6, 5737.2, 4663.5, 6511.8, 5598.3, 5325.1, 6250.1, 6554.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [53771.4, 72919.2, 57149.8, 65876.4, 59908.3, 63387.5, 49532.5, 47417.3, 63149.1, 51987.3, 47650.9, 50996.6, 65923.4, 65597.9, 49076.4, 55899.8, 65332.3, 62462.1, 66365.1, 64838.0, 75846.0, 66959.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.0, 1.3, 1.6, 1.3, 1.0, 0.9, 1.1, 2.1, 1.1, 1.2, 1.3, 1.1, 1.3, 1.9, 1.1, 1.3, 1.0, 1.0, 1.8, 1.7, 2.0, 1.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [24173.9, 29083.3, 23959.0, 26680.3, 24724.4, 25894.3, 17904.5, 18238.3, 25204.8, 20874.4, 18761.8, 18671.9, 24933.1, 26327.0, 22199.1, 22426.1, 25053.3, 25438.4, 25658.5, 28238.0, 27108.6, 26155.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [206.6, 265.4, 235.4, 253.6, 224.3, 241.3, 176.2, 215.7, 232.0, 204.8, 166.6, 163.6, 247.9, 268.2, 206.9, 208.4, 233.4, 215.2, 230.7, 272.2, 294.0, 265.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [67899.9, 40475.8, 49011.8, 47993.9, 58958.8, 49403.5, 73334.0, 54549.5, 66548.0, 54692.4, 50808.2, 45346.6, 64404.4, 44556.8, 54268.3, 51525.4, 49883.4, 53310.6, 54526.0, 65570.8, 75767.4, 60116.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [43440.3, 23189.6, 21354.5, 24947.4, 23666.7, 30840.0, 48721.1, 23251.0, 32258.1, 34556.2, 37320.9, 26896.5, 28562.5, 18882.8, 20662.7, 30879.2, 34709.0, 29571.8, 31940.8, 27984.4, 30483.3, 26273.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [322090.0, 155075.8, 263232.8, 241537.1, 281124.0, 231871.8, 353585.2, 248508.0, 354600.3, 272145.1, 280403.1, 215439.7, 275925.5, 232621.2, 230653.6, 254831.0, 267496.5, 255744.6, 265666.7, 317278.5, 368209.6, 275776.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.2, 2.0, 2.2, 1.5, 2.1, 2.1, 3.1, 2.2, 2.6, 1.9, 2.0, 2.2, 1.9, 2.3, 2.4, 1.8, 1.8, 1.7, 2.3, 2.1, 2.7, 2.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [168290.2, 78037.0, 94632.2, 97962.6, 108987.6, 90436.8, 176374.5, 99424.5, 155470.2, 102340.9, 104819.1, 92642.8, 109719.2, 93469.6, 91510.1, 92639.5, 99584.2, 98164.7, 106886.3, 126233.7, 158029.0, 107217.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1918.2, 1082.7, 1099.8, 1219.6, 1413.1, 1134.2, 2628.7, 1181.1, 1619.0, 1290.8, 1234.4, 1140.3, 1481.3, 1048.1, 1529.4, 1150.6, 1193.5, 1305.5, 1288.8, 1668.8, 2092.0, 1368.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [15198.1, 12817.1, 17384.4, 12828.2, 14670.0, 10802.1, 16642.4, 15644.2, 13803.3, 15894.8, 14230.7, 17457.7, 12369.8, 16567.9, 12008.9, 9741.6, 13150.5, 15010.8, 10430.2, 7696.6, 14038.1, 13305.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [14413.0, 10025.1, 12412.5, 10919.1, 9991.0, 7777.1, 12912.0, 9409.6, 12787.2, 12599.2, 13130.1, 11285.8, 9709.2, 10198.8, 8787.1, 8089.2, 10645.0, 13885.3, 8603.5, 6885.6, 10849.6, 11399.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [94808.6, 66047.0, 131198.0, 102800.1, 106962.5, 78783.2, 123433.1, 103192.9, 104430.0, 107261.8, 97542.2, 114780.9, 81637.6, 108041.6, 87537.3, 71804.0, 99214.7, 106502.9, 83371.7, 57229.3, 92822.4, 98346.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.7, 2.1, 2.3, 1.7, 1.5, 1.8, 2.1, 1.8, 1.5, 2.1, 1.2, 1.9, 1.1, 1.6, 1.4, 1.5, 1.9, 2.4, 1.0, 0.8, 1.0, 1.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [42870.9, 30465.6, 44952.7, 30109.8, 34357.1, 23042.6, 39531.9, 34800.9, 32076.5, 35789.2, 30831.0, 35006.3, 26722.2, 34206.4, 28843.8, 20539.4, 32628.9, 33454.4, 25320.9, 16560.1, 30274.7, 30729.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [421.7, 347.3, 504.6, 355.7, 394.0, 294.7, 437.3, 369.5, 374.1, 431.8, 360.0, 430.7, 282.8, 400.7, 317.2, 252.8, 350.4, 405.7, 281.1, 205.8, 360.5, 368.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [9268.9, 6214.3, 6318.0, 7594.1, 7048.3, 6573.8, 9681.2, 6917.6, 10671.7, 7352.6, 7444.0, 5553.5, 8327.7, 5800.0, 7532.3, 8326.3, 6322.1, 4237.3, 5166.8, 8077.4, 9249.1, 8081.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [6175.2, 5202.2, 4209.2, 4766.1, 4414.4, 4459.7, 5534.7, 4639.2, 6259.4, 4559.3, 5122.8, 3357.2, 5238.4, 3007.7, 3873.8, 5338.2, 3450.0, 2619.9, 3619.1, 5185.7, 5243.0, 4992.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [48430.6, 24546.5, 34883.2, 42248.6, 35027.4, 39583.1, 54112.8, 35568.3, 53135.7, 45790.5, 44009.5, 32544.3, 46007.6, 30291.5, 38839.5, 46550.4, 31393.6, 21535.1, 23877.4, 47781.2, 48473.8, 45118.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.8, 1.7, 1.3, 1.0, 1.4, 1.1, 2.0, 1.2, 2.2, 0.9, 1.0, 1.2, 1.1, 1.0, 2.2, 1.9, 1.7, 0.6, 0.7, 1.6, 1.9, 1.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [18970.0, 11144.9, 13984.1, 14562.6, 12821.2, 13331.6, 17419.2, 12697.6, 19931.5, 14936.2, 14865.4, 12633.7, 15363.1, 9969.8, 13406.1, 17563.5, 10308.7, 8082.3, 9280.0, 16350.9, 16473.4, 16328.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [266.7, 172.8, 182.1, 197.6, 194.9, 188.5, 272.0, 172.4, 326.5, 214.9, 209.0, 161.2, 226.1, 146.6, 225.9, 256.6, 170.9, 115.3, 123.5, 243.4, 249.4, 237.9]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [21280.1, 17085.4, 25262.9, 28283.5, 20257.0, 10917.0, 19502.9, 24080.5, 19960.3, 23727.6, 18390.4, 21100.0, 17439.3, 20030.5, 18495.9, 10288.4, 17662.3, 19158.5, 22136.0, 16706.7, 29921.1, 20726.2]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [107928.0, 93149.3, 109143.0, 107346.8, 112756.0, 73472.7, 113745.4, 103329.2, 116577.4, 113946.5, 114118.9, 112593.3, 90008.5, 108330.3, 94470.8, 73134.4, 107070.4, 102113.6, 100354.0, 108909.3, 129985.6, 118427.9]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [345877.0, 271171.1, 372031.9, 371349.9, 343525.6, 217868.2, 360516.2, 336407.1, 365059.0, 423319.5, 361829.1, 349288.6, 282524.2, 357406.1, 330656.7, 215453.7, 326652.3, 335024.3, 319803.6, 301456.7, 392211.0, 425691.5]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.8, 2.2, 2.2, 2.2, 1.9, 1.8, 1.9, 2.1, 1.9, 2.3, 1.6, 2.2, 1.6, 2.1, 2.0, 1.7, 1.8, 1.8, 2.1, 1.5, 2.4, 1.9]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [112062.9, 90774.1, 117256.3, 106657.1, 98348.3, 59055.9, 101799.9, 103158.3, 100873.5, 115044.8, 87598.0, 108020.6, 74589.8, 97192.1, 85641.3, 55478.3, 100540.4, 89139.6, 104201.0, 79159.7, 115437.7, 112206.1]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [33241.4, 38551.9, 37604.0, 45565.4, 37162.6, 31516.4, 39172.8, 37057.2, 37139.6, 45558.4, 33108.3, 47613.6, 27231.7, 41531.6, 32174.8, 28169.5, 34564.4, 35031.7, 36788.8, 31297.0, 43186.9, 41820.0]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [8720.8, 10514.8, 8702.4, 10287.4, 10136.5, 9822.3, 8483.4, 7252.4, 9927.0, 8424.9, 6957.0, 8468.7, 10206.6, 14920.9, 8172.7, 8698.5, 10066.6, 9910.7, 11685.7, 12464.4, 10950.7, 10074.1]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [35331.9, 46561.1, 36425.1, 45716.0, 39872.5, 39917.1, 29158.2, 30742.1, 43972.9, 34958.4, 32787.8, 29287.8, 42325.9, 49728.2, 34397.8, 37527.0, 40614.3, 39040.7, 38290.3, 43994.0, 55854.8, 41594.1]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [127887.2, 165417.5, 156094.5, 170891.3, 159918.6, 159409.8, 123085.1, 129687.2, 160052.6, 139696.9, 134004.0, 122945.8, 170282.3, 206774.8, 132931.8, 150500.9, 156970.9, 159524.4, 156522.3, 178073.2, 206909.7, 165636.4]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.4, 1.6, 2.0, 1.5, 1.1, 1.3, 1.2, 1.9, 1.5, 1.3, 2.1, 1.3, 1.6, 2.1, 1.2, 1.6, 1.3, 1.3, 2.2, 1.7, 2.0, 1.5]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [42270.1, 58987.0, 46845.8, 49441.4, 48906.3, 48394.1, 38336.6, 38926.6, 50075.4, 42207.0, 38612.3, 37360.6, 54678.6, 67411.4, 37331.6, 43265.7, 49176.1, 49669.9, 50139.1, 58102.8, 61420.6, 47278.2]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [9384.4, 11676.7, 12636.7, 11453.4, 9676.2, 9468.6, 7501.9, 12956.1, 10009.3, 9471.1, 13938.6, 7721.6, 12193.9, 18029.9, 9589.5, 12645.3, 10337.7, 10282.1, 14340.9, 14114.8, 15879.4, 11744.8]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [8064.7, 5412.3, 8325.1, 7310.8, 7725.2, 4373.6, 8143.5, 7842.8, 7736.3, 7767.2, 7690.7, 7697.9, 6319.0, 7829.1, 6841.2, 4228.0, 7083.2, 6872.7, 5724.2, 4106.9, 7282.8, 7542.0]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [23640.0, 18354.3, 20523.4, 16963.3, 24114.6, 15390.3, 22026.8, 20615.5, 21547.9, 19992.3, 18799.4, 22885.9, 15659.8, 21287.6, 14038.5, 11065.5, 21659.1, 20937.3, 12942.8, 10353.5, 17316.7, 20321.0]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [92316.8, 67519.0, 107959.8, 94567.5, 113174.7, 55185.3, 104655.9, 96762.4, 98185.9, 114888.1, 97832.6, 104372.1, 74869.5, 105893.4, 80894.9, 64386.1, 88478.3, 104363.0, 68491.4, 53177.0, 93323.9, 88140.7]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.6, 2.1, 2.2, 1.7, 1.5, 1.0, 1.9, 2.1, 1.6, 1.7, 1.6, 1.7, 1.2, 1.6, 1.4, 1.5, 2.0, 2.1, 1.4, 0.9, 1.1, 1.2]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [39845.5, 29943.1, 47449.4, 35007.7, 37155.4, 20922.3, 41221.1, 36357.3, 41695.6, 35887.0, 39232.7, 35605.8, 30858.8, 34901.2, 30707.7, 20916.0, 35210.3, 34588.6, 26788.2, 17975.8, 37851.3, 35657.2]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [6105.6, 6486.4, 6913.2, 7758.7, 5425.1, 3598.7, 7513.6, 6383.3, 5777.9, 6224.8, 6071.4, 6893.6, 4435.3, 6452.0, 4488.1, 4771.4, 6234.5, 7660.3, 4055.2, 2857.9, 4556.9, 4437.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [95057.1, 94073.3, 97254.7, 96247.4, 87014.9, 56203.8, 97444.4, 80154.4, 77927.4, 103746.7, 82803.5, 93375.6, 59829.5, 101895.7, 65226.7, 69372.4, 102781.7, 70048.4, 66964.5, 79663.6, 51963.6, 68553.5]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [30591.9, 22227.2, 28424.7, 29174.1, 36070.7, 21358.8, 36288.9, 26574.9, 35611.0, 36983.5, 34520.6, 36564.2, 21527.8, 37487.9, 22901.3, 19757.3, 37880.7, 29077.7, 23381.3, 28892.6, 20018.9, 28453.4]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [228810.1, 211002.3, 277035.4, 262243.7, 240299.8, 164476.9, 257313.3, 264214.0, 233920.7, 276780.2, 221301.1, 270359.0, 177921.8, 274771.1, 192468.4, 166500.1, 277864.5, 229505.2, 204288.2, 238280.0, 151855.9, 239108.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.0, 2.8, 2.9, 2.6, 2.0, 2.1, 2.8, 2.4, 2.1, 2.9, 2.0, 3.0, 1.8, 2.8, 2.3, 2.5, 2.8, 2.0, 3.1, 2.1, 2.2, 2.1]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [56507.4, 52162.7, 59312.8, 52039.1, 53658.6, 36010.3, 61177.2, 57566.9, 48010.2, 68485.7, 53094.5, 57009.3, 41539.1, 57133.3, 49753.9, 42073.5, 66737.1, 46638.9, 51906.0, 51659.2, 30822.3, 50537.1]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [13113.8, 13417.0, 14500.7, 15465.3, 13655.0, 10660.5, 15751.4, 13314.0, 13344.5, 17644.9, 12661.0, 16440.7, 11094.6, 16090.4, 12986.5, 12086.3, 18142.3, 12585.6, 12778.3, 12962.4, 9839.9, 12809.7]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [27403.3, 40547.2, 27643.0, 16736.6, 24669.8, 21688.5, 29979.9, 16166.2, 30300.2, 30155.5, 28582.6, 28651.2, 27329.9, 28979.2, 31384.7, 19187.3, 30459.7, 25912.9, 24472.7, 25589.1, 15351.6, 24296.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [11952.4, 12445.2, 13843.1, 7413.0, 8312.1, 8704.4, 10161.2, 6701.9, 12357.0, 10756.6, 10370.8, 11728.1, 11365.2, 11702.2, 11668.6, 7745.8, 13349.5, 10759.5, 8353.6, 11714.6, 7045.4, 11419.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [100423.7, 101703.7, 92984.2, 61791.0, 76047.1, 71772.8, 86609.3, 65186.0, 106708.1, 101829.6, 109206.6, 92523.3, 98196.1, 103780.3, 86269.3, 64958.3, 108453.4, 96427.4, 76974.1, 99455.2, 58874.5, 95557.9]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.5, 2.3, 2.0, 1.3, 1.4, 2.1, 2.5, 1.5, 2.1, 2.3, 2.4, 1.8, 1.6, 2.2, 2.3, 1.8, 2.5, 1.2, 1.6, 2.0, 1.0, 1.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [19345.5, 23966.2, 20176.3, 10165.4, 13367.2, 11453.9, 16848.3, 9876.0, 19588.2, 17985.1, 19800.6, 18112.7, 16450.4, 18537.0, 18728.9, 11800.5, 21100.0, 16405.7, 13154.5, 18481.1, 9737.8, 16218.9]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [2906.6, 4134.8, 3277.4, 2382.9, 2631.1, 3034.7, 3549.8, 2278.8, 3502.9, 3805.4, 3819.2, 3267.9, 3244.7, 4160.1, 3689.0, 3174.7, 4227.6, 2942.9, 2637.9, 3417.0, 2098.1, 3024.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [13879.1, 10176.6, 13944.0, 11937.1, 11307.3, 6750.6, 12996.3, 12989.8, 13667.0, 12683.5, 13714.4, 12186.7, 9072.5, 12685.5, 9859.9, 10702.4, 11329.6, 10903.4, 12180.5, 12997.6, 15329.5, 12094.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [6104.0, 4520.5, 5933.8, 6295.2, 6588.9, 3499.8, 6545.6, 5372.2, 7062.3, 6753.8, 6482.3, 6567.6, 3807.3, 7146.6, 5444.9, 6049.8, 6933.3, 7218.0, 4857.1, 6891.7, 7982.3, 6487.9]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [39918.2, 26024.7, 45495.9, 38988.2, 39254.8, 26227.8, 42747.2, 41118.5, 39198.0, 43906.8, 41520.5, 40325.3, 34865.1, 42542.8, 30576.4, 34596.4, 35944.0, 38445.2, 36957.7, 39946.6, 47513.5, 41303.0]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.3, 1.8, 2.2, 1.9, 1.0, 0.6, 1.3, 2.0, 1.3, 1.8, 1.1, 1.3, 1.1, 1.3, 1.2, 1.0, 0.9, 1.1, 1.4, 1.7, 2.1, 1.5]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [8588.8, 6714.5, 10581.6, 7636.9, 7928.6, 4687.4, 9124.6, 9217.5, 9170.4, 8764.4, 9846.1, 8458.0, 6308.1, 8997.5, 7632.0, 7560.7, 8957.4, 8944.8, 8621.4, 8315.6, 10812.2, 8059.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1136.6, 1234.8, 1482.3, 1376.9, 1147.0, 743.8, 1440.3, 1227.4, 1235.2, 1620.3, 1200.1, 1482.3, 839.0, 1348.2, 1128.0, 1175.2, 1119.9, 1145.3, 1152.3, 1394.3, 1665.0, 1343.6]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [139551.2, 143863.6, 147758.9, 149769.7, 128240.4, 93044.8, 149168.0, 144251.0, 131585.7, 147043.5, 138853.1, 148610.3, 101068.7, 119055.2, 110184.1, 72087.4, 160453.1, 119538.8, 104905.2, 225498.8, 127698.0, 125428.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [37476.4, 26814.0, 37931.2, 27280.6, 33457.4, 32352.6, 32106.3, 26594.2, 30779.4, 41249.8, 30978.2, 42100.3, 29164.0, 34824.5, 24570.5, 25542.1, 30999.6, 39329.0, 21948.8, 56920.8, 29082.8, 36633.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [453942.0, 363604.4, 495520.1, 408039.1, 458887.5, 256641.6, 523119.6, 464648.7, 389212.7, 471089.2, 417051.1, 469661.4, 329683.4, 426404.6, 347330.0, 278229.6, 501493.1, 387958.3, 319596.4, 793650.6, 380643.5, 424352.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.0, 2.9, 2.8, 2.4, 2.0, 2.4, 2.3, 2.3, 2.1, 2.8, 1.9, 2.5, 2.2, 2.6, 2.4, 2.1, 2.9, 1.8, 1.9, 3.4, 1.8, 2.2]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [149428.6, 140862.0, 167028.5, 121048.4, 129724.9, 78538.3, 131756.2, 137165.3, 123652.4, 139636.4, 120641.4, 122040.3, 103545.5, 133106.6, 113162.1, 84333.6, 139202.5, 122308.0, 98803.1, 245980.9, 117589.3, 114291.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [13492.1, 13806.8, 15285.8, 15385.2, 13545.9, 12137.9, 14643.9, 14547.8, 13579.1, 18199.6, 14372.0, 16570.3, 12849.3, 15626.4, 13423.7, 10490.4, 17639.4, 12954.5, 11632.9, 23737.7, 13199.5, 15866.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [64372.4, 33315.0, 43296.5, 43553.3, 35754.9, 37879.2, 59168.1, 41786.5, 62893.0, 41234.0, 41592.0, 40247.3, 44117.8, 35485.3, 49323.5, 31247.4, 51478.8, 34098.6, 34139.3, 42351.5, 26130.1, 50273.2]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [12505.9, 8058.4, 8874.3, 10385.9, 10093.6, 10681.3, 14504.4, 8713.5, 14374.0, 11292.8, 11386.0, 10523.4, 15085.7, 8671.2, 9937.9, 7335.4, 11987.1, 11030.5, 7206.9, 16651.5, 7126.6, 12541.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [187160.4, 84451.7, 121670.1, 137514.1, 119307.2, 116472.5, 200142.9, 111452.0, 166578.4, 138418.4, 149671.4, 110726.1, 145437.5, 115771.8, 88596.5, 93268.4, 141104.0, 133606.9, 99379.7, 134578.9, 71065.9, 148915.2]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.3, 1.9, 2.4, 1.6, 2.2, 2.0, 3.0, 1.6, 2.1, 1.7, 1.6, 2.1, 2.0, 1.5, 2.9, 2.0, 2.3, 1.6, 1.4, 1.8, 1.2, 2.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [56628.5, 29545.4, 39104.4, 46006.1, 40089.7, 36520.1, 60341.0, 39911.6, 62544.5, 41919.1, 43771.8, 35749.3, 53958.3, 35052.3, 41185.4, 29745.4, 48038.6, 41415.0, 33184.7, 39827.9, 24427.1, 51101.5]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [3915.7, 2636.1, 3097.4, 3094.1, 3740.5, 3308.5, 5401.4, 2983.5, 5239.3, 3464.3, 3300.5, 3248.5, 3921.0, 2890.1, 3820.9, 3228.3, 4505.9, 3304.5, 2447.3, 3540.6, 2643.6, 3865.3]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [20435.0, 27247.9, 20502.7, 11766.6, 17019.7, 16181.3, 18018.6, 11196.0, 22081.2, 18378.1, 19867.1, 19531.9, 20313.0, 21543.1, 19255.4, 9951.4, 21150.2, 19385.1, 18696.0, 18263.6, 24499.0, 21251.6]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [6221.8, 7648.4, 5806.6, 3251.3, 4242.8, 4567.5, 5171.4, 4429.6, 6358.0, 5384.5, 5603.0, 5878.6, 6642.2, 6654.2, 7442.9, 3039.3, 5962.2, 5540.2, 5327.7, 5782.6, 6448.6, 6380.7]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [79311.3, 99350.5, 73925.1, 39521.4, 64266.7, 64313.0, 69307.7, 44008.5, 83227.7, 71954.3, 74650.6, 75859.9, 70648.0, 76061.8, 74721.6, 38150.2, 80706.3, 71339.8, 70764.5, 67706.2, 91362.6, 76221.3]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.2, 2.3, 1.9, 0.9, 1.5, 2.7, 1.8, 1.2, 1.9, 1.9, 2.3, 1.3, 1.4, 2.1, 2.1, 0.7, 1.2, 1.9, 1.9, 1.1, 2.3, 2.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [21056.0, 29692.1, 21901.2, 11598.6, 16084.1, 17362.8, 19878.1, 12256.6, 20947.0, 16964.2, 20623.5, 20341.0, 20073.2, 20855.7, 20252.8, 10303.5, 19901.0, 18785.9, 21668.5, 18459.0, 23785.8, 20444.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1121.8, 1664.5, 1361.2, 805.1, 1141.2, 1629.0, 1316.3, 1084.8, 1512.6, 1537.9, 1520.4, 1364.3, 1343.3, 1672.1, 1527.7, 734.0, 1330.5, 1454.3, 1232.9, 1172.4, 1674.0, 1426.6]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [55182.4, 21144.1, 30740.0, 30157.3, 32728.7, 31850.2, 49922.1, 31055.3, 53579.0, 32139.1, 31815.6, 26603.4, 32438.6, 26913.9, 27635.9, 27398.8, 30432.3, 30951.5, 31755.2, 42459.4, 46681.1, 34832.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [32818.0, 17437.9, 19443.1, 21501.3, 23241.9, 22558.6, 28906.9, 21218.7, 23868.0, 26137.7, 23298.4, 17062.7, 28183.8, 22229.8, 19742.9, 23598.4, 25903.4, 25333.6, 25378.5, 30926.6, 32812.1, 25592.0]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [135325.6, 59311.0, 95734.4, 87969.1, 101861.3, 98252.5, 128543.0, 90083.9, 144277.1, 97523.8, 113922.8, 81348.2, 103566.0, 81203.7, 74574.7, 90254.9, 98055.2, 94626.9, 96575.2, 110059.7, 139242.9, 105737.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.6, 1.7, 2.1, 1.5, 1.8, 2.0, 3.5, 1.8, 2.8, 1.8, 1.8, 1.6, 1.9, 1.7, 2.2, 2.2, 1.5, 1.5, 2.2, 2.2, 3.0, 1.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [5921.1, 2635.6, 4056.5, 3954.9, 4210.9, 3954.1, 5955.2, 3846.6, 5495.2, 4193.8, 4440.5, 3402.7, 4330.0, 3380.7, 3532.7, 3812.4, 4609.7, 3999.1, 4431.6, 5584.4, 5594.6, 4261.5]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [15688.5, 7760.4, 10927.2, 10437.8, 11785.0, 10969.4, 16640.3, 11061.9, 15506.0, 11121.9, 12063.1, 9629.1, 12055.4, 9526.0, 11227.9, 10799.0, 10757.6, 10748.6, 12561.7, 14000.0, 15727.2, 12219.7]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [17004.7, 10266.2, 12968.2, 14944.3, 13156.1, 11903.4, 18937.3, 12006.6, 26302.5, 13367.3, 15223.0, 11928.1, 14830.4, 11024.1, 16235.1, 12510.8, 14265.1, 15356.3, 14678.3, 15377.6, 20726.6, 13875.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [14612.0, 9463.4, 9673.3, 10162.5, 10425.1, 9138.0, 16568.5, 10069.1, 12282.3, 12910.0, 10508.1, 9876.4, 15034.8, 7424.0, 10500.2, 10900.8, 12049.0, 11485.2, 12659.1, 12655.2, 15468.5, 11247.6]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [56031.2, 30721.5, 40692.9, 42414.6, 39516.8, 42369.1, 68730.7, 35875.0, 64835.6, 48936.9, 50665.5, 35785.3, 48156.1, 29346.0, 50567.9, 40040.0, 45381.0, 44406.4, 43611.9, 51692.5, 58171.0, 46761.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.0, 1.2, 1.6, 1.4, 1.4, 1.4, 2.6, 1.3, 2.3, 0.9, 1.3, 1.5, 1.3, 1.3, 2.8, 1.4, 0.9, 1.0, 2.2, 1.9, 2.4, 1.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [2403.1, 1405.3, 2440.9, 2190.5, 1904.3, 1822.0, 3192.2, 1907.8, 2995.3, 2045.1, 2228.1, 1810.5, 2172.3, 1546.6, 2505.3, 1861.5, 2093.2, 2049.4, 2359.4, 2410.7, 2821.0, 2093.6]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [4514.6, 2934.8, 3895.1, 3908.4, 3767.0, 3746.9, 5621.8, 3533.9, 5888.2, 3726.7, 3834.5, 3708.0, 3891.7, 2928.4, 5134.2, 3549.0, 3817.3, 3863.0, 4567.4, 4433.9, 5601.4, 4117.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [6844.5, 9109.6, 5969.2, 3082.2, 3646.2, 3725.6, 4815.2, 2559.6, 6620.1, 4670.7, 4261.9, 5522.6, 5484.7, 5854.1, 5283.3, 2761.0, 5995.1, 5269.7, 3161.2, 6634.3, 5384.6, 5462.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [6071.8, 5752.8, 4648.3, 2237.8, 3552.1, 4437.4, 5690.1, 2615.3, 5009.7, 5158.5, 5485.3, 4995.1, 4570.6, 6477.7, 4487.9, 3087.3, 6339.7, 5946.8, 3351.7, 7223.0, 6032.3, 6704.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [24575.3, 28494.2, 23587.6, 12562.2, 18385.8, 16519.4, 22390.3, 11729.1, 24857.0, 20708.8, 20090.8, 24745.1, 22118.7, 26331.3, 23281.7, 13574.5, 23545.6, 22930.5, 16125.4, 30428.6, 25129.8, 24927.0]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [0.9, 2.3, 0.9, 0.5, 1.0, 1.6, 1.3, 0.5, 1.2, 0.7, 0.8, 0.9, 0.8, 1.2, 1.3, 0.5, 1.1, 0.8, 1.0, 1.1, 0.8, 1.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [968.2, 1678.2, 1013.9, 512.7, 665.1, 683.5, 862.0, 487.6, 1022.5, 794.7, 785.9, 995.4, 960.6, 1049.3, 922.9, 510.6, 1067.0, 977.0, 589.0, 1184.6, 984.2, 1056.7]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1286.2, 1937.9, 1228.0, 691.1, 924.8, 1172.3, 1228.5, 658.3, 1406.4, 1132.9, 1103.5, 1217.7, 1180.7, 1511.6, 1315.2, 689.0, 1568.3, 1219.2, 842.2, 1636.4, 1213.1, 1394.4]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [53690.8, 21373.5, 33150.6, 31009.3, 34242.4, 32524.1, 61317.8, 32078.2, 60915.5, 31620.4, 33228.4, 29712.7, 37046.3, 28289.2, 28722.6, 18268.0, 34228.5, 35024.9, 37252.0, 32944.2, 50278.1, 37618.4]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [42536.2, 18791.7, 19043.0, 26424.6, 22746.0, 21814.9, 36125.5, 21193.5, 28086.8, 30303.7, 23060.2, 22384.6, 30485.9, 19556.5, 24609.8, 17352.7, 24554.6, 27538.0, 22099.9, 25332.0, 32579.3, 29418.6]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [210738.5, 102006.1, 145730.7, 183814.2, 178258.1, 168433.6, 242062.2, 161868.6, 232863.0, 186541.9, 188245.5, 142297.8, 196716.0, 138627.7, 177476.1, 154497.9, 191657.1, 220375.8, 194152.6, 185676.6, 234837.2, 210092.3]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.5, 1.5, 1.8, 1.5, 2.2, 2.0, 3.5, 2.1, 3.2, 1.6, 1.5, 2.3, 1.9, 1.7, 2.4, 1.1, 1.6, 2.0, 2.2, 1.5, 2.7, 2.1]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [52614.8, 24846.6, 30404.9, 43592.1, 39017.9, 38674.6, 51533.9, 30775.3, 51325.8, 43053.2, 41488.7, 28628.6, 46779.6, 26668.4, 32372.7, 23507.7, 43025.5, 46252.3, 47378.0, 42546.6, 49676.2, 44591.8]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [16453.7, 7976.6, 10670.0, 11402.2, 12000.1, 11279.1, 18240.8, 11619.8, 16517.0, 11460.7, 11769.0, 11030.8, 12955.7, 9692.4, 12047.6, 7639.1, 11811.7, 12588.9, 11988.6, 11598.3, 15468.3, 12571.5]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [19159.2, 27915.4, 15705.5, 8668.6, 10885.5, 11937.1, 15087.9, 7846.9, 18172.7, 15409.8, 14938.4, 14849.0, 14897.6, 18231.3, 15770.3, 12644.3, 14718.2, 14161.1, 14770.4, 16101.7, 18302.2, 15347.1]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [18682.7, 20066.2, 13238.4, 7382.9, 9032.9, 10279.1, 13823.3, 9031.2, 13599.2, 12232.6, 14035.7, 12004.1, 14485.9, 16230.2, 14525.1, 12169.5, 11653.4, 13588.1, 11514.9, 16233.9, 18203.6, 13870.3]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [91912.5, 114130.0, 97208.5, 44084.1, 62545.8, 66003.8, 77824.4, 47317.9, 96845.6, 83787.9, 83701.1, 91701.4, 87220.4, 102535.9, 77983.9, 77538.4, 85625.0, 86227.5, 76351.1, 95844.9, 105655.6, 94849.8]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.2, 2.6, 1.6, 0.7, 1.2, 2.1, 2.3, 0.8, 2.2, 2.1, 2.2, 1.5, 1.2, 2.6, 2.1, 1.5, 1.0, 1.4, 1.9, 2.0, 2.4, 1.7]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [22658.3, 28149.5, 23067.9, 10007.7, 11093.8, 12671.3, 15637.9, 10516.7, 24500.8, 18521.9, 20233.5, 22671.4, 21513.2, 23386.2, 15927.0, 17200.4, 21344.2, 21303.7, 15611.2, 23552.4, 25300.9, 21972.4]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [4112.4, 6443.5, 4511.9, 2413.7, 3359.3, 3824.7, 4739.9, 2515.0, 4863.6, 4518.2, 4821.5, 4134.9, 3876.6, 5458.7, 5018.6, 3889.0, 3821.1, 3791.7, 4761.1, 4705.2, 5277.9, 4687.6]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [6413.9, 7923.0, 6655.7, 2987.1, 4307.0, 3682.8, 4907.8, 3324.3, 5747.3, 5064.4, 5297.7, 6713.9, 5504.7, 6627.0, 5198.1, 3230.1, 5245.7, 5504.1, 3732.0, 2989.0, 5359.0, 5578.4]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [7035.0, 7218.0, 4634.0, 2388.0, 4074.6, 3602.4, 4409.0, 2479.5, 5244.2, 4760.9, 4419.5, 5323.1, 4213.6, 6063.2, 6276.7, 2731.6, 4663.7, 4300.8, 3058.4, 2305.7, 4333.7, 4356.5]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [34527.2, 41760.6, 39554.7, 17018.3, 25208.3, 27401.5, 28674.4, 17827.2, 35343.4, 32495.8, 34975.7, 35907.1, 36349.3, 39135.5, 35820.5, 19006.4, 29867.9, 36595.7, 24348.1, 17681.2, 34105.0, 35285.3]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [0.9, 2.2, 1.4, 0.5, 1.2, 1.7, 1.3, 0.5, 0.9, 1.4, 1.2, 1.0, 0.8, 1.4, 1.8, 0.6, 1.2, 1.8, 1.1, 0.5, 0.8, 0.9]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [9633.0, 11476.3, 10002.5, 4084.2, 5621.1, 4900.5, 6594.9, 4294.7, 9081.4, 7094.4, 6927.6, 9313.3, 9086.9, 8777.5, 7069.6, 4383.3, 6593.2, 7319.9, 5420.3, 4112.9, 9304.4, 9174.6]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1339.3, 2013.9, 1522.0, 723.0, 1106.6, 1193.6, 1316.0, 773.1, 1320.4, 1297.3, 1347.7, 1364.4, 1211.5, 1589.0, 1508.7, 823.0, 1289.0, 1567.7, 1031.1, 708.8, 1209.1, 1248.6]
```

```mermaid
xychart-beta
    title "events/compose (median µs)"
    x-axis 1 --> 22
    line [12824.2, 16203.6, 12880.5, 7949.6, 9101.6, 11355.0, 13309.8, 7443.4, 13513.3, 13190.8, 11935.0, 13736.4, 12440.8, 13775.9, 13097.5, 15506.3, 13613.2, 7829.7, 7761.0, 15283.1, 13086.8, 13914.1]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [10283.2, 16184.3, 10218.7, 5604.9, 6973.3, 5782.0, 8076.6, 4860.3, 9309.8, 8729.2, 8091.1, 10010.8, 9250.9, 10684.6, 8854.4, 5612.4, 10568.8, 9375.3, 7329.3, 8722.5, 4876.1, 9048.3]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [26249.5, 32777.8, 23939.4, 18653.8, 19197.1, 21671.9, 23951.9, 16163.0, 26269.8, 26609.8, 24650.5, 27035.5, 26611.9, 31476.5, 23147.5, 18602.7, 30772.6, 24841.0, 19397.4, 25331.1, 15069.4, 24528.1]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [42785.5, 50581.3, 44294.9, 28478.2, 34069.7, 40942.9, 39564.4, 25554.2, 46292.0, 44753.1, 41508.4, 45755.1, 46546.6, 46808.4, 46429.9, 28804.7, 51173.7, 43137.3, 31019.7, 40873.6, 25882.7, 42341.3]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.2, 2.7, 1.8, 1.4, 1.5, 1.9, 1.8, 0.9, 1.0, 1.8, 1.5, 1.6, 1.1, 2.0, 2.1, 1.8, 2.5, 1.0, 1.5, 0.8, 0.7, 0.9]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [264.2, 375.4, 304.4, 195.7, 222.4, 257.6, 246.7, 159.7, 268.0, 299.6, 255.5, 296.6, 268.6, 371.6, 277.1, 216.8, 355.7, 260.8, 218.5, 238.9, 161.7, 273.1]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [2274.0, 4160.9, 2610.4, 1830.1, 2189.4, 2793.2, 2584.0, 1396.7, 2316.0, 2830.3, 2521.4, 2810.5, 2437.0, 3757.0, 3256.9, 2194.2, 3524.5, 2425.0, 2300.9, 2263.0, 1248.4, 2121.1]
```

```mermaid
xychart-beta
    title "inspector.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [5172.9, 5523.4, 4834.6, 2399.5, 2543.4, 2718.1, 3191.6, 2265.9, 4720.2, 4039.6, 3748.0, 4533.3, 4540.0, 4760.6, 3382.2, 3724.7, 4460.9, 4360.3, 3168.0, 4507.6, 5092.5, 4654.6]
```

```mermaid
xychart-beta
    title "inspector.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [10732.1, 10546.3, 9019.8, 4807.1, 6297.0, 7597.7, 6967.6, 5011.2, 8652.6, 7819.4, 6848.8, 8099.9, 8429.0, 8836.5, 7838.0, 7226.4, 7637.4, 7009.5, 7874.0, 8136.1, 10271.7, 10036.1]
```

```mermaid
xychart-beta
    title "inspector.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [22551.8, 25059.8, 22413.4, 13855.0, 17657.9, 18402.8, 17853.9, 12096.7, 24833.1, 21422.5, 20295.4, 23825.5, 23971.5, 26412.6, 21240.7, 20621.7, 21545.0, 20562.3, 19081.8, 24252.2, 25309.4, 23418.3]
```

```mermaid
xychart-beta
    title "inspector.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [0.8, 2.1, 1.0, 0.4, 1.1, 1.8, 1.1, 0.5, 1.4, 1.1, 0.9, 0.7, 0.8, 1.3, 1.3, 0.7, 0.8, 0.7, 1.2, 0.8, 1.7, 0.9]
```

```mermaid
xychart-beta
    title "inspector.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [256.4, 347.2, 245.5, 127.5, 160.8, 218.3, 221.2, 140.6, 289.8, 244.4, 219.7, 245.9, 248.1, 297.6, 243.0, 205.8, 234.9, 227.0, 206.5, 240.2, 308.5, 258.8]
```

```mermaid
xychart-beta
    title "inspector.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1173.0, 1562.2, 1034.1, 633.8, 819.3, 1184.7, 1068.1, 626.4, 1340.9, 1197.0, 1095.5, 1056.4, 1122.8, 1375.6, 1142.6, 952.1, 1072.1, 1027.9, 975.5, 1094.6, 1602.9, 1261.5]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [1730.1, 812.1, 949.5, 1228.1, 1202.6, 1212.4, 1601.2, 956.2, 1714.3, 1575.6, 1559.5, 874.0, 1580.8, 1112.2, 937.7, 790.9, 1627.3, 1614.2, 776.8, 1722.1, 1651.3, 1594.8]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [2916.5, 2007.5, 1674.3, 1787.9, 2053.5, 2149.1, 2961.2, 1596.8, 2948.0, 1870.6, 2680.1, 2069.8, 2423.6, 1677.5, 2737.0, 1213.3, 2733.2, 2448.2, 1682.3, 2869.3, 2815.0, 2332.1]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [6271.7, 3825.7, 3465.4, 5629.4, 5044.4, 4665.5, 6362.0, 3999.4, 8345.3, 6076.5, 6280.1, 4687.9, 6156.4, 4155.2, 5584.4, 2966.0, 5492.3, 6364.2, 3538.2, 6374.7, 5716.2, 5656.1]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [0.6, 0.4, 0.6, 0.6, 0.5, 0.5, 0.8, 0.6, 1.2, 0.6, 0.6, 0.7, 0.6, 0.6, 1.2, 0.4, 0.8, 0.6, 0.6, 0.7, 0.7, 0.7]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [220.2, 113.5, 160.3, 190.7, 191.8, 189.0, 247.2, 165.5, 280.7, 243.4, 218.6, 151.1, 225.7, 175.2, 179.0, 121.0, 253.7, 220.7, 144.9, 234.6, 235.2, 260.8]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [363.0, 214.0, 235.1, 343.4, 305.4, 324.2, 440.7, 286.7, 590.6, 378.0, 369.3, 267.4, 368.1, 285.4, 460.6, 217.6, 423.0, 371.1, 250.6, 394.6, 432.3, 449.6]
```

```mermaid
xychart-beta
    title "keyed-append/compose (median µs)"
    x-axis 1 --> 22
    line [2241.5, 1230.1, 2017.3, 1849.1, 1890.5, 1051.8, 1973.6, 1709.5, 1889.9, 2007.1, 1855.3, 1932.6, 1345.4, 1874.9, 1375.1, 1490.4, 1831.0, 1841.1, 1588.1, 1927.6, 2091.5, 1859.4]
```

```mermaid
xychart-beta
    title "keyed-insert/compose (median µs)"
    x-axis 1 --> 22
    line [3904.0, 2135.2, 3946.0, 3101.5, 3884.0, 1959.5, 3703.6, 3486.6, 3845.8, 3817.7, 3672.4, 3834.8, 2272.6, 3786.7, 2612.8, 1898.7, 2820.6, 3041.6, 1997.4, 1905.2, 3582.4, 3594.0]
```

```mermaid
xychart-beta
    title "keyed-prepend/compose (median µs)"
    x-axis 1 --> 22
    line [4631.9, 5670.2, 4810.1, 5713.6, 5284.0, 5303.8, 3424.0, 3075.3, 5469.7, 4329.9, 3072.9, 3534.2, 5415.6, 5749.3, 4398.7, 2787.2, 5443.4, 5461.6, 5126.8, 5224.4, 5748.0, 6082.7]
```

```mermaid
xychart-beta
    title "keyed-remove/compose (median µs)"
    x-axis 1 --> 22
    line [3754.0, 2340.4, 3841.8, 2875.3, 3547.1, 1827.6, 3479.3, 3015.0, 3793.2, 3623.3, 3407.1, 3633.7, 2290.5, 3574.5, 2238.6, 4071.0, 1907.7, 1731.4, 1801.9, 3722.6, 3907.0, 3553.9]
```

```mermaid
xychart-beta
    title "keyed-replace/compose (median µs)"
    x-axis 1 --> 22
    line [52486.3, 65204.8, 53183.6, 71503.5, 56891.2, 60200.2, 44740.2, 49482.4, 62602.0, 53547.2, 42754.3, 45079.6, 62821.6, 73484.8, 53239.5, 56699.2, 58779.0, 61430.6, 59854.0, 66520.4, 75219.8, 63437.2]
```

```mermaid
xychart-beta
    title "keyed-reverse/compose (median µs)"
    x-axis 1 --> 22
    line [3454.2, 4152.3, 3170.7, 4076.7, 3867.3, 3889.8, 2315.2, 2136.9, 3943.8, 3223.1, 2172.9, 2596.7, 3912.4, 4086.3, 3167.2, 1995.6, 4192.7, 3975.8, 2123.5, 3928.3, 2005.6, 3842.4]
```

```mermaid
xychart-beta
    title "keyed-rotate/compose (median µs)"
    x-axis 1 --> 22
    line [3675.5, 4205.0, 3245.0, 4008.5, 3943.0, 3893.6, 2361.3, 2144.9, 4059.1, 3293.0, 2245.2, 2677.4, 3984.8, 4099.9, 3222.6, 4157.1, 2193.0, 2088.4, 2026.8, 4045.9, 4133.9, 3952.9]
```

```mermaid
xychart-beta
    title "keyed-shuffle/compose (median µs)"
    x-axis 1 --> 22
    line [3509.2, 4344.0, 3309.9, 4133.7, 4059.5, 4033.7, 2413.3, 2320.3, 4145.0, 3363.4, 2283.9, 2444.8, 4070.7, 4478.8, 3313.3, 2012.3, 4278.8, 4008.2, 2176.2, 4654.1, 4053.4, 4251.2]
```

```mermaid
xychart-beta
    title "mount-cycles/compose (median µs)"
    x-axis 1 --> 22
    line [22487.2, 16290.9, 25389.8, 24470.6, 24881.5, 23116.2, 33298.8, 19578.4, 31633.5, 23882.9, 26129.9, 17334.7, 29876.3, 17030.6, 21914.8, 15351.4, 30271.7, 24875.1, 18209.5, 41035.7, 27153.0, 32330.1]
```

```mermaid
xychart-beta
    title "mount-dispose/compose (median µs)"
    x-axis 1 --> 22
    line [8156.2, 11089.1, 7309.6, 5895.6, 6379.9, 6063.8, 8561.0, 5241.5, 10075.4, 8933.6, 7451.1, 9936.7, 9206.7, 10375.5, 10524.2, 8588.0, 9102.8, 8465.1, 8206.8, 9488.2, 11139.3, 9756.0]
```

```mermaid
xychart-beta
    title "ordered-window-scroll/compose (median µs)"
    x-axis 1 --> 22
    line [476.6, 541.8, 471.3, 556.9, 564.7, 553.8, 385.7, 321.4, 549.1, 480.4, 312.0, 380.8, 545.1, 555.7, 462.8, 545.5, 336.9, 303.7, 316.8, 558.8, 547.3, 557.2]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [30003.3, 30104.3, 33381.7, 27820.2, 30682.4, 19661.0, 28503.1, 27385.1, 30676.5, 28778.6, 30568.6, 30951.2, 19540.1, 31409.7, 26209.6, 17909.0, 28109.4, 25331.8, 27578.9, 26481.6, 26927.2, 29342.7]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [21590.6, 18636.7, 17711.5, 14764.4, 21038.9, 11215.7, 20462.7, 16769.4, 15059.0, 19783.2, 17011.5, 18762.2, 12419.5, 19569.5, 13907.5, 10148.4, 16561.3, 17370.9, 14039.9, 16578.6, 18850.6, 17393.5]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [222074.4, 182929.5, 238390.1, 207079.0, 236140.7, 138184.2, 230943.6, 221631.6, 235812.5, 246946.0, 224752.1, 241342.8, 174719.5, 241448.8, 190006.0, 125809.2, 225839.9, 244081.8, 223304.5, 225321.8, 238333.6, 238072.5]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.0, 3.0, 2.5, 2.4, 1.9, 1.8, 2.1, 2.1, 1.9, 2.5, 1.5, 2.2, 1.6, 1.8, 1.9, 1.3, 1.8, 1.5, 1.7, 1.5, 2.3, 2.3]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [101466.1, 63734.7, 97238.3, 78657.6, 93914.1, 52229.2, 93731.7, 90060.2, 95064.3, 92297.5, 93959.2, 96713.1, 67063.4, 97841.6, 72376.4, 49359.2, 92614.3, 96719.0, 88429.7, 91527.8, 96882.9, 94712.5]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1168.5, 1282.5, 1345.4, 1276.1, 1387.9, 883.0, 1294.2, 1087.5, 1445.8, 1448.1, 1234.9, 1334.2, 868.4, 1306.9, 929.6, 722.4, 1263.1, 1238.0, 1050.2, 1094.8, 1301.2, 1305.3]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [30042.0, 37026.2, 26826.4, 14648.1, 23991.6, 17009.8, 26266.2, 17048.6, 27192.0, 21699.1, 23196.2, 28654.4, 31188.0, 32384.8, 34843.2, 17709.1, 31519.5, 27432.5, 22302.5, 44307.4, 24820.6, 29505.4]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [9782.2, 11285.3, 8011.4, 5744.9, 5928.1, 6149.2, 7633.5, 4052.3, 9373.6, 8092.3, 8242.4, 6786.8, 6807.2, 7117.4, 6850.3, 4113.6, 8211.1, 6154.8, 4679.1, 10863.2, 6688.6, 6502.9]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [203516.4, 232335.1, 211377.1, 117511.9, 160501.4, 129535.4, 198277.6, 109338.9, 228267.7, 182225.3, 188809.3, 224954.1, 208367.0, 234148.0, 212192.0, 117190.0, 227841.6, 206600.8, 144741.8, 274634.4, 217210.5, 209850.8]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.6, 2.4, 1.7, 1.3, 2.1, 2.3, 2.4, 0.8, 1.9, 2.1, 2.4, 1.6, 1.4, 2.1, 2.1, 1.2, 2.0, 1.1, 1.4, 3.1, 1.1, 1.5]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [102067.8, 113887.3, 93404.2, 50940.6, 68914.9, 56622.4, 81485.3, 49588.3, 98041.4, 74863.3, 78728.0, 93504.9, 93128.0, 96432.7, 82602.4, 52863.5, 97227.9, 92461.0, 61274.6, 111767.3, 91702.7, 94477.3]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1105.1, 1578.5, 1068.9, 745.5, 942.1, 867.7, 1027.5, 605.7, 1218.9, 1178.1, 1161.4, 1195.8, 1197.4, 1382.0, 1242.9, 773.8, 1453.3, 1082.1, 778.3, 1999.7, 1068.6, 1171.2]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [18821.8, 22931.8, 19566.8, 24613.0, 21830.9, 21914.7, 15539.6, 16071.1, 20653.1, 16156.2, 13451.4, 17070.9, 21652.9, 31002.5, 17086.0, 9904.0, 20192.8, 21505.4, 20068.2, 18665.0, 24367.0, 20312.7]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [5108.5, 6142.9, 3823.9, 5466.1, 3897.6, 3555.4, 2705.3, 2636.4, 3972.1, 4177.5, 3530.8, 2930.5, 4029.2, 4778.1, 2987.2, 2213.0, 4553.4, 4320.4, 3863.5, 4806.7, 5050.4, 5703.9]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [126713.0, 160716.4, 148021.9, 170011.4, 155845.4, 157157.6, 112924.6, 108237.2, 158063.2, 135151.4, 95137.7, 122218.3, 164109.8, 174780.6, 128244.3, 82185.1, 163648.4, 164057.1, 159670.1, 159485.8, 174542.1, 168363.1]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.2, 1.5, 2.2, 1.3, 1.0, 0.9, 1.1, 1.5, 1.2, 1.2, 1.8, 1.1, 1.4, 2.5, 1.0, 0.7, 1.3, 1.7, 2.1, 1.1, 2.4, 1.9]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [59494.9, 76366.9, 54077.8, 70846.0, 68475.1, 67595.5, 43826.9, 40181.0, 69670.8, 55909.2, 40456.0, 45717.5, 69116.6, 74648.1, 53571.5, 35744.1, 69414.4, 69150.7, 65980.9, 69530.1, 72629.8, 71350.4]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [772.6, 884.1, 896.1, 1066.5, 827.8, 814.6, 602.9, 748.2, 845.0, 737.1, 860.2, 616.6, 995.4, 1527.6, 718.0, 455.9, 895.8, 972.1, 883.8, 863.1, 1154.2, 1073.2]
```

```mermaid
xychart-beta
    title "scene-3d/compose (median µs)"
    x-axis 1 --> 22
    line [10372.3, 5793.5, 5440.4, 7389.5, 6615.1, 6376.6, 10244.5, 5127.0, 9321.4, 7547.3, 8374.0, 5006.7, 8357.8, 4614.0, 6280.2, 4434.6, 6035.1, 9115.7, 4212.8, 3671.0, 7383.9, 7373.2]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [127130.6, 167018.1, 115393.0, 103046.5, 113930.3, 120767.1, 130705.0, 103802.0, 128400.1, 142816.1, 123118.4, 105047.6, 139186.6, 170768.6, 129072.9, 128013.1, 122386.4, 144203.6, 107194.2, 135146.0, 161575.0, 155202.1]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [4.2, 4.6, 4.2, 4.3, 4.2, 4.6, 5.0, 4.0, 5.4, 4.8, 4.9, 4.2, 4.2, 5.0, 4.6, 4.2, 4.2, 4.7, 4.0, 4.0, 5.7, 4.8]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [296908.1, 344119.5, 308098.2, 247736.6, 332555.4, 297268.8, 364456.1, 271101.1, 346442.2, 365313.0, 389611.0, 372836.0, 351963.4, 441452.6, 390536.3, 249156.5, 378624.3, 343657.3, 369959.7, 347398.8, 360354.3, 388437.9]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.2, 2.3, 1.9, 2.0, 2.2, 2.6, 2.5, 2.1, 2.3, 2.4, 2.5, 2.0, 2.0, 2.5, 2.4, 2.2, 1.9, 2.0, 2.1, 1.9, 2.3, 2.4]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [160845.4, 196666.1, 197076.8, 157127.6, 193707.5, 140489.0, 200387.4, 135009.2, 237679.1, 238449.6, 222780.9, 221526.5, 195005.3, 220550.3, 225054.4, 134965.8, 198877.7, 206852.8, 201339.9, 186472.2, 228522.6, 217218.8]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [2.2, 2.6, 2.2, 2.4, 2.1, 2.7, 3.0, 2.5, 2.7, 3.0, 2.9, 2.3, 2.0, 3.0, 2.7, 2.5, 2.2, 2.7, 2.6, 2.0, 2.6, 2.7]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [57003.0, 42123.0, 46878.9, 50522.5, 39632.6, 42006.2, 57491.1, 47770.6, 43632.6, 37946.8, 48879.6, 45009.6, 58342.1, 47265.2, 39413.0, 26635.5, 54644.6, 61370.2, 56638.8, 50529.9, 49438.4, 62665.7]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [4.4, 3.1, 3.5, 3.2, 4.2, 4.3, 6.2, 3.7, 5.4, 4.3, 4.0, 4.1, 4.1, 2.7, 4.6, 3.9, 4.3, 4.0, 3.7, 3.8, 4.6, 4.9]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [128750.1, 75810.9, 99563.4, 125498.0, 117015.6, 132164.7, 157084.7, 148138.6, 162243.7, 147619.1, 126923.6, 109080.0, 145974.8, 122908.0, 93627.8, 80164.5, 129987.3, 143162.6, 130037.2, 115325.2, 166617.5, 120016.9]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.2, 1.6, 1.6, 1.4, 2.1, 1.9, 2.5, 1.8, 2.3, 1.8, 1.7, 1.9, 1.9, 1.4, 2.1, 1.7, 2.0, 1.6, 1.9, 1.6, 2.0, 2.2]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [69667.1, 42712.5, 61818.0, 57307.8, 74551.5, 74773.3, 100237.1, 66389.4, 93951.0, 74531.3, 69768.3, 61192.7, 68105.2, 53923.2, 53150.1, 57893.3, 78420.7, 78230.5, 64423.4, 69032.4, 101627.1, 72853.8]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [2.2, 1.7, 2.0, 1.8, 2.5, 2.3, 2.9, 1.9, 2.4, 1.7, 1.5, 2.1, 2.2, 1.4, 2.8, 1.8, 1.8, 1.8, 2.0, 1.6, 2.6, 2.6]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [14058.5, 13643.4, 14167.1, 12992.3, 13234.1, 15559.1, 10465.1, 11655.7, 11959.3, 15591.5, 10920.0, 9897.7, 13971.7, 12299.8, 13051.9, 11471.0, 15268.5, 13308.8, 10642.0, 34768.6, 15401.3, 17431.1]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [3.3, 3.2, 3.5, 3.8, 3.0, 4.3, 2.2, 3.7, 3.0, 4.1, 3.6, 2.7, 3.4, 4.3, 3.5, 3.2, 4.0, 3.0, 2.0, 7.4, 3.2, 3.4]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [28155.4, 34778.7, 33666.4, 44220.3, 39011.1, 41846.8, 30498.8, 31874.8, 41643.0, 34746.8, 31038.0, 35524.4, 42354.8, 44418.4, 37392.6, 31982.1, 45245.6, 41216.0, 30005.0, 61213.7, 41189.5, 42722.1]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.1, 1.2, 1.8, 1.4, 1.0, 1.2, 1.0, 1.6, 1.3, 1.3, 1.5, 1.0, 1.3, 1.7, 1.1, 1.3, 1.7, 1.2, 0.9, 3.2, 1.5, 1.3]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [16033.0, 21649.1, 18367.5, 26384.9, 23587.7, 27936.0, 14539.5, 17820.3, 24159.6, 19799.8, 14886.1, 16868.2, 27178.9, 27489.2, 19355.8, 12787.3, 27801.7, 22469.2, 14400.8, 46411.9, 26349.3, 22071.2]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [1.4, 1.7, 1.8, 1.5, 1.1, 1.6, 0.9, 1.7, 1.2, 1.2, 1.6, 1.0, 1.4, 1.9, 1.7, 1.6, 2.0, 1.2, 0.8, 3.4, 1.7, 1.6]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [122493.7, 149820.6, 129214.0, 136849.7, 138470.2, 144472.7, 95523.9, 101470.5, 128743.8, 118774.8, 107945.6, 105041.8, 144308.7, 166047.7, 114966.3, 131759.9, 135340.9, 140893.4, 131768.3, 155094.3, 180378.4, 150122.7]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [9688.2, 11822.6, 13879.1, 19936.9, 11791.9, 11562.9, 8114.6, 7744.9, 18853.2, 16933.8, 7747.0, 8661.9, 11087.4, 13966.0, 9297.2, 9682.3, 19078.9, 10755.7, 10686.7, 11897.9, 15515.7, 11911.2]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [218379.0, 269117.3, 254745.5, 304720.4, 287843.2, 294778.7, 202222.5, 206267.0, 290406.9, 244142.8, 184190.0, 229340.2, 286223.5, 330432.0, 234958.9, 255349.6, 295141.5, 288561.0, 273484.3, 321640.4, 350176.7, 302525.9]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.8, 2.0, 2.4, 2.0, 1.4, 1.6, 1.3, 2.1, 1.8, 1.7, 2.0, 1.3, 1.7, 2.6, 1.8, 2.0, 1.8, 1.5, 2.4, 1.9, 2.4, 2.0]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [53873.0, 66474.9, 52024.6, 70068.5, 63812.5, 64409.4, 43998.7, 39926.7, 68488.9, 57521.6, 39054.6, 44879.7, 63569.9, 68978.0, 49996.6, 51828.3, 70002.5, 63024.9, 57710.3, 67093.3, 73818.0, 64904.2]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [3328.9, 4158.0, 4512.2, 4315.9, 3466.7, 4067.4, 2841.4, 2971.9, 3721.2, 3749.5, 3626.7, 3065.3, 3639.7, 5350.2, 2923.3, 3490.3, 3601.9, 4116.6, 3954.6, 4457.1, 5408.5, 4140.3]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [30042.5, 39771.4, 33445.5, 38984.4, 36092.3, 34872.0, 27515.2, 28800.0, 35259.7, 31377.1, 24590.5, 25859.3, 39608.4, 45187.9, 30630.7, 24291.2, 41952.6, 38288.6, 23771.5, 68957.7, 38633.6, 36378.3]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [2800.4, 3543.0, 3829.8, 3724.9, 3617.4, 3505.9, 3229.3, 2691.6, 4806.4, 2907.8, 2183.6, 2879.2, 3888.6, 4193.1, 2817.9, 3167.6, 4558.5, 3465.0, 2525.8, 5857.9, 3354.7, 4811.2]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [58121.2, 76076.5, 68807.2, 84007.9, 81376.6, 82795.6, 58376.4, 55613.7, 86206.9, 59297.2, 44311.3, 56370.3, 87662.6, 93055.1, 71601.6, 48079.4, 82831.9, 84012.2, 46941.1, 107311.9, 79215.9, 82553.0]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.0, 1.2, 2.3, 1.3, 1.0, 1.0, 1.1, 2.0, 1.2, 1.2, 1.0, 1.1, 1.6, 2.1, 1.1, 1.2, 2.0, 1.2, 1.2, 3.2, 1.2, 1.9]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [15596.8, 21949.3, 16415.8, 21967.6, 21470.8, 22464.9, 15864.8, 12773.0, 23134.9, 15870.2, 12090.1, 14948.2, 23201.2, 24764.2, 16427.0, 12351.9, 20970.8, 21910.9, 12276.9, 27829.5, 21507.1, 21553.7]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [739.4, 972.7, 805.0, 855.2, 803.6, 785.7, 627.6, 705.5, 843.2, 695.4, 497.7, 607.9, 1052.8, 1286.5, 687.4, 528.0, 946.8, 845.4, 549.5, 2189.2, 792.4, 874.0]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [10440.0, 15557.2, 11457.1, 13518.7, 12640.5, 12542.6, 8682.4, 8878.8, 12787.7, 10457.6, 9024.9, 8827.4, 13781.1, 15537.1, 10266.7, 6334.8, 11961.1, 12233.8, 14155.9, 13821.3, 15404.0, 16077.9]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [925.2, 1427.4, 1127.5, 1311.3, 1223.2, 1184.2, 879.6, 847.8, 1267.7, 988.1, 846.9, 1025.5, 1343.5, 2126.9, 1128.4, 679.7, 1289.3, 1232.4, 1352.0, 1322.6, 1462.8, 1768.3]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [27492.1, 38434.8, 28600.2, 38760.3, 35914.7, 37283.3, 26653.6, 25124.6, 39943.0, 29657.9, 65867.1, 26872.3, 39304.2, 41634.3, 28772.1, 19308.3, 39819.1, 35192.3, 34278.4, 37371.6, 42994.9, 42830.0]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [0.8, 1.2, 1.4, 0.9, 0.8, 0.8, 1.1, 1.1, 0.9, 0.8, 0.8, 1.0, 0.9, 2.5, 0.9, 0.6, 0.8, 0.9, 1.7, 0.9, 2.0, 1.7]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [7535.1, 11593.9, 7440.0, 10757.9, 10783.6, 10447.9, 7142.7, 5944.2, 11076.0, 7590.2, 5930.9, 7744.9, 10941.1, 11507.2, 7760.5, 5517.6, 10924.2, 9315.2, 9093.6, 10718.0, 11113.0, 11392.9]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [209.5, 316.8, 257.4, 307.7, 289.4, 268.8, 213.9, 203.7, 284.5, 230.4, 177.8, 196.6, 291.5, 373.8, 235.8, 154.8, 305.7, 280.8, 308.1, 308.9, 333.8, 459.6]
```

```mermaid
xychart-beta
    title "status-panel/compose (median µs)"
    x-axis 1 --> 22
    line [468.9, 653.2, 449.9, 652.9, 625.9, 604.8, 463.3, 373.4, 612.2, 459.2, 352.7, 492.0, 622.0, 695.7, 440.5, 317.8, 596.0, 594.6, 421.2, 590.7, 296.1, 579.2]
```

```mermaid
xychart-beta
    title "unwind/compose (median µs)"
    x-axis 1 --> 22
    line [4377.9, 5909.9, 4681.9, 2220.6, 3034.6, 3095.2, 3927.3, 2203.9, 4610.8, 4615.6, 4168.6, 5287.0, 3968.8, 5119.5, 5017.5, 2779.9, 5014.6, 4672.0, 3901.1, 2721.7, 3855.9, 4826.5]
```

```mermaid
xychart-beta
    title "update-batched/compose (median µs)"
    x-axis 1 --> 22
    line [3498.0, 1720.7, 3034.6, 2232.9, 3059.4, 1492.9, 3239.3, 2419.1, 3145.7, 2866.6, 3061.9, 2906.3, 1694.5, 2832.4, 1705.8, 1406.1, 2879.4, 3050.4, 1456.6, 3225.6, 3104.5, 2820.9]
```

```mermaid
xychart-beta
    title "update-fanout/compose (median µs)"
    x-axis 1 --> 22
    line [2181.8, 955.8, 1823.1, 1315.3, 1835.1, 822.8, 1892.2, 1379.4, 1836.8, 1623.3, 1834.5, 1580.5, 1039.3, 1573.0, 1099.2, 784.0, 1611.9, 1851.9, 911.6, 1938.1, 816.4, 1817.4]
```

```mermaid
xychart-beta
    title "update-leaf/compose (median µs)"
    x-axis 1 --> 22
    line [36.3, 43.0, 35.9, 40.1, 40.7, 40.7, 32.8, 24.2, 40.6, 34.0, 24.7, 32.8, 41.4, 43.5, 35.0, 35.0, 40.2, 40.9, 37.2, 42.4, 45.9, 46.2]
```

```mermaid
xychart-beta
    title "update-repeated/compose (median µs)"
    x-axis 1 --> 22
    line [393.2, 210.7, 261.5, 364.0, 356.1, 357.0, 469.4, 268.4, 383.0, 395.5, 388.8, 232.4, 387.3, 244.4, 210.0, 217.7, 386.3, 452.3, 378.3, 405.9, 396.0, 386.4]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/burst (median µs)"
    x-axis 1 --> 22
    line [874021.2, 673319.5, 659995.0, 698672.7, 709767.1, 654183.8, 988199.5, 671053.7, 967523.5, 778264.5, 811090.8, 569938.9, 910413.3, 550601.3, 695441.5, 820702.3, 742009.7, 484086.9, 431022.7, 824112.7, 780633.3, 845216.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/cold (median µs)"
    x-axis 1 --> 22
    line [548551.6, 399701.0, 402562.3, 443175.1, 434568.7, 403527.0, 604894.6, 421563.3, 603837.8, 489436.5, 504515.2, 358296.8, 541987.4, 347947.1, 392957.5, 500707.8, 467942.4, 317393.7, 277187.4, 514064.0, 485503.0, 519078.7]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/counts (median µs)"
    x-axis 1 --> 22
    line [1518062.6, 1045366.1, 1078431.5, 1190165.4, 1065313.0, 1109872.8, 1634229.8, 1128758.7, 1588525.9, 1438190.9, 1324146.1, 979310.2, 1407718.8, 915354.4, 977918.0, 1440720.4, 1205033.1, 876742.1, 715349.4, 1397237.0, 1320607.2, 1369439.3]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/settle (median µs)"
    x-axis 1 --> 22
    line [2.2, 2.7, 2.7, 1.8, 2.4, 2.4, 2.9, 2.8, 2.4, 2.2, 2.0, 2.5, 2.6, 2.9, 2.6, 2.0, 2.7, 2.5, 1.9, 2.5, 2.2, 1.9]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/steady (median µs)"
    x-axis 1 --> 22
    line [21817.1, 12911.6, 13726.7, 13668.5, 12849.3, 13460.1, 17921.6, 12450.5, 16974.3, 17271.7, 17237.6, 11368.9, 17521.2, 11575.5, 11761.5, 17423.0, 11351.4, 9078.8, 9006.4, 16443.6, 17847.7, 18051.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [597.3, 596.2, 570.2, 533.8, 467.2, 441.5, 606.6, 495.5, 583.4, 518.6, 522.5, 464.9, 584.6, 478.9, 479.2, 494.7, 706.7, 374.9, 343.7, 529.1, 538.7, 556.3]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/burst (median µs)"
    x-axis 1 --> 22
    line [129597.0, 152881.9, 130628.4, 71007.0, 94251.3, 81557.8, 108804.7, 69145.0, 134404.0, 102881.0, 112407.1, 126039.1, 123775.7, 136155.9, 114486.1, 77275.2, 135195.8, 124499.4, 79215.3, 124896.5, 69069.8, 122392.8]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/cold (median µs)"
    x-axis 1 --> 22
    line [77495.7, 86845.4, 78386.1, 43806.1, 55829.2, 50093.8, 66586.9, 43522.0, 82924.9, 63045.2, 66023.5, 76969.5, 75937.8, 79438.3, 68991.4, 49384.0, 80383.1, 76827.1, 50157.5, 77096.2, 43482.7, 76517.2]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/counts (median µs)"
    x-axis 1 --> 22
    line [233844.8, 292742.7, 237449.0, 132886.2, 159710.6, 141581.0, 209257.8, 142227.2, 252387.7, 199410.2, 207526.1, 241998.3, 231202.4, 245977.0, 211288.5, 153403.7, 244368.3, 235586.1, 153605.0, 234627.7, 127418.4, 225178.9]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.8, 2.5, 2.0, 1.0, 2.1, 2.4, 2.3, 1.2, 2.1, 2.1, 2.4, 1.8, 1.2, 2.4, 2.4, 2.2, 2.6, 1.3, 2.2, 1.7, 0.8, 1.2]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/steady (median µs)"
    x-axis 1 --> 22
    line [16797.9, 18068.3, 13820.3, 7769.8, 11069.5, 9141.8, 12120.4, 7335.3, 16558.6, 10946.5, 11137.6, 16225.6, 15387.4, 14413.4, 12472.3, 8112.6, 13897.6, 14714.7, 9082.8, 15732.1, 8132.3, 13574.9]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [394.3, 415.6, 316.6, 177.0, 238.9, 230.5, 303.4, 184.1, 317.8, 280.4, 292.6, 359.0, 307.8, 369.9, 269.5, 212.5, 356.0, 334.4, 240.9, 306.1, 173.7, 293.8]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/burst (median µs)"
    x-axis 1 --> 22
    line [26466.6, 30431.0, 24749.7, 14336.6, 15360.9, 16779.4, 21924.1, 13689.7, 24794.3, 20202.7, 20132.0, 25621.4, 24773.5, 25981.2, 22864.6, 13909.1, 25651.2, 23180.0, 16578.8, 31624.7, 24439.6, 23830.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/cold (median µs)"
    x-axis 1 --> 22
    line [13006.1, 14270.7, 12615.2, 6978.4, 7976.4, 8554.5, 10792.6, 6996.2, 13356.2, 9970.9, 9896.2, 12853.1, 12663.9, 12606.7, 11415.1, 7262.3, 13373.6, 12393.4, 8292.3, 16599.7, 12844.8, 12351.4]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/counts (median µs)"
    x-axis 1 --> 22
    line [59589.6, 61649.5, 60488.9, 31514.3, 44861.3, 36535.2, 54991.8, 31197.0, 63162.6, 48873.6, 53950.2, 61960.5, 56716.0, 60081.4, 53423.1, 34154.5, 63664.9, 58409.1, 36577.4, 76937.2, 62513.6, 60942.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/settle (median µs)"
    x-axis 1 --> 22
    line [1.3, 2.0, 1.7, 0.7, 1.1, 2.3, 2.0, 0.7, 1.8, 2.7, 2.1, 1.3, 0.9, 1.9, 2.1, 0.7, 2.3, 0.9, 1.0, 3.3, 1.1, 1.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/steady (median µs)"
    x-axis 1 --> 22
    line [13755.1, 15839.6, 11775.6, 6339.4, 8929.5, 7982.2, 10279.3, 6290.3, 14426.7, 10949.9, 8832.9, 13971.7, 12365.5, 11107.7, 10232.8, 7175.8, 14107.1, 12761.4, 7450.0, 19260.3, 13970.0, 12561.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/teardown (median µs)"
    x-axis 1 --> 22
    line [209.7, 348.6, 197.9, 112.1, 130.1, 141.5, 160.7, 108.4, 198.1, 167.1, 160.3, 216.6, 190.8, 206.7, 159.2, 103.6, 256.2, 190.9, 119.8, 430.9, 218.6, 194.4]
```

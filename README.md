# Compose performance

Latest: `a576a22e3c02bff9d67c57ef1640c15a6d0f7e1e` on 2026-10-26T105719Z, measured on the CI Ubuntu runner by the paired performance shards.
Each value is the median of the candidate arm's samples; p95 is shown beside it. Change compares the previous main commit.

| Benchmark | Median | p95 | Change |
| --- | --- | --- | --- |
| animate-many/bare | 1.65 ms | 1.81 ms | +69.3% |
| animate-many/compose | 8.97 ms | 9.71 ms | +117.2% |
| animate-many/memory/mounted | 2399 KiB | 2399 KiB | +0.0% |
| animate-many/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.extreme/bare/burst | 1.46 ms | 1.52 ms | +91.4% |
| animated-navigation.extreme/bare/cold | 6.29 ms | 9.06 ms | +94.3% |
| animated-navigation.extreme/bare/settle | 1.2 µs | 1.5 µs | +221.8% |
| animated-navigation.extreme/bare/steady | 19.29 ms | 20.02 ms | +99.8% |
| animated-navigation.extreme/bare/teardown | 4.00 ms | 4.90 ms | +65.4% |
| animated-navigation.extreme/compose/burst | 10.11 ms | 12.90 ms | +75.5% |
| animated-navigation.extreme/compose/cold | 13.37 ms | 21.84 ms | +78.9% |
| animated-navigation.extreme/compose/counts | 115.20 ms | 115.20 ms | +96.3% |
| animated-navigation.extreme/compose/settle | 1.1 µs | 1.7 µs | +52.9% |
| animated-navigation.extreme/compose/steady | 40.47 ms | 43.60 ms | +91.3% |
| animated-navigation.extreme/compose/teardown | 6.31 ms | 7.11 ms | +70.9% |
| animated-navigation.extreme/memory/mounted | 7535 KiB | 7535 KiB | +0.1% |
| animated-navigation.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| animated-navigation.large/bare/burst | 711.6 µs | 740.0 µs | +105.0% |
| animated-navigation.large/bare/cold | 2.99 ms | 6.38 ms | +105.0% |
| animated-navigation.large/bare/settle | 1.0 µs | 1.3 µs | +212.1% |
| animated-navigation.large/bare/steady | 9.19 ms | 9.33 ms | +95.4% |
| animated-navigation.large/bare/teardown | 1.33 ms | 1.55 ms | +86.3% |
| animated-navigation.large/compose/burst | 5.47 ms | 6.03 ms | +90.6% |
| animated-navigation.large/compose/cold | 7.03 ms | 10.04 ms | +64.6% |
| animated-navigation.large/compose/counts | 80.42 ms | 80.42 ms | +71.5% |
| animated-navigation.large/compose/settle | 1.1 µs | 2.1 µs | +2.9% |
| animated-navigation.large/compose/steady | 34.67 ms | 35.83 ms | +101.2% |
| animated-navigation.large/compose/teardown | 2.58 ms | 3.30 ms | +54.2% |
| animated-navigation.large/memory/mounted | 3793 KiB | 3793 KiB | +0.0% |
| animated-navigation.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| animated-navigation.medium/bare/burst | 177.3 µs | 201.1 µs | -20.9% |
| animated-navigation.medium/bare/cold | 448.5 µs | 887.8 µs | -12.8% |
| animated-navigation.medium/bare/settle | 0.4 µs | 0.7 µs | -10.2% |
| animated-navigation.medium/bare/steady | 2.08 ms | 2.26 ms | -21.0% |
| animated-navigation.medium/bare/teardown | 169.9 µs | 191.4 µs | -9.1% |
| animated-navigation.medium/compose/burst | 1.09 ms | 1.23 ms | -36.7% |
| animated-navigation.medium/compose/cold | 1.31 ms | 2.20 ms | -13.3% |
| animated-navigation.medium/compose/counts | 22.03 ms | 22.03 ms | -21.9% |
| animated-navigation.medium/compose/settle | 0.5 µs | 1.1 µs | -12.0% |
| animated-navigation.medium/compose/steady | 8.40 ms | 9.12 ms | -37.3% |
| animated-navigation.medium/compose/teardown | 338.6 µs | 391.7 µs | -19.1% |
| animated-navigation.medium/memory/mounted | 1282 KiB | 1282 KiB | +0.0% |
| animated-navigation.medium/memory/teardown | 0 KiB | 0 KiB | — |
| branch-swap/bare | 2.69 ms | 5.60 ms | -4.4% |
| branch-swap/compose | 4.59 ms | 6.56 ms | +82.0% |
| branch-swap/memory/mounted | 35 KiB | 35 KiB | +0.0% |
| branch-swap/memory/teardown | 0 KiB | 0 KiB | — |
| cold-mount-100/bare | 648.6 µs | 1.20 ms | +38.8% |
| cold-mount-100/compose | 586.1 µs | 1.18 ms | +81.6% |
| cold-mount-100/memory/mounted | 2240 KiB | 2240 KiB | +0.0% |
| cold-mount-100/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| cold-mount-1000/bare | 7.85 ms | 12.42 ms | +36.4% |
| cold-mount-1000/compose | 7.86 ms | 14.30 ms | +31.7% |
| cold-mount-1000/memory/mounted | 21906 KiB | 21906 KiB | +0.0% |
| cold-mount-1000/memory/teardown | 0 KiB | 0 KiB | — |
| cold-mount-10000/bare | 55.11 ms | 107.83 ms | +38.4% |
| cold-mount-10000/compose | 92.71 ms | 147.65 ms | +6.6% |
| cold-mount-10000/memory/mounted | 219958 KiB | 219958 KiB | -0.0% |
| cold-mount-10000/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| data-grid.extreme/bare/burst | 806.69 ms | 893.16 ms | -0.9% |
| data-grid.extreme/bare/cold | 512.93 ms | 556.30 ms | -4.1% |
| data-grid.extreme/bare/settle | 3.0 µs | 3.4 µs | +5.7% |
| data-grid.extreme/bare/steady | 19.26 ms | 29.76 ms | +0.9% |
| data-grid.extreme/bare/teardown | 538.9 µs | 1.01 ms | -2.4% |
| data-grid.extreme/compose/burst | 908.08 ms | 958.01 ms | -1.5% |
| data-grid.extreme/compose/cold | 559.33 ms | 579.01 ms | -0.2% |
| data-grid.extreme/compose/counts | 1598.44 ms | 1598.44 ms | +5.1% |
| data-grid.extreme/compose/settle | 2.5 µs | 3.2 µs | +29.5% |
| data-grid.extreme/compose/steady | 23.91 ms | 28.79 ms | -6.5% |
| data-grid.extreme/compose/teardown | 1.34 ms | 1.95 ms | -3.7% |
| data-grid.extreme/memory/mounted | 33055 KiB | 33055 KiB | +0.0% |
| data-grid.extreme/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| data-grid.large/bare/burst | 84.46 ms | 86.29 ms | -26.6% |
| data-grid.large/bare/cold | 52.15 ms | 54.31 ms | -28.1% |
| data-grid.large/bare/settle | 1.4 µs | 2.0 µs | +26.3% |
| data-grid.large/bare/steady | 8.66 ms | 9.69 ms | -20.0% |
| data-grid.large/bare/teardown | 159.1 µs | 201.9 µs | -8.5% |
| data-grid.large/compose/burst | 95.34 ms | 100.67 ms | -27.4% |
| data-grid.large/compose/cold | 55.85 ms | 61.50 ms | -27.9% |
| data-grid.large/compose/counts | 179.44 ms | 179.44 ms | -26.5% |
| data-grid.large/compose/settle | 1.2 µs | 1.5 µs | -13.8% |
| data-grid.large/compose/steady | 11.48 ms | 14.26 ms | -31.0% |
| data-grid.large/compose/teardown | 391.3 µs | 513.0 µs | -24.3% |
| data-grid.large/memory/mounted | 7474 KiB | 7474 KiB | +0.0% |
| data-grid.large/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| data-grid.medium/bare/burst | 54.72 ms | 60.07 ms | +33.6% |
| data-grid.medium/bare/cold | 32.99 ms | 34.47 ms | +28.4% |
| data-grid.medium/bare/settle | 2.8 µs | 3.2 µs | +30.2% |
| data-grid.medium/bare/steady | 7.38 ms | 12.21 ms | +17.5% |
| data-grid.medium/bare/teardown | 119.8 µs | 152.2 µs | +44.9% |
| data-grid.medium/compose/burst | 67.91 ms | 73.20 ms | +33.2% |
| data-grid.medium/compose/cold | 37.27 ms | 45.02 ms | +34.6% |
| data-grid.medium/compose/counts | 148.72 ms | 148.72 ms | +42.5% |
| data-grid.medium/compose/settle | 2.7 µs | 3.5 µs | +35.5% |
| data-grid.medium/compose/steady | 13.62 ms | 22.24 ms | +30.1% |
| data-grid.medium/compose/teardown | 350.6 µs | 684.6 µs | +35.8% |
| data-grid.medium/memory/mounted | 3935 KiB | 3935 KiB | +0.0% |
| data-grid.medium/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| dense-dashboard.extreme/bare/burst | 9.33 ms | 12.01 ms | +80.6% |
| dense-dashboard.extreme/bare/cold | 276.6 µs | 612.1 µs | -2.5% |
| dense-dashboard.extreme/bare/settle | 1.7 µs | 2.2 µs | +161.8% |
| dense-dashboard.extreme/bare/steady | 141.3 µs | 156.8 µs | +28.8% |
| dense-dashboard.extreme/bare/teardown | 266.5 µs | 370.2 µs | +47.6% |
| dense-dashboard.extreme/compose/burst | 19.80 ms | 25.89 ms | +39.1% |
| dense-dashboard.extreme/compose/cold | 622.2 µs | 1.57 ms | +35.0% |
| dense-dashboard.extreme/compose/counts | 29.18 ms | 29.18 ms | +48.8% |
| dense-dashboard.extreme/compose/settle | 2.0 µs | 2.9 µs | +122.1% |
| dense-dashboard.extreme/compose/steady | 897.3 µs | 971.7 µs | +28.1% |
| dense-dashboard.extreme/compose/teardown | 750.9 µs | 865.5 µs | +57.3% |
| dense-dashboard.extreme/memory/mounted | 1250 KiB | 1250 KiB | +0.0% |
| dense-dashboard.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| dense-dashboard.large/bare/burst | 4.27 ms | 6.74 ms | +85.3% |
| dense-dashboard.large/bare/cold | 179.2 µs | 689.9 µs | +71.3% |
| dense-dashboard.large/bare/settle | 1.0 µs | 1.3 µs | +69.1% |
| dense-dashboard.large/bare/steady | 143.7 µs | 155.1 µs | +33.8% |
| dense-dashboard.large/bare/teardown | 121.3 µs | 182.5 µs | +48.9% |
| dense-dashboard.large/compose/burst | 10.12 ms | 14.27 ms | +92.2% |
| dense-dashboard.large/compose/cold | 388.7 µs | 608.9 µs | +61.3% |
| dense-dashboard.large/compose/counts | 18.18 ms | 18.18 ms | +37.7% |
| dense-dashboard.large/compose/settle | 1.6 µs | 2.3 µs | +137.8% |
| dense-dashboard.large/compose/steady | 906.9 µs | 924.0 µs | +31.9% |
| dense-dashboard.large/compose/teardown | 330.2 µs | 529.7 µs | +61.9% |
| dense-dashboard.large/memory/mounted | 657 KiB | 657 KiB | +0.0% |
| dense-dashboard.large/memory/teardown | 0 KiB | 0 KiB | — |
| dense-dashboard.medium/bare/burst | 1.13 ms | 2.54 ms | +3.0% |
| dense-dashboard.medium/bare/cold | 150.3 µs | 285.1 µs | +101.9% |
| dense-dashboard.medium/bare/settle | 1.0 µs | 1.2 µs | +90.4% |
| dense-dashboard.medium/bare/steady | 111.8 µs | 131.0 µs | +44.6% |
| dense-dashboard.medium/bare/teardown | 52.6 µs | 75.1 µs | +51.2% |
| dense-dashboard.medium/compose/burst | 2.92 ms | 4.15 ms | +32.2% |
| dense-dashboard.medium/compose/cold | 216.8 µs | 366.9 µs | +27.7% |
| dense-dashboard.medium/compose/counts | 5.81 ms | 5.81 ms | +45.2% |
| dense-dashboard.medium/compose/settle | 1.0 µs | 1.5 µs | +86.6% |
| dense-dashboard.medium/compose/steady | 626.3 µs | 663.9 µs | +40.2% |
| dense-dashboard.medium/compose/teardown | 105.7 µs | 359.0 µs | +17.7% |
| dense-dashboard.medium/memory/mounted | 329 KiB | 329 KiB | +0.3% |
| dense-dashboard.medium/memory/teardown | 1 KiB | 1 KiB | — |
| entities-identity-churn-10.extreme/bare/burst | 18.40 ms | 29.29 ms | +27.8% |
| entities-identity-churn-10.extreme/bare/cold | 8.21 ms | 15.42 ms | +28.3% |
| entities-identity-churn-10.extreme/bare/settle | 2.2 µs | 2.8 µs | -16.6% |
| entities-identity-churn-10.extreme/bare/steady | 32.91 ms | 35.75 ms | +56.4% |
| entities-identity-churn-10.extreme/bare/teardown | 398.6 µs | 544.1 µs | +17.1% |
| entities-identity-churn-10.extreme/compose/burst | 49.68 ms | 60.78 ms | +24.3% |
| entities-identity-churn-10.extreme/compose/cold | 24.31 ms | 37.68 ms | -17.0% |
| entities-identity-churn-10.extreme/compose/counts | 216.33 ms | 216.33 ms | +17.6% |
| entities-identity-churn-10.extreme/compose/settle | 2.5 µs | 2.9 µs | -0.9% |
| entities-identity-churn-10.extreme/compose/steady | 64.25 ms | 75.36 ms | +37.4% |
| entities-identity-churn-10.extreme/compose/teardown | 1.18 ms | 1.96 ms | +2.8% |
| entities-identity-churn-10.extreme/memory/mounted | 4382 KiB | 4382 KiB | +0.0% |
| entities-identity-churn-10.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| entities-identity-churn-10.large/bare/burst | 6.21 ms | 10.72 ms | +14.1% |
| entities-identity-churn-10.large/bare/cold | 3.44 ms | 6.35 ms | +45.6% |
| entities-identity-churn-10.large/bare/settle | 1.9 µs | 2.5 µs | +113.9% |
| entities-identity-churn-10.large/bare/steady | 10.70 ms | 15.46 ms | +25.9% |
| entities-identity-churn-10.large/bare/teardown | 163.0 µs | 198.1 µs | +68.7% |
| entities-identity-churn-10.large/compose/burst | 16.59 ms | 27.69 ms | +20.1% |
| entities-identity-churn-10.large/compose/cold | 13.34 ms | 21.79 ms | +25.8% |
| entities-identity-churn-10.large/compose/counts | 80.55 ms | 80.55 ms | +38.2% |
| entities-identity-churn-10.large/compose/settle | 2.4 µs | 2.8 µs | +51.7% |
| entities-identity-churn-10.large/compose/steady | 22.98 ms | 32.79 ms | +35.2% |
| entities-identity-churn-10.large/compose/teardown | 470.6 µs | 617.1 µs | +33.9% |
| entities-identity-churn-10.large/memory/mounted | 1729 KiB | 1729 KiB | -1.6% |
| entities-identity-churn-10.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-identity-churn-10.medium/bare/burst | 2.44 ms | 5.24 ms | +86.0% |
| entities-identity-churn-10.medium/bare/cold | 2.59 ms | 4.24 ms | +142.8% |
| entities-identity-churn-10.medium/bare/settle | 0.9 µs | 17.9 µs | +67.2% |
| entities-identity-churn-10.medium/bare/steady | 5.33 ms | 6.24 ms | +94.5% |
| entities-identity-churn-10.medium/bare/teardown | 63.8 µs | 197.0 µs | +36.5% |
| entities-identity-churn-10.medium/compose/burst | 7.29 ms | 11.97 ms | +86.9% |
| entities-identity-churn-10.medium/compose/cold | 5.97 ms | 8.04 ms | +105.0% |
| entities-identity-churn-10.medium/compose/counts | 32.47 ms | 32.47 ms | +76.6% |
| entities-identity-churn-10.medium/compose/settle | 1.3 µs | 2.1 µs | +111.8% |
| entities-identity-churn-10.medium/compose/steady | 9.52 ms | 10.22 ms | +99.9% |
| entities-identity-churn-10.medium/compose/teardown | 211.8 µs | 325.2 µs | +91.2% |
| entities-identity-churn-10.medium/memory/mounted | 911 KiB | 911 KiB | +0.0% |
| entities-identity-churn-10.medium/memory/teardown | 1 KiB | 1 KiB | — |
| entities-identity-churn-50.extreme/bare/burst | 13.83 ms | 25.81 ms | -16.7% |
| entities-identity-churn-50.extreme/bare/cold | 5.63 ms | 13.03 ms | -18.5% |
| entities-identity-churn-50.extreme/bare/settle | 1.3 µs | 1.4 µs | -20.1% |
| entities-identity-churn-50.extreme/bare/steady | 55.48 ms | 73.51 ms | -5.7% |
| entities-identity-churn-50.extreme/bare/teardown | 316.0 µs | 734.7 µs | -11.6% |
| entities-identity-churn-50.extreme/compose/burst | 40.78 ms | 52.61 ms | +5.0% |
| entities-identity-churn-50.extreme/compose/cold | 25.50 ms | 44.85 ms | -1.8% |
| entities-identity-churn-50.extreme/compose/counts | 275.85 ms | 275.85 ms | -16.2% |
| entities-identity-churn-50.extreme/compose/settle | 1.4 µs | 2.8 µs | -22.4% |
| entities-identity-churn-50.extreme/compose/steady | 138.68 ms | 145.80 ms | -24.1% |
| entities-identity-churn-50.extreme/compose/teardown | 926.8 µs | 1.61 ms | -12.8% |
| entities-identity-churn-50.extreme/memory/mounted | 4348 KiB | 4348 KiB | -0.2% |
| entities-identity-churn-50.extreme/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| entities-identity-churn-50.large/bare/burst | 5.29 ms | 10.39 ms | +1.1% |
| entities-identity-churn-50.large/bare/cold | 3.99 ms | 6.02 ms | +68.1% |
| entities-identity-churn-50.large/bare/settle | 2.1 µs | 3.0 µs | -7.6% |
| entities-identity-churn-50.large/bare/steady | 23.64 ms | 28.23 ms | +40.9% |
| entities-identity-churn-50.large/bare/teardown | 124.5 µs | 306.9 µs | +7.4% |
| entities-identity-churn-50.large/compose/burst | 15.07 ms | 21.14 ms | +7.2% |
| entities-identity-churn-50.large/compose/cold | 10.07 ms | 16.32 ms | -14.0% |
| entities-identity-churn-50.large/compose/counts | 117.18 ms | 117.18 ms | +23.0% |
| entities-identity-churn-50.large/compose/settle | 2.2 µs | 2.9 µs | +3.7% |
| entities-identity-churn-50.large/compose/steady | 59.57 ms | 69.04 ms | +25.3% |
| entities-identity-churn-50.large/compose/teardown | 410.5 µs | 564.7 µs | +11.1% |
| entities-identity-churn-50.large/memory/mounted | 1804 KiB | 1804 KiB | -0.2% |
| entities-identity-churn-50.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-identity-churn-50.medium/bare/burst | 2.30 ms | 3.18 ms | -14.5% |
| entities-identity-churn-50.medium/bare/cold | 863.2 µs | 2.27 ms | -41.4% |
| entities-identity-churn-50.medium/bare/settle | 1.1 µs | 1.8 µs | +43.2% |
| entities-identity-churn-50.medium/bare/steady | 6.85 ms | 10.99 ms | -33.8% |
| entities-identity-churn-50.medium/bare/teardown | 52.3 µs | 75.1 µs | -22.6% |
| entities-identity-churn-50.medium/compose/burst | 6.02 ms | 9.54 ms | -27.9% |
| entities-identity-churn-50.medium/compose/cold | 3.49 ms | 4.59 ms | -40.9% |
| entities-identity-churn-50.medium/compose/counts | 49.53 ms | 49.53 ms | -21.9% |
| entities-identity-churn-50.medium/compose/settle | 1.1 µs | 1.2 µs | +24.0% |
| entities-identity-churn-50.medium/compose/steady | 17.90 ms | 24.97 ms | -30.9% |
| entities-identity-churn-50.medium/compose/teardown | 176.2 µs | 197.7 µs | -27.0% |
| entities-identity-churn-50.medium/memory/mounted | 998 KiB | 998 KiB | +0.0% |
| entities-identity-churn-50.medium/memory/teardown | 1 KiB | 1 KiB | — |
| entities-identity-churn.extreme/bare/burst | 24.01 ms | 34.26 ms | +21.8% |
| entities-identity-churn.extreme/bare/cold | 11.27 ms | 28.67 ms | +46.8% |
| entities-identity-churn.extreme/bare/settle | 3.1 µs | 3.8 µs | +52.3% |
| entities-identity-churn.extreme/bare/steady | 54.14 ms | 76.63 ms | +25.4% |
| entities-identity-churn.extreme/bare/teardown | 585.3 µs | 1.25 ms | +45.8% |
| entities-identity-churn.extreme/compose/burst | 73.33 ms | 86.69 ms | +48.4% |
| entities-identity-churn.extreme/compose/cold | 48.72 ms | 67.67 ms | +58.0% |
| entities-identity-churn.extreme/compose/counts | 353.59 ms | 353.59 ms | +52.5% |
| entities-identity-churn.extreme/compose/settle | 3.1 µs | 3.9 µs | +47.1% |
| entities-identity-churn.extreme/compose/steady | 176.37 ms | 206.06 ms | +95.0% |
| entities-identity-churn.extreme/compose/teardown | 2.63 ms | 3.20 ms | +131.8% |
| entities-identity-churn.extreme/memory/mounted | 4753 KiB | 4753 KiB | +4.4% |
| entities-identity-churn.extreme/memory/teardown | 97 KiB | 97 KiB | — |
| entities-identity-churn.large/bare/burst | 5.48 ms | 9.15 ms | +22.3% |
| entities-identity-churn.large/bare/cold | 4.46 ms | 10.34 ms | +112.0% |
| entities-identity-churn.large/bare/settle | 1.9 µs | 2.5 µs | +24.3% |
| entities-identity-churn.large/bare/steady | 15.29 ms | 20.01 ms | +53.4% |
| entities-identity-churn.large/bare/teardown | 129.8 µs | 192.7 µs | +33.8% |
| entities-identity-churn.large/compose/burst | 16.64 ms | 23.09 ms | +54.1% |
| entities-identity-churn.large/compose/cold | 12.91 ms | 21.56 ms | +66.0% |
| entities-identity-churn.large/compose/counts | 123.43 ms | 123.43 ms | +56.7% |
| entities-identity-churn.large/compose/settle | 2.1 µs | 2.7 µs | +14.5% |
| entities-identity-churn.large/compose/steady | 39.53 ms | 48.69 ms | +71.6% |
| entities-identity-churn.large/compose/teardown | 437.3 µs | 507.9 µs | +48.4% |
| entities-identity-churn.large/memory/mounted | 1713 KiB | 1713 KiB | -6.5% |
| entities-identity-churn.large/memory/teardown | 8 KiB | 8 KiB | -93.8% |
| entities-identity-churn.medium/bare/burst | 3.19 ms | 7.19 ms | +48.4% |
| entities-identity-churn.medium/bare/cold | 1.67 ms | 3.20 ms | +46.8% |
| entities-identity-churn.medium/bare/settle | 1.5 µs | 2.2 µs | +68.6% |
| entities-identity-churn.medium/bare/steady | 7.66 ms | 13.55 ms | +17.7% |
| entities-identity-churn.medium/bare/teardown | 82.2 µs | 101.5 µs | +54.8% |
| entities-identity-churn.medium/compose/burst | 9.68 ms | 14.89 ms | +47.3% |
| entities-identity-churn.medium/compose/cold | 5.53 ms | 13.88 ms | +24.1% |
| entities-identity-churn.medium/compose/counts | 54.11 ms | 54.11 ms | +36.7% |
| entities-identity-churn.medium/compose/settle | 2.0 µs | 2.5 µs | +82.5% |
| entities-identity-churn.medium/compose/steady | 17.42 ms | 24.93 ms | +30.7% |
| entities-identity-churn.medium/compose/teardown | 272.0 µs | 313.1 µs | +44.3% |
| entities-identity-churn.medium/memory/mounted | 966 KiB | 966 KiB | +1.8% |
| entities-identity-churn.medium/memory/teardown | 9 KiB | 9 KiB | — |
| entities-integrated.extreme/bare/burst | 6.92 ms | 10.67 ms | +95.3% |
| entities-integrated.extreme/bare/cold | 39.26 ms | 63.89 ms | +89.8% |
| entities-integrated.extreme/bare/settle | 2.4 µs | 2.8 µs | +74.0% |
| entities-integrated.extreme/bare/steady | 30.95 ms | 46.27 ms | +84.8% |
| entities-integrated.extreme/bare/teardown | 27.31 ms | 31.64 ms | +39.8% |
| entities-integrated.extreme/compose/burst | 19.50 ms | 32.15 ms | +78.6% |
| entities-integrated.extreme/compose/cold | 113.75 ms | 146.89 ms | +54.8% |
| entities-integrated.extreme/compose/counts | 360.52 ms | 360.52 ms | +65.5% |
| entities-integrated.extreme/compose/settle | 1.9 µs | 2.5 µs | +10.3% |
| entities-integrated.extreme/compose/steady | 101.80 ms | 141.81 ms | +72.4% |
| entities-integrated.extreme/compose/teardown | 39.17 ms | 43.08 ms | +24.3% |
| entities-integrated.extreme/memory/mounted | 40376 KiB | 40376 KiB | -0.0% |
| entities-integrated.extreme/memory/teardown | 1 KiB | 1 KiB | -88.9% |
| entities-integrated.large/bare/burst | 2.31 ms | 2.99 ms | -24.2% |
| entities-integrated.large/bare/cold | 6.58 ms | 16.30 ms | -38.6% |
| entities-integrated.large/bare/settle | 1.0 µs | 1.2 µs | -22.0% |
| entities-integrated.large/bare/steady | 10.22 ms | 16.22 ms | -16.7% |
| entities-integrated.large/bare/teardown | 4.47 ms | 5.25 ms | -12.2% |
| entities-integrated.large/compose/burst | 8.48 ms | 11.89 ms | -13.6% |
| entities-integrated.large/compose/cold | 29.16 ms | 38.15 ms | -27.0% |
| entities-integrated.large/compose/counts | 123.09 ms | 123.09 ms | -22.8% |
| entities-integrated.large/compose/settle | 1.2 µs | 8.3 µs | -12.3% |
| entities-integrated.large/compose/steady | 38.34 ms | 47.19 ms | -20.8% |
| entities-integrated.large/compose/teardown | 7.50 ms | 9.83 ms | -20.8% |
| entities-integrated.large/memory/mounted | 16697 KiB | 16697 KiB | -0.0% |
| entities-integrated.large/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-integrated.medium/bare/burst | 2.39 ms | 4.30 ms | +94.7% |
| entities-integrated.medium/bare/cold | 7.56 ms | 13.16 ms | +83.3% |
| entities-integrated.medium/bare/settle | 1.4 µs | 1.9 µs | +141.2% |
| entities-integrated.medium/bare/steady | 12.39 ms | 16.83 ms | +124.8% |
| entities-integrated.medium/bare/teardown | 3.03 ms | 3.99 ms | +116.8% |
| entities-integrated.medium/compose/burst | 8.14 ms | 16.70 ms | +86.2% |
| entities-integrated.medium/compose/cold | 22.03 ms | 37.66 ms | +43.1% |
| entities-integrated.medium/compose/counts | 104.66 ms | 104.66 ms | +89.6% |
| entities-integrated.medium/compose/settle | 1.9 µs | 2.4 µs | +100.2% |
| entities-integrated.medium/compose/steady | 41.22 ms | 53.47 ms | +97.0% |
| entities-integrated.medium/compose/teardown | 7.51 ms | 8.59 ms | +108.8% |
| entities-integrated.medium/memory/mounted | 9029 KiB | 9029 KiB | +0.2% |
| entities-integrated.medium/memory/teardown | 1 KiB | 1 KiB | — |
| entities-relevance-saturated.extreme/bare/burst | 17.34 ms | 35.60 ms | +38.2% |
| entities-relevance-saturated.extreme/bare/cold | 11.52 ms | 20.99 ms | +19.4% |
| entities-relevance-saturated.extreme/bare/settle | 2.6 µs | 3.2 µs | +24.1% |
| entities-relevance-saturated.extreme/bare/steady | 94.56 ms | 125.06 ms | +59.1% |
| entities-relevance-saturated.extreme/bare/teardown | 3.43 ms | 5.06 ms | -6.9% |
| entities-relevance-saturated.extreme/compose/burst | 97.44 ms | 122.97 ms | +73.4% |
| entities-relevance-saturated.extreme/compose/cold | 36.29 ms | 61.46 ms | +69.9% |
| entities-relevance-saturated.extreme/compose/counts | 257.31 ms | 257.31 ms | +56.4% |
| entities-relevance-saturated.extreme/compose/settle | 2.8 µs | 13.6 µs | +33.9% |
| entities-relevance-saturated.extreme/compose/steady | 61.18 ms | 80.92 ms | +69.9% |
| entities-relevance-saturated.extreme/compose/teardown | 15.75 ms | 19.26 ms | +47.8% |
| entities-relevance-saturated.extreme/memory/mounted | 12672 KiB | 12672 KiB | -0.1% |
| entities-relevance-saturated.extreme/memory/teardown | 8 KiB | 8 KiB | — |
| entities-relevance-saturated.large/bare/burst | 6.08 ms | 8.27 ms | +35.5% |
| entities-relevance-saturated.large/bare/cold | 3.58 ms | 7.01 ms | +39.3% |
| entities-relevance-saturated.large/bare/settle | 2.5 µs | 3.2 µs | +35.0% |
| entities-relevance-saturated.large/bare/steady | 29.62 ms | 44.17 ms | +41.0% |
| entities-relevance-saturated.large/bare/teardown | 1.16 ms | 1.49 ms | -13.3% |
| entities-relevance-saturated.large/compose/burst | 29.98 ms | 37.12 ms | +38.2% |
| entities-relevance-saturated.large/compose/cold | 10.16 ms | 16.80 ms | +16.7% |
| entities-relevance-saturated.large/compose/counts | 86.61 ms | 86.61 ms | +20.7% |
| entities-relevance-saturated.large/compose/settle | 2.5 µs | 4.2 µs | +19.0% |
| entities-relevance-saturated.large/compose/steady | 16.85 ms | 22.47 ms | +47.1% |
| entities-relevance-saturated.large/compose/teardown | 3.55 ms | 3.98 ms | +17.0% |
| entities-relevance-saturated.large/memory/mounted | 5096 KiB | 5096 KiB | +0.0% |
| entities-relevance-saturated.large/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| entities-relevance-saturated.medium/bare/burst | 3.43 ms | 7.11 ms | +90.6% |
| entities-relevance-saturated.medium/bare/cold | 2.03 ms | 4.09 ms | +64.8% |
| entities-relevance-saturated.medium/bare/settle | 1.2 µs | 1.9 µs | +72.3% |
| entities-relevance-saturated.medium/bare/steady | 17.20 ms | 22.59 ms | +73.8% |
| entities-relevance-saturated.medium/bare/teardown | 503.4 µs | 671.4 µs | +65.4% |
| entities-relevance-saturated.medium/compose/burst | 13.00 ms | 18.17 ms | +92.5% |
| entities-relevance-saturated.medium/compose/cold | 6.55 ms | 11.02 ms | +87.0% |
| entities-relevance-saturated.medium/compose/counts | 42.75 ms | 42.75 ms | +63.0% |
| entities-relevance-saturated.medium/compose/settle | 1.3 µs | 1.8 µs | +113.5% |
| entities-relevance-saturated.medium/compose/steady | 9.12 ms | 13.34 ms | +94.7% |
| entities-relevance-saturated.medium/compose/teardown | 1.44 ms | 1.81 ms | +93.6% |
| entities-relevance-saturated.medium/memory/mounted | 2557 KiB | 2557 KiB | +0.0% |
| entities-relevance-saturated.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entities-relevance-sweep.extreme/bare/burst | 39.80 ms | 65.21 ms | +63.4% |
| entities-relevance-sweep.extreme/bare/cold | 10.07 ms | 34.09 ms | +35.2% |
| entities-relevance-sweep.extreme/bare/settle | 2.6 µs | 3.9 µs | +5.4% |
| entities-relevance-sweep.extreme/bare/steady | 30.16 ms | 44.60 ms | +33.2% |
| entities-relevance-sweep.extreme/bare/teardown | 3.95 ms | 7.23 ms | -5.6% |
| entities-relevance-sweep.extreme/compose/burst | 149.17 ms | 185.28 ms | +60.3% |
| entities-relevance-sweep.extreme/compose/cold | 32.11 ms | 54.96 ms | -0.8% |
| entities-relevance-sweep.extreme/compose/counts | 523.12 ms | 523.12 ms | +103.8% |
| entities-relevance-sweep.extreme/compose/settle | 2.3 µs | 3.5 µs | -2.0% |
| entities-relevance-sweep.extreme/compose/steady | 131.76 ms | 171.39 ms | +67.8% |
| entities-relevance-sweep.extreme/compose/teardown | 14.64 ms | 16.89 ms | +20.6% |
| entities-relevance-sweep.extreme/memory/mounted | 12656 KiB | 12656 KiB | +0.0% |
| entities-relevance-sweep.extreme/memory/teardown | 8 KiB | 8 KiB | — |
| entities-relevance-sweep.large/bare/burst | 12.36 ms | 32.32 ms | +47.2% |
| entities-relevance-sweep.large/bare/cold | 7.16 ms | 16.11 ms | +108.9% |
| entities-relevance-sweep.large/bare/settle | 3.2 µs | 3.6 µs | +117.7% |
| entities-relevance-sweep.large/bare/steady | 12.12 ms | 22.81 ms | +13.5% |
| entities-relevance-sweep.large/bare/teardown | 1.96 ms | 2.44 ms | +43.6% |
| entities-relevance-sweep.large/compose/burst | 59.17 ms | 83.61 ms | +56.2% |
| entities-relevance-sweep.large/compose/cold | 14.50 ms | 24.13 ms | +35.8% |
| entities-relevance-sweep.large/compose/counts | 200.14 ms | 200.14 ms | +71.8% |
| entities-relevance-sweep.large/compose/settle | 3.0 µs | 3.4 µs | +47.6% |
| entities-relevance-sweep.large/compose/steady | 60.34 ms | 84.41 ms | +65.2% |
| entities-relevance-sweep.large/compose/teardown | 5.40 ms | 8.72 ms | +63.3% |
| entities-relevance-sweep.large/memory/mounted | 5096 KiB | 5096 KiB | -0.2% |
| entities-relevance-sweep.large/memory/teardown | 0 KiB | 0 KiB | — |
| entities-relevance-sweep.medium/bare/burst | 6.04 ms | 7.68 ms | +46.3% |
| entities-relevance-sweep.medium/bare/cold | 1.64 ms | 5.22 ms | +3.5% |
| entities-relevance-sweep.medium/bare/settle | 1.4 µs | 1.6 µs | -18.3% |
| entities-relevance-sweep.medium/bare/steady | 4.45 ms | 9.70 ms | +13.4% |
| entities-relevance-sweep.medium/bare/teardown | 523.9 µs | 641.1 µs | -28.9% |
| entities-relevance-sweep.medium/compose/burst | 18.02 ms | 24.40 ms | +11.4% |
| entities-relevance-sweep.medium/compose/cold | 5.17 ms | 8.85 ms | +13.2% |
| entities-relevance-sweep.medium/compose/counts | 69.31 ms | 69.31 ms | +7.8% |
| entities-relevance-sweep.medium/compose/settle | 1.8 µs | 2.6 µs | -32.4% |
| entities-relevance-sweep.medium/compose/steady | 19.88 ms | 25.23 ms | +14.5% |
| entities-relevance-sweep.medium/compose/teardown | 1.32 ms | 1.57 ms | -19.2% |
| entities-relevance-sweep.medium/memory/mounted | 2565 KiB | 2565 KiB | +0.0% |
| entities-relevance-sweep.medium/memory/teardown | 8 KiB | 8 KiB | — |
| entity-labels-sparse.extreme/bare/burst | 13.63 ms | 20.90 ms | +39.8% |
| entity-labels-sparse.extreme/bare/cold | 11.49 ms | 21.73 ms | +24.3% |
| entity-labels-sparse.extreme/bare/settle | 2.3 µs | 3.5 µs | +59.2% |
| entity-labels-sparse.extreme/bare/steady | 1.12 ms | 1.35 ms | +45.8% |
| entity-labels-sparse.extreme/bare/teardown | 8.09 ms | 9.13 ms | +41.0% |
| entity-labels-sparse.extreme/compose/burst | 49.92 ms | 60.57 ms | +56.7% |
| entity-labels-sparse.extreme/compose/cold | 28.91 ms | 41.97 ms | +28.1% |
| entity-labels-sparse.extreme/compose/counts | 128.54 ms | 128.54 ms | +30.8% |
| entity-labels-sparse.extreme/compose/settle | 3.5 µs | 3.9 µs | +72.1% |
| entity-labels-sparse.extreme/compose/steady | 5.96 ms | 6.75 ms | +50.6% |
| entity-labels-sparse.extreme/compose/teardown | 16.64 ms | 22.41 ms | +51.7% |
| entity-labels-sparse.extreme/memory/mounted | 11915 KiB | 11915 KiB | +0.0% |
| entity-labels-sparse.extreme/memory/teardown | 1 KiB | 1 KiB | — |
| entity-labels-sparse.large/bare/burst | 5.66 ms | 8.33 ms | +38.0% |
| entity-labels-sparse.large/bare/cold | 6.43 ms | 13.26 ms | +56.0% |
| entity-labels-sparse.large/bare/settle | 1.8 µs | 2.6 µs | +108.2% |
| entity-labels-sparse.large/bare/steady | 622.4 µs | 930.5 µs | +69.2% |
| entity-labels-sparse.large/bare/teardown | 2.95 ms | 3.33 ms | +78.1% |
| entity-labels-sparse.large/compose/burst | 18.94 ms | 21.03 ms | +59.1% |
| entity-labels-sparse.large/compose/cold | 16.57 ms | 21.53 ms | +81.3% |
| entity-labels-sparse.large/compose/counts | 68.73 ms | 68.73 ms | +62.2% |
| entity-labels-sparse.large/compose/settle | 2.6 µs | 3.1 µs | +91.2% |
| entity-labels-sparse.large/compose/steady | 3.19 ms | 4.16 ms | +75.2% |
| entity-labels-sparse.large/compose/teardown | 5.62 ms | 7.34 ms | +50.0% |
| entity-labels-sparse.large/memory/mounted | 6204 KiB | 6204 KiB | +0.0% |
| entity-labels-sparse.large/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| entity-labels-sparse.medium/bare/burst | 1.35 ms | 2.31 ms | -0.7% |
| entity-labels-sparse.medium/bare/cold | 1.52 ms | 3.20 ms | +3.3% |
| entity-labels-sparse.medium/bare/settle | 1.0 µs | 1.3 µs | +69.5% |
| entity-labels-sparse.medium/bare/steady | 181.6 µs | 211.5 µs | +36.5% |
| entity-labels-sparse.medium/bare/teardown | 511.8 µs | 857.5 µs | +1.8% |
| entity-labels-sparse.medium/compose/burst | 4.82 ms | 6.38 ms | +29.2% |
| entity-labels-sparse.medium/compose/cold | 5.69 ms | 6.32 ms | +28.2% |
| entity-labels-sparse.medium/compose/counts | 22.39 ms | 22.39 ms | +35.5% |
| entity-labels-sparse.medium/compose/settle | 1.3 µs | 2.9 µs | -22.1% |
| entity-labels-sparse.medium/compose/steady | 862.0 µs | 1.12 ms | +26.1% |
| entity-labels-sparse.medium/compose/teardown | 1.23 ms | 1.41 ms | +4.8% |
| entity-labels-sparse.medium/memory/mounted | 2787 KiB | 2787 KiB | -0.3% |
| entity-labels-sparse.medium/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels.extreme/bare/burst | 10.90 ms | 27.55 ms | +33.4% |
| entity-labels.extreme/bare/cold | 11.93 ms | 19.86 ms | +33.3% |
| entity-labels.extreme/bare/settle | 2.0 µs | 5.5 µs | +70.9% |
| entity-labels.extreme/bare/steady | 1.02 ms | 2.03 ms | +57.5% |
| entity-labels.extreme/bare/teardown | 8.11 ms | 10.75 ms | +36.3% |
| entity-labels.extreme/compose/burst | 61.32 ms | 72.97 ms | +88.5% |
| entity-labels.extreme/compose/cold | 36.13 ms | 49.68 ms | +65.6% |
| entity-labels.extreme/compose/counts | 242.06 ms | 242.06 ms | +43.7% |
| entity-labels.extreme/compose/settle | 3.5 µs | 6.5 µs | +75.9% |
| entity-labels.extreme/compose/steady | 51.53 ms | 66.69 ms | +33.2% |
| entity-labels.extreme/compose/teardown | 18.24 ms | 21.08 ms | +61.7% |
| entity-labels.extreme/memory/mounted | 12133 KiB | 12133 KiB | +0.0% |
| entity-labels.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| entity-labels.large/bare/burst | 3.57 ms | 5.31 ms | +19.8% |
| entity-labels.large/bare/cold | 4.15 ms | 8.70 ms | +16.9% |
| entity-labels.large/bare/settle | 1.3 µs | 1.5 µs | +56.1% |
| entity-labels.large/bare/steady | 444.3 µs | 488.5 µs | +45.0% |
| entity-labels.large/bare/teardown | 2.11 ms | 2.67 ms | +34.9% |
| entity-labels.large/compose/burst | 15.09 ms | 20.53 ms | +26.4% |
| entity-labels.large/compose/cold | 13.82 ms | 17.42 ms | +34.5% |
| entity-labels.large/compose/counts | 77.82 ms | 77.82 ms | +17.9% |
| entity-labels.large/compose/settle | 2.3 µs | 3.8 µs | +7.4% |
| entity-labels.large/compose/steady | 15.64 ms | 17.41 ms | +23.4% |
| entity-labels.large/compose/teardown | 4.74 ms | 5.23 ms | +23.9% |
| entity-labels.large/memory/mounted | 6328 KiB | 6328 KiB | +0.1% |
| entity-labels.large/memory/teardown | 1 KiB | 1 KiB | — |
| entity-labels.medium/bare/burst | 1.48 ms | 2.73 ms | +38.3% |
| entity-labels.medium/bare/cold | 1.44 ms | 3.92 ms | +12.5% |
| entity-labels.medium/bare/settle | 1.0 µs | 1.1 µs | +40.1% |
| entity-labels.medium/bare/steady | 191.8 µs | 230.9 µs | +51.2% |
| entity-labels.medium/bare/teardown | 528.7 µs | 719.5 µs | +12.9% |
| entity-labels.medium/compose/burst | 4.91 ms | 6.12 ms | +33.3% |
| entity-labels.medium/compose/cold | 4.41 ms | 8.06 ms | +22.4% |
| entity-labels.medium/compose/counts | 28.67 ms | 28.67 ms | +4.6% |
| entity-labels.medium/compose/settle | 1.3 µs | 1.7 µs | -21.7% |
| entity-labels.medium/compose/steady | 6.59 ms | 8.38 ms | +34.6% |
| entity-labels.medium/compose/teardown | 1.32 ms | 1.39 ms | +10.3% |
| entity-labels.medium/memory/mounted | 2849 KiB | 2849 KiB | +0.0% |
| entity-labels.medium/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| events/bare | 11.78 ms | 15.47 ms | +30.6% |
| events/compose | 13.31 ms | 15.91 ms | +17.2% |
| events/memory/mounted | 0 KiB | 0 KiB | -100.0% |
| events/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| inspector.extreme/bare/burst | 1.32 ms | 1.66 ms | +2.0% |
| inspector.extreme/bare/cold | 8.16 ms | 12.69 ms | +28.1% |
| inspector.extreme/bare/settle | 0.8 µs | 1.3 µs | -46.2% |
| inspector.extreme/bare/steady | 76.2 µs | 83.5 µs | +1.9% |
| inspector.extreme/bare/teardown | 6.00 ms | 6.64 ms | +19.4% |
| inspector.extreme/compose/burst | 8.08 ms | 8.62 ms | +39.7% |
| inspector.extreme/compose/cold | 23.95 ms | 30.46 ms | +10.5% |
| inspector.extreme/compose/counts | 39.56 ms | 39.56 ms | -3.4% |
| inspector.extreme/compose/settle | 1.8 µs | 2.5 µs | -2.7% |
| inspector.extreme/compose/steady | 246.7 µs | 292.3 µs | -4.2% |
| inspector.extreme/compose/teardown | 2.58 ms | 2.82 ms | -7.5% |
| inspector.extreme/memory/mounted | 21895 KiB | 21895 KiB | +0.1% |
| inspector.extreme/memory/teardown | 8 KiB | 8 KiB | — |
| inspector.large/bare/burst | 585.2 µs | 760.6 µs | +31.7% |
| inspector.large/bare/cold | 2.66 ms | 4.59 ms | -24.6% |
| inspector.large/bare/settle | 0.5 µs | 0.8 µs | -27.1% |
| inspector.large/bare/steady | 59.6 µs | 73.2 µs | +9.1% |
| inspector.large/bare/teardown | 1.63 ms | 2.18 ms | +18.1% |
| inspector.large/compose/burst | 3.19 ms | 4.62 ms | +17.4% |
| inspector.large/compose/cold | 6.97 ms | 11.89 ms | -8.3% |
| inspector.large/compose/counts | 17.85 ms | 17.85 ms | -3.0% |
| inspector.large/compose/settle | 1.1 µs | 1.4 µs | -36.4% |
| inspector.large/compose/steady | 221.2 µs | 268.2 µs | +1.3% |
| inspector.large/compose/teardown | 1.07 ms | 1.54 ms | -9.8% |
| inspector.large/memory/mounted | 7208 KiB | 7208 KiB | +0.0% |
| inspector.large/memory/teardown | 0 KiB | 0 KiB | — |
| inspector.medium/bare/burst | 249.2 µs | 277.7 µs | +28.9% |
| inspector.medium/bare/cold | 1.17 ms | 3.71 ms | +49.4% |
| inspector.medium/bare/settle | 0.5 µs | 1.5 µs | +54.4% |
| inspector.medium/bare/steady | 60.3 µs | 77.2 µs | +34.8% |
| inspector.medium/bare/teardown | 415.9 µs | 572.0 µs | +44.9% |
| inspector.medium/compose/burst | 1.60 ms | 1.87 ms | +32.1% |
| inspector.medium/compose/cold | 2.96 ms | 5.01 ms | +37.8% |
| inspector.medium/compose/counts | 6.36 ms | 6.36 ms | +36.4% |
| inspector.medium/compose/settle | 0.8 µs | 1.0 µs | +68.6% |
| inspector.medium/compose/steady | 247.2 µs | 296.4 µs | +30.8% |
| inspector.medium/compose/teardown | 440.7 µs | 568.6 µs | +35.9% |
| inspector.medium/memory/mounted | 1893 KiB | 1893 KiB | -0.4% |
| inspector.medium/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-append/bare | 1.56 ms | 1.95 ms | +98.6% |
| keyed-append/compose | 1.97 ms | 2.39 ms | +87.6% |
| keyed-append/memory/mounted | 2201 KiB | 2201 KiB | -0.4% |
| keyed-append/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-insert/bare | 1.52 ms | 2.36 ms | +82.8% |
| keyed-insert/compose | 3.70 ms | 4.56 ms | +89.0% |
| keyed-insert/memory/mounted | 2250 KiB | 2250 KiB | +0.7% |
| keyed-insert/memory/teardown | 8 KiB | 8 KiB | — |
| keyed-prepend/bare | 1.28 ms | 1.61 ms | -24.0% |
| keyed-prepend/compose | 3.42 ms | 4.53 ms | -35.4% |
| keyed-prepend/memory/mounted | 2292 KiB | 2292 KiB | +0.4% |
| keyed-prepend/memory/teardown | 8 KiB | 8 KiB | — |
| keyed-remove/bare | 1.51 ms | 1.74 ms | +81.2% |
| keyed-remove/compose | 3.48 ms | 3.82 ms | +90.4% |
| keyed-remove/memory/mounted | 2244 KiB | 2244 KiB | +0.4% |
| keyed-remove/memory/teardown | 0 KiB | 0 KiB | — |
| keyed-replace/bare | 21.40 ms | 31.47 ms | -15.5% |
| keyed-replace/compose | 44.74 ms | 48.52 ms | -25.7% |
| keyed-replace/memory/mounted | 2221 KiB | 2221 KiB | -25.7% |
| keyed-replace/memory/teardown | 1 KiB | 1 KiB | -99.9% |
| keyed-reverse/bare | 901.0 µs | 955.6 µs | -26.7% |
| keyed-reverse/compose | 2.32 ms | 2.66 ms | -40.5% |
| keyed-reverse/memory/mounted | 2287 KiB | 2287 KiB | +0.0% |
| keyed-reverse/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| keyed-rotate/bare | 818.0 µs | 877.2 µs | -35.8% |
| keyed-rotate/compose | 2.36 ms | 2.43 ms | -39.4% |
| keyed-rotate/memory/mounted | 2279 KiB | 2279 KiB | -0.3% |
| keyed-rotate/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| keyed-shuffle/bare | 943.7 µs | 1.04 ms | -27.5% |
| keyed-shuffle/compose | 2.41 ms | 2.65 ms | -40.2% |
| keyed-shuffle/memory/mounted | 2279 KiB | 2279 KiB | +0.4% |
| keyed-shuffle/memory/teardown | 8 KiB | 8 KiB | — |
| mount-cycles/bare | 21.41 ms | 28.71 ms | +19.9% |
| mount-cycles/compose | 33.30 ms | 37.28 ms | +44.0% |
| mount-cycles/memory/mounted | 20 KiB | 20 KiB | +66.7% |
| mount-cycles/memory/teardown | 8 KiB | 8 KiB | — |
| mount-dispose/bare | 7.61 ms | 10.16 ms | +14.1% |
| mount-dispose/compose | 8.56 ms | 12.95 ms | +41.2% |
| mount-dispose/memory/mounted | 13 KiB | 13 KiB | +225.0% |
| mount-dispose/memory/teardown | 1 KiB | 1 KiB | — |
| ordered-window-scroll/compose | 385.7 µs | 397.6 µs | -30.4% |
| ordered-window-scroll/memory/mounted | 1131 KiB | 1131 KiB | +0.0% |
| ordered-window-scroll/memory/teardown | 0 KiB | 0 KiB | — |
| scene-2d.extreme/bare/burst | 8.29 ms | 13.83 ms | +43.6% |
| scene-2d.extreme/bare/cold | 1.60 ms | 4.78 ms | +37.1% |
| scene-2d.extreme/bare/settle | 2.0 µs | 2.7 µs | +161.1% |
| scene-2d.extreme/bare/steady | 48.74 ms | 59.48 ms | +69.8% |
| scene-2d.extreme/bare/teardown | 569.3 µs | 981.3 µs | +42.2% |
| scene-2d.extreme/compose/burst | 28.50 ms | 45.45 ms | +45.0% |
| scene-2d.extreme/compose/cold | 20.46 ms | 30.11 ms | +82.4% |
| scene-2d.extreme/compose/counts | 230.94 ms | 230.94 ms | +67.1% |
| scene-2d.extreme/compose/settle | 2.1 µs | 2.8 µs | +20.0% |
| scene-2d.extreme/compose/steady | 93.73 ms | 99.58 ms | +79.5% |
| scene-2d.extreme/compose/teardown | 1.29 ms | 1.50 ms | +46.6% |
| scene-2d.extreme/memory/mounted | 13261 KiB | 13261 KiB | -0.1% |
| scene-2d.extreme/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| scene-2d.large/bare/burst | 8.09 ms | 12.55 ms | +17.9% |
| scene-2d.large/bare/cold | 1.57 ms | 4.45 ms | +36.1% |
| scene-2d.large/bare/settle | 2.3 µs | 3.8 µs | +31.7% |
| scene-2d.large/bare/steady | 41.94 ms | 45.51 ms | +44.4% |
| scene-2d.large/bare/teardown | 628.4 µs | 771.3 µs | +13.3% |
| scene-2d.large/compose/burst | 26.27 ms | 31.57 ms | +54.4% |
| scene-2d.large/compose/cold | 7.63 ms | 9.29 ms | +24.1% |
| scene-2d.large/compose/counts | 198.28 ms | 198.28 ms | +53.1% |
| scene-2d.large/compose/settle | 2.4 µs | 3.0 µs | +2.5% |
| scene-2d.large/compose/steady | 81.49 ms | 83.60 ms | +43.9% |
| scene-2d.large/compose/teardown | 1.03 ms | 1.31 ms | +18.4% |
| scene-2d.large/memory/mounted | 4832 KiB | 4832 KiB | +0.2% |
| scene-2d.large/memory/teardown | 9 KiB | 9 KiB | — |
| scene-2d.medium/bare/burst | 4.39 ms | 6.20 ms | -39.0% |
| scene-2d.medium/bare/cold | 1.24 ms | 1.72 ms | -4.8% |
| scene-2d.medium/bare/settle | 1.0 µs | 1.1 µs | +15.7% |
| scene-2d.medium/bare/steady | 25.71 ms | 27.49 ms | -30.1% |
| scene-2d.medium/bare/teardown | 301.5 µs | 377.7 µs | -22.0% |
| scene-2d.medium/compose/burst | 15.54 ms | 17.29 ms | -29.1% |
| scene-2d.medium/compose/cold | 2.71 ms | 3.95 ms | -23.9% |
| scene-2d.medium/compose/counts | 112.92 ms | 112.92 ms | -28.1% |
| scene-2d.medium/compose/settle | 1.1 µs | 1.2 µs | +20.4% |
| scene-2d.medium/compose/steady | 43.83 ms | 45.51 ms | -35.2% |
| scene-2d.medium/compose/teardown | 602.9 µs | 693.4 µs | -26.0% |
| scene-2d.medium/memory/mounted | 2329 KiB | 2329 KiB | -0.3% |
| scene-2d.medium/memory/teardown | 0 KiB | 0 KiB | — |
| scene-3d/bare | 5.17 ms | 6.10 ms | +74.6% |
| scene-3d/compose | 10.24 ms | 11.86 ms | +60.7% |
| scene-3d/memory/mounted | 1244 KiB | 1244 KiB | -0.1% |
| scene-3d/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| session-cycle.extreme/bare/burst | 153.99 ms | 194.34 ms | +54.1% |
| session-cycle.extreme/bare/cold | 4.5 µs | 8.5 µs | +0.4% |
| session-cycle.extreme/bare/settle | 3.2 µs | 3.5 µs | +13.6% |
| session-cycle.extreme/bare/steady | 192.02 ms | 259.38 ms | +15.9% |
| session-cycle.extreme/bare/teardown | 3.0 µs | 3.6 µs | +20.4% |
| session-cycle.extreme/compose/burst | 130.71 ms | 188.42 ms | +8.2% |
| session-cycle.extreme/compose/cold | 5.0 µs | 6.2 µs | +8.8% |
| session-cycle.extreme/compose/counts | 364.46 ms | 364.46 ms | +22.6% |
| session-cycle.extreme/compose/settle | 2.5 µs | 2.9 µs | -2.1% |
| session-cycle.extreme/compose/steady | 200.39 ms | 275.78 ms | +42.6% |
| session-cycle.extreme/compose/teardown | 3.0 µs | 3.4 µs | +11.3% |
| session-cycle.extreme/memory/mounted | 0 KiB | 0 KiB | -100.0% |
| session-cycle.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| session-cycle.large/bare/burst | 55.15 ms | 74.58 ms | +4.1% |
| session-cycle.large/bare/cold | 5.5 µs | 15.1 µs | +25.5% |
| session-cycle.large/bare/settle | 2.5 µs | 3.3 µs | +11.1% |
| session-cycle.large/bare/steady | 77.23 ms | 110.54 ms | +35.2% |
| session-cycle.large/bare/teardown | 2.6 µs | 3.2 µs | +23.8% |
| session-cycle.large/compose/burst | 57.49 ms | 89.71 ms | +36.9% |
| session-cycle.large/compose/cold | 6.2 µs | 8.9 µs | +45.1% |
| session-cycle.large/compose/counts | 157.08 ms | 157.08 ms | +18.9% |
| session-cycle.large/compose/settle | 2.5 µs | 2.8 µs | +32.6% |
| session-cycle.large/compose/steady | 100.24 ms | 132.20 ms | +34.1% |
| session-cycle.large/compose/teardown | 2.9 µs | 3.4 µs | +23.7% |
| session-cycle.large/memory/mounted | 13 KiB | 13 KiB | +0.0% |
| session-cycle.large/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| session-cycle.medium/bare/burst | 8.96 ms | 11.14 ms | -30.6% |
| session-cycle.medium/bare/cold | 2.0 µs | 3.2 µs | -24.7% |
| session-cycle.medium/bare/settle | 1.0 µs | 1.3 µs | +16.2% |
| session-cycle.medium/bare/steady | 9.55 ms | 17.98 ms | -38.3% |
| session-cycle.medium/bare/teardown | 0.9 µs | 1.0 µs | -11.3% |
| session-cycle.medium/compose/burst | 10.47 ms | 12.64 ms | -32.7% |
| session-cycle.medium/compose/cold | 2.2 µs | 3.6 µs | -49.6% |
| session-cycle.medium/compose/counts | 30.50 ms | 30.50 ms | -27.1% |
| session-cycle.medium/compose/settle | 1.0 µs | 1.1 µs | -20.2% |
| session-cycle.medium/compose/steady | 14.54 ms | 17.93 ms | -48.0% |
| session-cycle.medium/compose/teardown | 0.9 µs | 1.4 µs | -42.8% |
| session-cycle.medium/memory/mounted | 12 KiB | 12 KiB | +0.0% |
| session-cycle.medium/memory/teardown | 0 KiB | 0 KiB | — |
| spatial-scene.extreme/bare/burst | 38.92 ms | 55.67 ms | -20.4% |
| spatial-scene.extreme/bare/cold | 3.30 ms | 6.29 ms | +4.9% |
| spatial-scene.extreme/bare/settle | 1.4 µs | 2.0 µs | -22.3% |
| spatial-scene.extreme/bare/steady | 53.76 ms | 62.44 ms | -27.7% |
| spatial-scene.extreme/bare/teardown | 1.49 ms | 2.36 ms | +22.4% |
| spatial-scene.extreme/compose/burst | 95.52 ms | 111.89 ms | -33.9% |
| spatial-scene.extreme/compose/cold | 8.11 ms | 12.40 ms | -29.8% |
| spatial-scene.extreme/compose/counts | 202.22 ms | 202.22 ms | -31.4% |
| spatial-scene.extreme/compose/settle | 1.3 µs | 1.5 µs | -17.8% |
| spatial-scene.extreme/compose/steady | 44.00 ms | 52.40 ms | -31.7% |
| spatial-scene.extreme/compose/teardown | 2.84 ms | 4.02 ms | -30.1% |
| spatial-scene.extreme/memory/mounted | 5494 KiB | 5494 KiB | +0.0% |
| spatial-scene.extreme/memory/teardown | 0 KiB | 0 KiB | — |
| spatial-scene.large/bare/burst | 9.87 ms | 12.55 ms | -17.2% |
| spatial-scene.large/bare/cold | 710.0 µs | 1.34 ms | -39.3% |
| spatial-scene.large/bare/settle | 1.1 µs | 1.2 µs | +30.6% |
| spatial-scene.large/bare/steady | 15.34 ms | 16.74 ms | -32.2% |
| spatial-scene.large/bare/teardown | 219.0 µs | 423.9 µs | -31.5% |
| spatial-scene.large/compose/burst | 27.52 ms | 32.81 ms | -21.1% |
| spatial-scene.large/compose/cold | 3.23 ms | 4.33 ms | -7.9% |
| spatial-scene.large/compose/counts | 58.38 ms | 58.38 ms | -29.5% |
| spatial-scene.large/compose/settle | 1.1 µs | 1.4 µs | +3.5% |
| spatial-scene.large/compose/steady | 15.86 ms | 25.08 ms | -29.4% |
| spatial-scene.large/compose/teardown | 627.6 µs | 816.0 µs | -20.1% |
| spatial-scene.large/memory/mounted | 1836 KiB | 1836 KiB | +0.0% |
| spatial-scene.large/memory/teardown | 2 KiB | 2 KiB | — |
| spatial-scene.medium/bare/burst | 2.56 ms | 4.36 ms | -24.1% |
| spatial-scene.medium/bare/cold | 288.8 µs | 890.9 µs | -27.9% |
| spatial-scene.medium/bare/settle | 1.0 µs | 1.1 µs | +48.8% |
| spatial-scene.medium/bare/steady | 6.52 ms | 7.36 ms | -22.0% |
| spatial-scene.medium/bare/teardown | 76.4 µs | 137.5 µs | -20.5% |
| spatial-scene.medium/compose/burst | 8.68 ms | 10.48 ms | -30.8% |
| spatial-scene.medium/compose/cold | 879.6 µs | 1.65 ms | -25.7% |
| spatial-scene.medium/compose/counts | 26.65 ms | 26.65 ms | -28.5% |
| spatial-scene.medium/compose/settle | 1.1 µs | 1.2 µs | +37.4% |
| spatial-scene.medium/compose/steady | 7.14 ms | 7.87 ms | -31.6% |
| spatial-scene.medium/compose/teardown | 213.9 µs | 287.4 µs | -20.4% |
| spatial-scene.medium/memory/mounted | 728 KiB | 728 KiB | +0.1% |
| spatial-scene.medium/memory/teardown | 10 KiB | 10 KiB | — |
| status-panel/bare | 93.7 µs | 118.7 µs | -12.0% |
| status-panel/compose | 463.3 µs | 508.3 µs | -23.4% |
| status-panel/memory/mounted | 56 KiB | 56 KiB | +0.0% |
| status-panel/memory/teardown | 0 KiB | 0 KiB | — |
| unwind/bare | 2.47 ms | 4.72 ms | -15.1% |
| unwind/compose | 3.93 ms | 7.57 ms | +26.9% |
| unwind/memory/mounted | 212 KiB | 212 KiB | +1827.3% |
| unwind/memory/teardown | 193 KiB | 193 KiB | — |
| update-batched/bare | 1.06 ms | 1.11 ms | +107.4% |
| update-batched/compose | 3.24 ms | 3.49 ms | +117.0% |
| update-batched/memory/mounted | 1879 KiB | 1879 KiB | +0.0% |
| update-batched/memory/teardown | 0 KiB | 0 KiB | -100.0% |
| update-fanout/bare | 1.07 ms | 1.17 ms | +111.6% |
| update-fanout/compose | 1.89 ms | 2.09 ms | +130.0% |
| update-fanout/memory/mounted | 1814 KiB | 1814 KiB | +0.0% |
| update-fanout/memory/teardown | 0 KiB | 0 KiB | — |
| update-leaf/bare | 16.1 µs | 17.9 µs | +3.0% |
| update-leaf/compose | 32.8 µs | 35.3 µs | -19.5% |
| update-leaf/memory/mounted | 2766 KiB | 2766 KiB | +0.0% |
| update-leaf/memory/teardown | 8 KiB | 8 KiB | — |
| update-repeated/bare | 40.6 µs | 41.7 µs | +28.6% |
| update-repeated/compose | 469.4 µs | 488.3 µs | +31.5% |
| update-repeated/memory/mounted | 20 KiB | 20 KiB | +0.0% |
| update-repeated/memory/teardown | 0 KiB | 0 KiB | — |
| virtual-filtered-list.extreme/bare/burst | 885.42 ms | 1035.29 ms | +44.6% |
| virtual-filtered-list.extreme/bare/cold | 578.47 ms | 649.65 ms | +47.2% |
| virtual-filtered-list.extreme/bare/settle | 3.5 µs | 4.4 µs | +15.0% |
| virtual-filtered-list.extreme/bare/steady | 10.02 ms | 12.10 ms | +25.6% |
| virtual-filtered-list.extreme/bare/teardown | 200.4 µs | 298.5 µs | +27.7% |
| virtual-filtered-list.extreme/compose/burst | 988.20 ms | 1037.23 ms | +51.1% |
| virtual-filtered-list.extreme/compose/cold | 604.89 ms | 654.84 ms | +49.9% |
| virtual-filtered-list.extreme/compose/counts | 1634.23 ms | 1634.23 ms | +47.2% |
| virtual-filtered-list.extreme/compose/settle | 2.9 µs | 3.2 µs | +23.1% |
| virtual-filtered-list.extreme/compose/steady | 17.92 ms | 25.84 ms | +33.1% |
| virtual-filtered-list.extreme/compose/teardown | 606.6 µs | 945.6 µs | +37.4% |
| virtual-filtered-list.extreme/memory/mounted | 31844 KiB | 31844 KiB | +0.0% |
| virtual-filtered-list.extreme/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| virtual-filtered-list.large/bare/burst | 96.90 ms | 99.39 ms | +39.0% |
| virtual-filtered-list.large/bare/cold | 62.91 ms | 65.04 ms | +38.1% |
| virtual-filtered-list.large/bare/settle | 2.5 µs | 3.0 µs | +8.6% |
| virtual-filtered-list.large/bare/steady | 6.18 ms | 9.84 ms | +8.7% |
| virtual-filtered-list.large/bare/teardown | 99.5 µs | 320.2 µs | +15.0% |
| virtual-filtered-list.large/compose/burst | 108.80 ms | 115.45 ms | +33.4% |
| virtual-filtered-list.large/compose/cold | 66.59 ms | 69.07 ms | +32.9% |
| virtual-filtered-list.large/compose/counts | 209.26 ms | 209.26 ms | +47.8% |
| virtual-filtered-list.large/compose/settle | 2.3 µs | 2.8 µs | -3.6% |
| virtual-filtered-list.large/compose/steady | 12.12 ms | 14.92 ms | +32.6% |
| virtual-filtered-list.large/compose/teardown | 303.4 µs | 372.3 µs | +31.7% |
| virtual-filtered-list.large/memory/mounted | 6982 KiB | 6982 KiB | +0.0% |
| virtual-filtered-list.large/memory/teardown | 1 KiB | 1 KiB | +0.0% |
| virtual-filtered-list.medium/bare/burst | 16.73 ms | 18.04 ms | +37.3% |
| virtual-filtered-list.medium/bare/cold | 9.74 ms | 10.52 ms | +39.5% |
| virtual-filtered-list.medium/bare/settle | 1.6 µs | 2.1 µs | -31.9% |
| virtual-filtered-list.medium/bare/steady | 5.95 ms | 7.18 ms | +41.5% |
| virtual-filtered-list.medium/bare/teardown | 57.7 µs | 102.6 µs | +34.4% |
| virtual-filtered-list.medium/compose/burst | 21.92 ms | 24.80 ms | +30.7% |
| virtual-filtered-list.medium/compose/cold | 10.79 ms | 14.34 ms | +26.2% |
| virtual-filtered-list.medium/compose/counts | 54.99 ms | 54.99 ms | +50.5% |
| virtual-filtered-list.medium/compose/settle | 2.0 µs | 3.7 µs | -13.8% |
| virtual-filtered-list.medium/compose/steady | 10.28 ms | 13.84 ms | +28.8% |
| virtual-filtered-list.medium/compose/teardown | 160.7 µs | 221.1 µs | +13.5% |
| virtual-filtered-list.medium/memory/mounted | 1753 KiB | 1753 KiB | +3.9% |
| virtual-filtered-list.medium/memory/teardown | 65 KiB | 65 KiB | +6400.0% |

## Trends over the last 7 main commits

```mermaid
xychart-beta
    title "animate-many/compose (median µs)"
    x-axis 1 --> 7
    line [9621.1, 4735.8, 9612.0, 7315.2, 9298.7, 4130.8, 8970.6]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [12461.7, 6898.2, 13915.6, 9639.3, 10905.1, 5761.3, 10113.7]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [16620.2, 11340.5, 15315.5, 12396.6, 13713.1, 7474.2, 13373.9]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [110129.9, 64349.2, 116391.7, 98569.9, 102876.7, 58688.1, 115195.9]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.2, 1.4, 1.4, 1.1, 1.1, 0.7, 1.1]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [46868.1, 25388.1, 44800.9, 36175.8, 41986.1, 21150.1, 40467.5]
```

```mermaid
xychart-beta
    title "animated-navigation.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [6005.0, 4705.5, 6853.0, 6189.7, 6219.9, 3693.0, 6309.6]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [5466.6, 3087.8, 5962.6, 4686.8, 5103.1, 2868.2, 5466.2]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [7156.2, 4813.3, 6183.5, 5849.2, 6189.4, 4268.5, 7025.1]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [76248.8, 48338.1, 78084.1, 68688.7, 75988.3, 46887.2, 80418.2]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [0.9, 1.2, 1.4, 1.2, 0.8, 1.0, 1.1]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [35460.5, 19037.5, 35808.1, 28678.7, 32946.1, 17234.9, 34669.9]
```

```mermaid
xychart-beta
    title "animated-navigation.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1975.4, 1851.1, 2399.1, 2304.8, 2075.6, 1672.7, 2579.5]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [1463.5, 1805.0, 1407.7, 1828.7, 1713.2, 1721.3, 1089.5]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [2013.4, 1659.3, 1575.4, 1806.3, 1454.3, 1510.6, 1309.3]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [22746.0, 29658.4, 24261.2, 29711.8, 27538.5, 28220.6, 22030.3]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [0.5, 0.5, 0.6, 0.6, 0.5, 0.6, 0.5]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [11237.2, 14637.0, 10651.3, 14357.3, 13461.9, 13406.0, 8401.2]
```

```mermaid
xychart-beta
    title "animated-navigation.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [356.0, 417.8, 496.0, 505.8, 421.2, 418.6, 338.6]
```

```mermaid
xychart-beta
    title "branch-swap/compose (median µs)"
    x-axis 1 --> 7
    line [4113.6, 4729.3, 3561.0, 2524.1, 2610.3, 2522.9, 4591.4]
```

```mermaid
xychart-beta
    title "cold-mount-100/compose (median µs)"
    x-axis 1 --> 7
    line [686.8, 560.2, 838.1, 567.4, 589.5, 322.8, 586.1]
```

```mermaid
xychart-beta
    title "cold-mount-1000/compose (median µs)"
    x-axis 1 --> 7
    line [8399.3, 4719.3, 3773.5, 7121.6, 6041.0, 5964.6, 7856.3]
```

```mermaid
xychart-beta
    title "cold-mount-10000/compose (median µs)"
    x-axis 1 --> 7
    line [74882.4, 77308.0, 75289.0, 90310.2, 100985.1, 86939.8, 92707.3]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [917195.8, 848359.9, 869706.9, 657651.2, 855176.6, 921506.7, 908083.0]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [564671.1, 532198.1, 527821.7, 398200.7, 504535.6, 560369.8, 559329.2]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [1731762.7, 1413521.5, 1498282.4, 1110786.6, 1445044.7, 1520204.8, 1598444.8]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.1, 2.1, 1.9, 2.3, 2.1, 2.0, 2.5]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [27880.3, 26608.5, 24816.6, 19150.7, 24207.3, 25586.7, 23913.6]
```

```mermaid
xychart-beta
    title "data-grid.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1360.6, 1265.7, 1291.4, 1110.8, 1495.5, 1394.8, 1342.7]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [108370.1, 137573.0, 114009.5, 133242.0, 132707.0, 131389.9, 95336.0]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [60694.5, 76941.3, 63120.6, 77459.9, 77741.8, 77504.9, 55851.8]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [187980.4, 244856.9, 207644.2, 241741.6, 244790.8, 244140.2, 179442.8]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.5, 1.6, 2.4, 1.8, 1.5, 1.4, 1.2]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [14957.3, 18099.0, 16104.9, 16959.8, 15977.4, 16630.3, 11479.9]
```

```mermaid
xychart-beta
    title "data-grid.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [469.9, 567.8, 474.6, 573.2, 553.4, 516.9, 391.3]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [69739.0, 35886.9, 46673.5, 57857.6, 48420.1, 50977.2, 67910.8]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [39856.7, 21102.5, 25793.1, 34471.6, 28818.4, 27678.6, 37266.3]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [141793.3, 71603.8, 99581.8, 122381.7, 107874.3, 104361.4, 148720.8]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.3, 1.0, 1.8, 1.5, 2.2, 2.0, 2.7]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [20754.9, 8162.0, 12334.8, 12381.3, 12840.2, 10470.5, 13619.2]
```

```mermaid
xychart-beta
    title "data-grid.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [356.8, 187.9, 248.2, 292.5, 260.1, 258.1, 350.6]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [20153.1, 12231.0, 11532.2, 14838.7, 15355.1, 14237.6, 19804.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [606.7, 398.8, 383.4, 479.8, 502.1, 460.9, 622.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [23438.8, 13693.1, 17691.5, 22404.5, 21786.2, 19601.6, 29177.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.3, 0.9, 1.2, 1.1, 1.4, 0.9, 2.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [863.1, 432.7, 533.0, 686.6, 708.9, 700.6, 897.3]
```

```mermaid
xychart-beta
    title "dense-dashboard.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [599.1, 388.0, 393.2, 539.8, 566.2, 477.4, 750.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [9706.7, 4188.0, 5056.8, 5928.3, 7819.4, 5262.6, 10115.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [371.6, 211.1, 249.9, 272.8, 305.9, 241.0, 388.7]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [16409.6, 9670.9, 14102.2, 13629.3, 13693.5, 13209.6, 18184.6]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.0, 0.6, 1.2, 0.9, 1.0, 0.7, 1.6]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [865.5, 435.0, 514.3, 679.4, 690.4, 687.8, 906.9]
```

```mermaid
xychart-beta
    title "dense-dashboard.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [297.0, 159.4, 204.5, 229.9, 234.0, 203.9, 330.2]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [3256.9, 3747.3, 2886.3, 1441.8, 1725.1, 2212.3, 2923.7]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [214.4, 274.0, 218.8, 100.9, 158.5, 169.7, 216.8]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [6736.4, 8374.2, 5949.6, 3187.1, 3588.3, 3998.0, 5805.3]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [0.8, 1.3, 0.7, 0.4, 0.9, 0.6, 1.0]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [823.5, 817.9, 816.4, 407.5, 448.9, 446.8, 626.3]
```

```mermaid
xychart-beta
    title "dense-dashboard.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [120.9, 153.9, 121.5, 62.5, 79.1, 89.7, 105.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [57275.1, 58550.6, 48500.0, 29373.5, 40666.3, 39982.2, 49684.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [35128.8, 48787.2, 29239.1, 17390.4, 22368.5, 29280.2, 24311.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [203645.1, 278041.5, 232881.6, 153922.4, 182354.5, 184019.0, 216326.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.7, 2.7, 2.1, 1.3, 2.4, 2.5, 2.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [67605.4, 110490.0, 62006.6, 30428.1, 51252.0, 46762.5, 64252.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1382.9, 1964.2, 1144.8, 694.6, 900.0, 1153.0, 1185.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [22661.4, 12171.9, 13759.9, 13609.3, 14702.9, 13810.3, 16589.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [16026.8, 10773.1, 8930.7, 10020.5, 8909.7, 10600.2, 13336.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [80942.4, 39356.0, 64825.7, 63038.7, 65034.2, 58295.1, 80549.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.9, 1.8, 1.6, 1.3, 1.8, 1.6, 2.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [29699.1, 13169.4, 18127.8, 19237.6, 16977.4, 16994.0, 22978.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [555.6, 288.1, 337.4, 360.3, 368.0, 351.5, 470.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [8775.5, 6489.2, 8202.0, 6319.3, 6445.7, 3900.8, 7292.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [6847.6, 4064.4, 5318.6, 5299.9, 5743.4, 2913.7, 5973.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [33013.6, 23547.5, 40497.8, 27670.3, 31664.9, 18380.9, 32467.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.1, 1.6, 2.1, 1.6, 0.8, 0.6, 1.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [10632.2, 6021.8, 10678.6, 8206.7, 8958.3, 4763.9, 9523.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn-10.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [231.8, 181.7, 264.1, 212.7, 181.2, 110.8, 211.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [38163.8, 45513.9, 41164.8, 46703.8, 44520.9, 38822.5, 40775.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [30010.2, 36978.8, 29991.4, 41393.0, 32387.4, 25962.5, 25504.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [308853.3, 356183.6, 347691.5, 358267.1, 320929.1, 329140.8, 275854.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.9, 1.8, 2.1, 2.0, 1.8, 1.8, 1.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [170674.3, 195161.2, 168550.7, 182630.3, 163543.1, 182753.2, 138682.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1011.2, 1123.7, 1080.1, 1376.9, 1058.4, 1062.6, 926.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [20445.0, 22651.5, 14964.2, 12211.5, 11912.3, 14060.4, 15071.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [12195.2, 16233.7, 12335.9, 7185.3, 8832.7, 11712.1, 10066.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [116758.9, 159716.3, 121699.6, 72346.5, 90059.4, 95283.3, 117176.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.7, 2.6, 1.9, 1.3, 1.5, 2.2, 2.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [65487.9, 100478.1, 59706.0, 34308.7, 51437.5, 47528.6, 59568.6]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [465.8, 729.5, 440.9, 295.7, 317.9, 369.3, 410.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [7359.9, 9363.4, 7988.6, 9747.3, 9365.5, 8349.5, 6021.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [5217.5, 8076.9, 4571.3, 5260.1, 4670.0, 5901.2, 3485.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [53771.4, 72919.2, 57149.8, 65876.4, 59908.3, 63387.5, 49532.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.0, 1.3, 1.6, 1.3, 1.0, 0.9, 1.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [24173.9, 29083.3, 23959.0, 26680.3, 24724.4, 25894.3, 17904.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn-50.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [206.6, 265.4, 235.4, 253.6, 224.3, 241.3, 176.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [67899.9, 40475.8, 49011.8, 47993.9, 58958.8, 49403.5, 73334.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [43440.3, 23189.6, 21354.5, 24947.4, 23666.7, 30840.0, 48721.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [322090.0, 155075.8, 263232.8, 241537.1, 281124.0, 231871.8, 353585.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.2, 2.0, 2.2, 1.5, 2.1, 2.1, 3.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [168290.2, 78037.0, 94632.2, 97962.6, 108987.6, 90436.8, 176374.5]
```

```mermaid
xychart-beta
    title "entities-identity-churn.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1918.2, 1082.7, 1099.8, 1219.6, 1413.1, 1134.2, 2628.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [15198.1, 12817.1, 17384.4, 12828.2, 14670.0, 10802.1, 16642.4]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [14413.0, 10025.1, 12412.5, 10919.1, 9991.0, 7777.1, 12912.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [94808.6, 66047.0, 131198.0, 102800.1, 106962.5, 78783.2, 123433.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.7, 2.1, 2.3, 1.7, 1.5, 1.8, 2.1]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [42870.9, 30465.6, 44952.7, 30109.8, 34357.1, 23042.6, 39531.9]
```

```mermaid
xychart-beta
    title "entities-identity-churn.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [421.7, 347.3, 504.6, 355.7, 394.0, 294.7, 437.3]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [9268.9, 6214.3, 6318.0, 7594.1, 7048.3, 6573.8, 9681.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [6175.2, 5202.2, 4209.2, 4766.1, 4414.4, 4459.7, 5534.7]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [48430.6, 24546.5, 34883.2, 42248.6, 35027.4, 39583.1, 54112.8]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.8, 1.7, 1.3, 1.0, 1.4, 1.1, 2.0]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [18970.0, 11144.9, 13984.1, 14562.6, 12821.2, 13331.6, 17419.2]
```

```mermaid
xychart-beta
    title "entities-identity-churn.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [266.7, 172.8, 182.1, 197.6, 194.9, 188.5, 272.0]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [21280.1, 17085.4, 25262.9, 28283.5, 20257.0, 10917.0, 19502.9]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [107928.0, 93149.3, 109143.0, 107346.8, 112756.0, 73472.7, 113745.4]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [345877.0, 271171.1, 372031.9, 371349.9, 343525.6, 217868.2, 360516.2]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.8, 2.2, 2.2, 2.2, 1.9, 1.8, 1.9]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [112062.9, 90774.1, 117256.3, 106657.1, 98348.3, 59055.9, 101799.9]
```

```mermaid
xychart-beta
    title "entities-integrated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [33241.4, 38551.9, 37604.0, 45565.4, 37162.6, 31516.4, 39172.8]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [8720.8, 10514.8, 8702.4, 10287.4, 10136.5, 9822.3, 8483.4]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [35331.9, 46561.1, 36425.1, 45716.0, 39872.5, 39917.1, 29158.2]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [127887.2, 165417.5, 156094.5, 170891.3, 159918.6, 159409.8, 123085.1]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.4, 1.6, 2.0, 1.5, 1.1, 1.3, 1.2]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [42270.1, 58987.0, 46845.8, 49441.4, 48906.3, 48394.1, 38336.6]
```

```mermaid
xychart-beta
    title "entities-integrated.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [9384.4, 11676.7, 12636.7, 11453.4, 9676.2, 9468.6, 7501.9]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [8064.7, 5412.3, 8325.1, 7310.8, 7725.2, 4373.6, 8143.5]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [23640.0, 18354.3, 20523.4, 16963.3, 24114.6, 15390.3, 22026.8]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [92316.8, 67519.0, 107959.8, 94567.5, 113174.7, 55185.3, 104655.9]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.6, 2.1, 2.2, 1.7, 1.5, 1.0, 1.9]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [39845.5, 29943.1, 47449.4, 35007.7, 37155.4, 20922.3, 41221.1]
```

```mermaid
xychart-beta
    title "entities-integrated.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [6105.6, 6486.4, 6913.2, 7758.7, 5425.1, 3598.7, 7513.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [95057.1, 94073.3, 97254.7, 96247.4, 87014.9, 56203.8, 97444.4]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [30591.9, 22227.2, 28424.7, 29174.1, 36070.7, 21358.8, 36288.9]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [228810.1, 211002.3, 277035.4, 262243.7, 240299.8, 164476.9, 257313.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.0, 2.8, 2.9, 2.6, 2.0, 2.1, 2.8]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [56507.4, 52162.7, 59312.8, 52039.1, 53658.6, 36010.3, 61177.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [13113.8, 13417.0, 14500.7, 15465.3, 13655.0, 10660.5, 15751.4]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [27403.3, 40547.2, 27643.0, 16736.6, 24669.8, 21688.5, 29979.9]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [11952.4, 12445.2, 13843.1, 7413.0, 8312.1, 8704.4, 10161.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [100423.7, 101703.7, 92984.2, 61791.0, 76047.1, 71772.8, 86609.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.5, 2.3, 2.0, 1.3, 1.4, 2.1, 2.5]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [19345.5, 23966.2, 20176.3, 10165.4, 13367.2, 11453.9, 16848.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [2906.6, 4134.8, 3277.4, 2382.9, 2631.1, 3034.7, 3549.8]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [13879.1, 10176.6, 13944.0, 11937.1, 11307.3, 6750.6, 12996.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [6104.0, 4520.5, 5933.8, 6295.2, 6588.9, 3499.8, 6545.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [39918.2, 26024.7, 45495.9, 38988.2, 39254.8, 26227.8, 42747.2]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.3, 1.8, 2.2, 1.9, 1.0, 0.6, 1.3]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [8588.8, 6714.5, 10581.6, 7636.9, 7928.6, 4687.4, 9124.6]
```

```mermaid
xychart-beta
    title "entities-relevance-saturated.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1136.6, 1234.8, 1482.3, 1376.9, 1147.0, 743.8, 1440.3]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [139551.2, 143863.6, 147758.9, 149769.7, 128240.4, 93044.8, 149168.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [37476.4, 26814.0, 37931.2, 27280.6, 33457.4, 32352.6, 32106.3]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [453942.0, 363604.4, 495520.1, 408039.1, 458887.5, 256641.6, 523119.6]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.0, 2.9, 2.8, 2.4, 2.0, 2.4, 2.3]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [149428.6, 140862.0, 167028.5, 121048.4, 129724.9, 78538.3, 131756.2]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [13492.1, 13806.8, 15285.8, 15385.2, 13545.9, 12137.9, 14643.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [64372.4, 33315.0, 43296.5, 43553.3, 35754.9, 37879.2, 59168.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [12505.9, 8058.4, 8874.3, 10385.9, 10093.6, 10681.3, 14504.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [187160.4, 84451.7, 121670.1, 137514.1, 119307.2, 116472.5, 200142.9]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.3, 1.9, 2.4, 1.6, 2.2, 2.0, 3.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [56628.5, 29545.4, 39104.4, 46006.1, 40089.7, 36520.1, 60341.0]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [3915.7, 2636.1, 3097.4, 3094.1, 3740.5, 3308.5, 5401.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [20435.0, 27247.9, 20502.7, 11766.6, 17019.7, 16181.3, 18018.6]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [6221.8, 7648.4, 5806.6, 3251.3, 4242.8, 4567.5, 5171.4]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [79311.3, 99350.5, 73925.1, 39521.4, 64266.7, 64313.0, 69307.7]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.2, 2.3, 1.9, 0.9, 1.5, 2.7, 1.8]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [21056.0, 29692.1, 21901.2, 11598.6, 16084.1, 17362.8, 19878.1]
```

```mermaid
xychart-beta
    title "entities-relevance-sweep.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1121.8, 1664.5, 1361.2, 805.1, 1141.2, 1629.0, 1316.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [55182.4, 21144.1, 30740.0, 30157.3, 32728.7, 31850.2, 49922.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [32818.0, 17437.9, 19443.1, 21501.3, 23241.9, 22558.6, 28906.9]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [135325.6, 59311.0, 95734.4, 87969.1, 101861.3, 98252.5, 128543.0]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.6, 1.7, 2.1, 1.5, 1.8, 2.0, 3.5]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [5921.1, 2635.6, 4056.5, 3954.9, 4210.9, 3954.1, 5955.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [15688.5, 7760.4, 10927.2, 10437.8, 11785.0, 10969.4, 16640.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [17004.7, 10266.2, 12968.2, 14944.3, 13156.1, 11903.4, 18937.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [14612.0, 9463.4, 9673.3, 10162.5, 10425.1, 9138.0, 16568.5]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [56031.2, 30721.5, 40692.9, 42414.6, 39516.8, 42369.1, 68730.7]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.0, 1.2, 1.6, 1.4, 1.4, 1.4, 2.6]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [2403.1, 1405.3, 2440.9, 2190.5, 1904.3, 1822.0, 3192.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [4514.6, 2934.8, 3895.1, 3908.4, 3767.0, 3746.9, 5621.8]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [6844.5, 9109.6, 5969.2, 3082.2, 3646.2, 3725.6, 4815.2]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [6071.8, 5752.8, 4648.3, 2237.8, 3552.1, 4437.4, 5690.1]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [24575.3, 28494.2, 23587.6, 12562.2, 18385.8, 16519.4, 22390.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [0.9, 2.3, 0.9, 0.5, 1.0, 1.6, 1.3]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [968.2, 1678.2, 1013.9, 512.7, 665.1, 683.5, 862.0]
```

```mermaid
xychart-beta
    title "entity-labels-sparse.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1286.2, 1937.9, 1228.0, 691.1, 924.8, 1172.3, 1228.5]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [53690.8, 21373.5, 33150.6, 31009.3, 34242.4, 32524.1, 61317.8]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [42536.2, 18791.7, 19043.0, 26424.6, 22746.0, 21814.9, 36125.5]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [210738.5, 102006.1, 145730.7, 183814.2, 178258.1, 168433.6, 242062.2]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.5, 1.5, 1.8, 1.5, 2.2, 2.0, 3.5]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [52614.8, 24846.6, 30404.9, 43592.1, 39017.9, 38674.6, 51533.9]
```

```mermaid
xychart-beta
    title "entity-labels.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [16453.7, 7976.6, 10670.0, 11402.2, 12000.1, 11279.1, 18240.8]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [19159.2, 27915.4, 15705.5, 8668.6, 10885.5, 11937.1, 15087.9]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [18682.7, 20066.2, 13238.4, 7382.9, 9032.9, 10279.1, 13823.3]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [91912.5, 114130.0, 97208.5, 44084.1, 62545.8, 66003.8, 77824.4]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.2, 2.6, 1.6, 0.7, 1.2, 2.1, 2.3]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [22658.3, 28149.5, 23067.9, 10007.7, 11093.8, 12671.3, 15637.9]
```

```mermaid
xychart-beta
    title "entity-labels.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [4112.4, 6443.5, 4511.9, 2413.7, 3359.3, 3824.7, 4739.9]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [6413.9, 7923.0, 6655.7, 2987.1, 4307.0, 3682.8, 4907.8]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [7035.0, 7218.0, 4634.0, 2388.0, 4074.6, 3602.4, 4409.0]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [34527.2, 41760.6, 39554.7, 17018.3, 25208.3, 27401.5, 28674.4]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [0.9, 2.2, 1.4, 0.5, 1.2, 1.7, 1.3]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [9633.0, 11476.3, 10002.5, 4084.2, 5621.1, 4900.5, 6594.9]
```

```mermaid
xychart-beta
    title "entity-labels.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1339.3, 2013.9, 1522.0, 723.0, 1106.6, 1193.6, 1316.0]
```

```mermaid
xychart-beta
    title "events/compose (median µs)"
    x-axis 1 --> 7
    line [12824.2, 16203.6, 12880.5, 7949.6, 9101.6, 11355.0, 13309.8]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [10283.2, 16184.3, 10218.7, 5604.9, 6973.3, 5782.0, 8076.6]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [26249.5, 32777.8, 23939.4, 18653.8, 19197.1, 21671.9, 23951.9]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [42785.5, 50581.3, 44294.9, 28478.2, 34069.7, 40942.9, 39564.4]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.2, 2.7, 1.8, 1.4, 1.5, 1.9, 1.8]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [264.2, 375.4, 304.4, 195.7, 222.4, 257.6, 246.7]
```

```mermaid
xychart-beta
    title "inspector.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [2274.0, 4160.9, 2610.4, 1830.1, 2189.4, 2793.2, 2584.0]
```

```mermaid
xychart-beta
    title "inspector.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [5172.9, 5523.4, 4834.6, 2399.5, 2543.4, 2718.1, 3191.6]
```

```mermaid
xychart-beta
    title "inspector.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [10732.1, 10546.3, 9019.8, 4807.1, 6297.0, 7597.7, 6967.6]
```

```mermaid
xychart-beta
    title "inspector.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [22551.8, 25059.8, 22413.4, 13855.0, 17657.9, 18402.8, 17853.9]
```

```mermaid
xychart-beta
    title "inspector.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [0.8, 2.1, 1.0, 0.4, 1.1, 1.8, 1.1]
```

```mermaid
xychart-beta
    title "inspector.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [256.4, 347.2, 245.5, 127.5, 160.8, 218.3, 221.2]
```

```mermaid
xychart-beta
    title "inspector.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1173.0, 1562.2, 1034.1, 633.8, 819.3, 1184.7, 1068.1]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [1730.1, 812.1, 949.5, 1228.1, 1202.6, 1212.4, 1601.2]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [2916.5, 2007.5, 1674.3, 1787.9, 2053.5, 2149.1, 2961.2]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [6271.7, 3825.7, 3465.4, 5629.4, 5044.4, 4665.5, 6362.0]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [0.6, 0.4, 0.6, 0.6, 0.5, 0.5, 0.8]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [220.2, 113.5, 160.3, 190.7, 191.8, 189.0, 247.2]
```

```mermaid
xychart-beta
    title "inspector.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [363.0, 214.0, 235.1, 343.4, 305.4, 324.2, 440.7]
```

```mermaid
xychart-beta
    title "keyed-append/compose (median µs)"
    x-axis 1 --> 7
    line [2241.5, 1230.1, 2017.3, 1849.1, 1890.5, 1051.8, 1973.6]
```

```mermaid
xychart-beta
    title "keyed-insert/compose (median µs)"
    x-axis 1 --> 7
    line [3904.0, 2135.2, 3946.0, 3101.5, 3884.0, 1959.5, 3703.6]
```

```mermaid
xychart-beta
    title "keyed-prepend/compose (median µs)"
    x-axis 1 --> 7
    line [4631.9, 5670.2, 4810.1, 5713.6, 5284.0, 5303.8, 3424.0]
```

```mermaid
xychart-beta
    title "keyed-remove/compose (median µs)"
    x-axis 1 --> 7
    line [3754.0, 2340.4, 3841.8, 2875.3, 3547.1, 1827.6, 3479.3]
```

```mermaid
xychart-beta
    title "keyed-replace/compose (median µs)"
    x-axis 1 --> 7
    line [52486.3, 65204.8, 53183.6, 71503.5, 56891.2, 60200.2, 44740.2]
```

```mermaid
xychart-beta
    title "keyed-reverse/compose (median µs)"
    x-axis 1 --> 7
    line [3454.2, 4152.3, 3170.7, 4076.7, 3867.3, 3889.8, 2315.2]
```

```mermaid
xychart-beta
    title "keyed-rotate/compose (median µs)"
    x-axis 1 --> 7
    line [3675.5, 4205.0, 3245.0, 4008.5, 3943.0, 3893.6, 2361.3]
```

```mermaid
xychart-beta
    title "keyed-shuffle/compose (median µs)"
    x-axis 1 --> 7
    line [3509.2, 4344.0, 3309.9, 4133.7, 4059.5, 4033.7, 2413.3]
```

```mermaid
xychart-beta
    title "mount-cycles/compose (median µs)"
    x-axis 1 --> 7
    line [22487.2, 16290.9, 25389.8, 24470.6, 24881.5, 23116.2, 33298.8]
```

```mermaid
xychart-beta
    title "mount-dispose/compose (median µs)"
    x-axis 1 --> 7
    line [8156.2, 11089.1, 7309.6, 5895.6, 6379.9, 6063.8, 8561.0]
```

```mermaid
xychart-beta
    title "ordered-window-scroll/compose (median µs)"
    x-axis 1 --> 7
    line [476.6, 541.8, 471.3, 556.9, 564.7, 553.8, 385.7]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [30003.3, 30104.3, 33381.7, 27820.2, 30682.4, 19661.0, 28503.1]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [21590.6, 18636.7, 17711.5, 14764.4, 21038.9, 11215.7, 20462.7]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [222074.4, 182929.5, 238390.1, 207079.0, 236140.7, 138184.2, 230943.6]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.0, 3.0, 2.5, 2.4, 1.9, 1.8, 2.1]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [101466.1, 63734.7, 97238.3, 78657.6, 93914.1, 52229.2, 93731.7]
```

```mermaid
xychart-beta
    title "scene-2d.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1168.5, 1282.5, 1345.4, 1276.1, 1387.9, 883.0, 1294.2]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [30042.0, 37026.2, 26826.4, 14648.1, 23991.6, 17009.8, 26266.2]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [9782.2, 11285.3, 8011.4, 5744.9, 5928.1, 6149.2, 7633.5]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [203516.4, 232335.1, 211377.1, 117511.9, 160501.4, 129535.4, 198277.6]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.6, 2.4, 1.7, 1.3, 2.1, 2.3, 2.4]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [102067.8, 113887.3, 93404.2, 50940.6, 68914.9, 56622.4, 81485.3]
```

```mermaid
xychart-beta
    title "scene-2d.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1105.1, 1578.5, 1068.9, 745.5, 942.1, 867.7, 1027.5]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [18821.8, 22931.8, 19566.8, 24613.0, 21830.9, 21914.7, 15539.6]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [5108.5, 6142.9, 3823.9, 5466.1, 3897.6, 3555.4, 2705.3]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [126713.0, 160716.4, 148021.9, 170011.4, 155845.4, 157157.6, 112924.6]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.2, 1.5, 2.2, 1.3, 1.0, 0.9, 1.1]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [59494.9, 76366.9, 54077.8, 70846.0, 68475.1, 67595.5, 43826.9]
```

```mermaid
xychart-beta
    title "scene-2d.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [772.6, 884.1, 896.1, 1066.5, 827.8, 814.6, 602.9]
```

```mermaid
xychart-beta
    title "scene-3d/compose (median µs)"
    x-axis 1 --> 7
    line [10372.3, 5793.5, 5440.4, 7389.5, 6615.1, 6376.6, 10244.5]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [127130.6, 167018.1, 115393.0, 103046.5, 113930.3, 120767.1, 130705.0]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [4.2, 4.6, 4.2, 4.3, 4.2, 4.6, 5.0]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [296908.1, 344119.5, 308098.2, 247736.6, 332555.4, 297268.8, 364456.1]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.2, 2.3, 1.9, 2.0, 2.2, 2.6, 2.5]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [160845.4, 196666.1, 197076.8, 157127.6, 193707.5, 140489.0, 200387.4]
```

```mermaid
xychart-beta
    title "session-cycle.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [2.2, 2.6, 2.2, 2.4, 2.1, 2.7, 3.0]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [57003.0, 42123.0, 46878.9, 50522.5, 39632.6, 42006.2, 57491.1]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [4.4, 3.1, 3.5, 3.2, 4.2, 4.3, 6.2]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [128750.1, 75810.9, 99563.4, 125498.0, 117015.6, 132164.7, 157084.7]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.2, 1.6, 1.6, 1.4, 2.1, 1.9, 2.5]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [69667.1, 42712.5, 61818.0, 57307.8, 74551.5, 74773.3, 100237.1]
```

```mermaid
xychart-beta
    title "session-cycle.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [2.2, 1.7, 2.0, 1.8, 2.5, 2.3, 2.9]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [14058.5, 13643.4, 14167.1, 12992.3, 13234.1, 15559.1, 10465.1]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [3.3, 3.2, 3.5, 3.8, 3.0, 4.3, 2.2]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [28155.4, 34778.7, 33666.4, 44220.3, 39011.1, 41846.8, 30498.8]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.1, 1.2, 1.8, 1.4, 1.0, 1.2, 1.0]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [16033.0, 21649.1, 18367.5, 26384.9, 23587.7, 27936.0, 14539.5]
```

```mermaid
xychart-beta
    title "session-cycle.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [1.4, 1.7, 1.8, 1.5, 1.1, 1.6, 0.9]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [122493.7, 149820.6, 129214.0, 136849.7, 138470.2, 144472.7, 95523.9]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [9688.2, 11822.6, 13879.1, 19936.9, 11791.9, 11562.9, 8114.6]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [218379.0, 269117.3, 254745.5, 304720.4, 287843.2, 294778.7, 202222.5]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.8, 2.0, 2.4, 2.0, 1.4, 1.6, 1.3]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [53873.0, 66474.9, 52024.6, 70068.5, 63812.5, 64409.4, 43998.7]
```

```mermaid
xychart-beta
    title "spatial-scene.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [3328.9, 4158.0, 4512.2, 4315.9, 3466.7, 4067.4, 2841.4]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [30042.5, 39771.4, 33445.5, 38984.4, 36092.3, 34872.0, 27515.2]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [2800.4, 3543.0, 3829.8, 3724.9, 3617.4, 3505.9, 3229.3]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [58121.2, 76076.5, 68807.2, 84007.9, 81376.6, 82795.6, 58376.4]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.0, 1.2, 2.3, 1.3, 1.0, 1.0, 1.1]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [15596.8, 21949.3, 16415.8, 21967.6, 21470.8, 22464.9, 15864.8]
```

```mermaid
xychart-beta
    title "spatial-scene.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [739.4, 972.7, 805.0, 855.2, 803.6, 785.7, 627.6]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [10440.0, 15557.2, 11457.1, 13518.7, 12640.5, 12542.6, 8682.4]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [925.2, 1427.4, 1127.5, 1311.3, 1223.2, 1184.2, 879.6]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [27492.1, 38434.8, 28600.2, 38760.3, 35914.7, 37283.3, 26653.6]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [0.8, 1.2, 1.4, 0.9, 0.8, 0.8, 1.1]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [7535.1, 11593.9, 7440.0, 10757.9, 10783.6, 10447.9, 7142.7]
```

```mermaid
xychart-beta
    title "spatial-scene.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [209.5, 316.8, 257.4, 307.7, 289.4, 268.8, 213.9]
```

```mermaid
xychart-beta
    title "status-panel/compose (median µs)"
    x-axis 1 --> 7
    line [468.9, 653.2, 449.9, 652.9, 625.9, 604.8, 463.3]
```

```mermaid
xychart-beta
    title "unwind/compose (median µs)"
    x-axis 1 --> 7
    line [4377.9, 5909.9, 4681.9, 2220.6, 3034.6, 3095.2, 3927.3]
```

```mermaid
xychart-beta
    title "update-batched/compose (median µs)"
    x-axis 1 --> 7
    line [3498.0, 1720.7, 3034.6, 2232.9, 3059.4, 1492.9, 3239.3]
```

```mermaid
xychart-beta
    title "update-fanout/compose (median µs)"
    x-axis 1 --> 7
    line [2181.8, 955.8, 1823.1, 1315.3, 1835.1, 822.8, 1892.2]
```

```mermaid
xychart-beta
    title "update-leaf/compose (median µs)"
    x-axis 1 --> 7
    line [36.3, 43.0, 35.9, 40.1, 40.7, 40.7, 32.8]
```

```mermaid
xychart-beta
    title "update-repeated/compose (median µs)"
    x-axis 1 --> 7
    line [393.2, 210.7, 261.5, 364.0, 356.1, 357.0, 469.4]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/burst (median µs)"
    x-axis 1 --> 7
    line [874021.2, 673319.5, 659995.0, 698672.7, 709767.1, 654183.8, 988199.5]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/cold (median µs)"
    x-axis 1 --> 7
    line [548551.6, 399701.0, 402562.3, 443175.1, 434568.7, 403527.0, 604894.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/counts (median µs)"
    x-axis 1 --> 7
    line [1518062.6, 1045366.1, 1078431.5, 1190165.4, 1065313.0, 1109872.8, 1634229.8]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/settle (median µs)"
    x-axis 1 --> 7
    line [2.2, 2.7, 2.7, 1.8, 2.4, 2.4, 2.9]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/steady (median µs)"
    x-axis 1 --> 7
    line [21817.1, 12911.6, 13726.7, 13668.5, 12849.3, 13460.1, 17921.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.extreme/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [597.3, 596.2, 570.2, 533.8, 467.2, 441.5, 606.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/burst (median µs)"
    x-axis 1 --> 7
    line [129597.0, 152881.9, 130628.4, 71007.0, 94251.3, 81557.8, 108804.7]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/cold (median µs)"
    x-axis 1 --> 7
    line [77495.7, 86845.4, 78386.1, 43806.1, 55829.2, 50093.8, 66586.9]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/counts (median µs)"
    x-axis 1 --> 7
    line [233844.8, 292742.7, 237449.0, 132886.2, 159710.6, 141581.0, 209257.8]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.8, 2.5, 2.0, 1.0, 2.1, 2.4, 2.3]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/steady (median µs)"
    x-axis 1 --> 7
    line [16797.9, 18068.3, 13820.3, 7769.8, 11069.5, 9141.8, 12120.4]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.large/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [394.3, 415.6, 316.6, 177.0, 238.9, 230.5, 303.4]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/burst (median µs)"
    x-axis 1 --> 7
    line [26466.6, 30431.0, 24749.7, 14336.6, 15360.9, 16779.4, 21924.1]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/cold (median µs)"
    x-axis 1 --> 7
    line [13006.1, 14270.7, 12615.2, 6978.4, 7976.4, 8554.5, 10792.6]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/counts (median µs)"
    x-axis 1 --> 7
    line [59589.6, 61649.5, 60488.9, 31514.3, 44861.3, 36535.2, 54991.8]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/settle (median µs)"
    x-axis 1 --> 7
    line [1.3, 2.0, 1.7, 0.7, 1.1, 2.3, 2.0]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/steady (median µs)"
    x-axis 1 --> 7
    line [13755.1, 15839.6, 11775.6, 6339.4, 8929.5, 7982.2, 10279.3]
```

```mermaid
xychart-beta
    title "virtual-filtered-list.medium/compose/teardown (median µs)"
    x-axis 1 --> 7
    line [209.7, 348.6, 197.9, 112.1, 130.1, 141.5, 160.7]
```

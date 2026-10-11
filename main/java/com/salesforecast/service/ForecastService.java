
package com.salesforecast.service;

public class ForecastService {

    public double predictNextSales(double[] sales) {
        int n = sales.length;

        if (n < 2) {
            throw new IllegalArgumentException(
                "At least two sales records are required."
            );
        }

        double sumX = 0, sumY = 0;
        double sumXY = 0, sumX2 = 0;

        for (int i = 0; i < n; i++) {
            double x = i + 1;
            double y = sales[i];

            sumX += x;
            sumY += y;
            sumXY += x * y;
            sumX2 += x * x;
        }

        double denominator = n * sumX2 - sumX * sumX;

        double slope =
            (n * sumXY - sumX * sumY) / denominator;

        double intercept = (sumY - slope * sumX) / n;

        return Math.max(0, intercept + slope * (n + 1));
    }
}

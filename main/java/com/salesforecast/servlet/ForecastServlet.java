
package com.salesforecast.servlet;

import com.salesforecast.service.ForecastService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/forecast")
public class ForecastServlet extends HttpServlet {

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String input = request.getParameter("sales");
            String[] values = input.split(",");
            double[] sales = new double[values.length];

            for (int i = 0; i < values.length; i++) {
                sales[i] = Double.parseDouble(values[i].trim());

                if (!Double.isFinite(sales[i]) || sales[i] < 0) {
                    throw new IllegalArgumentException(
                        "Sales must be non-negative."
                    );
                }
            }

            ForecastService service = new ForecastService();
            double prediction = service.predictNextSales(sales);

            request.setAttribute("prediction", prediction);
            request.getRequestDispatcher("/result.jsp")
                   .forward(request, response);

        } catch (IllegalArgumentException e) {
            response.setStatus(
                HttpServletResponse.SC_BAD_REQUEST);
            response.setContentType("text/plain;charset=UTF-8");
            response.getWriter().println(
                "Invalid input: " + e.getMessage());
        }
    }
}

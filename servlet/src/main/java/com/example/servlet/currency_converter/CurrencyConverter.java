package com.example.servlet.currency_converter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/converter")
public class CurrencyConverter extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter printWriter = resp.getWriter();
        float rate = Float.parseFloat(req.getParameter("rate"));
        float usd = Float.parseFloat((req.getParameter("usd")));
        float vnd = rate * usd;
        printWriter.println("<html>");
        printWriter.println("<h1>Rate: "+rate+"</h1>");
        printWriter.println("<h1>USD: "+usd + "</h1>");
        printWriter.println("<h1>VND: "+vnd+"</h1>");
    }
}

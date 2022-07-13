package com.codegym.demoservlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class DemoServletXML extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter printWriter = resp.getWriter();
        printWriter.println("<p>Voi the gioi ban chi la mot nguoi, nhung voi mot nguoi ban co the la ca the gioi.</p>");
        printWriter.println("<p>Said by Quang Dang</p>");
        printWriter.close();
    }
}

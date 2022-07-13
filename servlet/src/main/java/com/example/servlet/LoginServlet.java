package com.example.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        PrintWriter printWriter = resp.getWriter();
        printWriter.println("<html>");
        if ((username.equals("admin")) && password.equals("admin")) {
            printWriter.println("<h1>Welcome " + username + " to website</h1>");
        }
        else {
            printWriter.println("<h1>Login Error</h1>");
        }
        printWriter.println("</html>");
    }
}

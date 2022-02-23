package com.example.loginpage_midtermexam.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import static com.example.loginpage_midtermexam.connectionfactory.ConnectionFactory.getConnection;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {

    private String message;

    public void init() {
        message = "Hello World!";
    }

    //Servlet implementation class LoginServlet
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, java.io.IOException {
        String password = request.getParameter("pw");
        String query = "SELECT * FROM users WHERE username = ?";
        PreparedStatement preparedStatement = null;
        try {
            preparedStatement = getConnection().prepareStatement(query);
            preparedStatement.setString(1, request.getParameter("un"));
            ResultSet result = preparedStatement.executeQuery();
            if (result.next()) {
                if (password.equals(result.getString("password"))) {
                    request.setAttribute("firstname", result.getString("first_name"));
                    request.setAttribute("lastname", result.getString("last_name"));

                    RequestDispatcher dispatcher = request.getRequestDispatcher("UserLogged.jsp");
                    dispatcher.forward(request, response);

                } else {
                    response.sendRedirect("InvalidLogin.jsp");
                }

            } else {
                response.sendRedirect("InvalidLogin.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}


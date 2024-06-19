package com.sdzee.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class FetchStatusCountsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        try {
            String url = "jdbc:mysql://localhost:3306/test";
            String username = "root";
            String password = "Password13"; // Replace with your MySQL root password
            Connection connection = DriverManager.getConnection(url, username, password);

            Statement stmt = connection.createStatement();
            ResultSet statusResultSet = stmt.executeQuery(
                "SELECT status, COUNT(*) as count FROM tasks GROUP BY status"
            );

            StringBuilder jsonBuilder = new StringBuilder();
            jsonBuilder.append("{");

            while (statusResultSet.next()) {
                String status = statusResultSet.getString("status");
                int count = statusResultSet.getInt("count");

                jsonBuilder.append("\"" + status + "\": " + count + ",");
            }

            // Remove the trailing comma if any
            if (jsonBuilder.charAt(jsonBuilder.length() - 1) == ',') {
                jsonBuilder.deleteCharAt(jsonBuilder.length() - 1);
            }

            jsonBuilder.append("}");
            out.println(jsonBuilder.toString());

            statusResultSet.close();
            stmt.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            out.println("{\"error\": \"An error occurred\"}");
        }
    }
}

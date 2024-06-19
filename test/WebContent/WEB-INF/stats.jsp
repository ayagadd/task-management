<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task Status Statistics</title>
</head>
<body>
    <h1>Task Status Statistics</h1>
    <table border="1">
        <tr>
            <th>Status</th>
            <th>Number of Tasks</th>
        </tr>
        <%@ page import="java.sql.*" %>
        <%
            try {
                // Establish a database connection
                String url = "jdbc:mysql://localhost:3306/test";
                String username = "root";
                String password = "Password13"; // Replace with your MySQL root password
                Connection connection = DriverManager.getConnection(url, username, password);

                // Retrieve status counts
                Statement stmt = connection.createStatement();
                ResultSet statusResultSet = stmt.executeQuery(
                    "SELECT status, COUNT(*) as count FROM tasks GROUP BY status"
                );

                while (statusResultSet.next()) {
                    String status = statusResultSet.getString("status");
                    int count = statusResultSet.getInt("count");
        %>
        <tr>
            <td><%= status %></td>
            <td><%= count %></td>
        </tr>
        <%
                }
                statusResultSet.close();
                stmt.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>


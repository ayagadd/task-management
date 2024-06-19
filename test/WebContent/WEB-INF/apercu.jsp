<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Apercu des taches</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header h1 {
            margin: 0;
        }

        .header a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 10px 20px;
            border-radius: 3px;
            background-color: #45a049;
        }

        .header a:hover {
            background-color: #4CAF50;
        }

        .task-table {
            margin: 20px auto;
            width: 80%;
            border-collapse: collapse;
        }

        .task-table th,
        .task-table td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        .task-table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Gestion des tâches</h1>
        <a href="test" style="background-color: #d9534f;">Déconnexion</a>
    </div>
    
    <table class="task-table">
        <tr>
            <th>Tache</th>
            <th>Description</th>
            <th>Durée de la tâche (heures)</th>
            <th>Nom du Cadre</th>
            <th>Status</th>
        </tr>
        <% 
            try {
                
                String jdbcUrl = "jdbc:mysql://localhost:3306/test";
                String dbUser = "root";
                String dbPassword = "Password13";
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

                
                String sql = "SELECT * FROM tasks";
                Statement statement = connection.createStatement();
                ResultSet taskData = statement.executeQuery(sql);

                
                while (taskData.next()) {
                    String task_name = taskData.getString("task_name");
                    String description = taskData.getString("description");
                    int duration = taskData.getInt("duration");
                    String assignee = taskData.getString("assignee");
                    String status = taskData.getString("status");
        %>
        <tr>
            <td><%= task_name %></td>
            <td><%= description %></td>
            <td><%= duration %></td>
            <td><%= assignee %></td>
            <td><%= status %></td>
        </tr>
        <% 
                }
                
                
                statement.close();
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </table>
</body>
</html>

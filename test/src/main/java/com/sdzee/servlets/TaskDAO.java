package com.sdzee.servlets;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TaskDAO {
    private static final String URL = "jdbc:mysql://localhost:3306/test";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "Password13";



public static void insertTask(String task_name, String description, int duration, String assignee) {
    try (Connection connection = DriverManager.getConnection(URL, USERNAME, PASSWORD)) {
        String query = "INSERT INTO tasks (task_name, description, duration, assignee, status) VALUES (?, ?, ?, ?, 'tache non demaree')";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, task_name);
            preparedStatement.setString(2, description);
            preparedStatement.setInt(3, duration);
            preparedStatement.setString(4, assignee);
            preparedStatement.executeUpdate();
            connection.commit(); 
        } catch (SQLException e) {
            e.printStackTrace();
            connection.rollback(); 
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
}

}
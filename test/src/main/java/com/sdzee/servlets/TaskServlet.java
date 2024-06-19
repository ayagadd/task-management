package com.sdzee.servlets; 
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TaskServlet")
public class TaskServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String task_name = request.getParameter("task_name");
        String description = request.getParameter("description");
        int duration = Integer.parseInt(request.getParameter("duration"));
        String assignee = request.getParameter("assignee");

        
        TaskDAO.insertTask(task_name, description, duration, assignee);

        
    }
}

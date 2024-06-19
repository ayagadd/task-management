package com.sdzee.servlets; 

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class Test extends HttpServlet {
	public static final long serialVersionUID= 1L;


	
	public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{


		
		
	        String action = request.getParameter("action");

	        if ("bienvenue".equals(action)) {
	            
	            request.getRequestDispatcher("/WEB-INF/bienvenue.jsp").forward(request, response);
	        } else if ("form".equals(action)) {
	           
	            request.getRequestDispatcher("/WEB-INF/form.jsp").forward(request, response);
	        }
	        else if ("add_task".equals(action)) {
	            
	            request.getRequestDispatcher("/WEB-INF/add_task.jsp").forward(request, response);
	        }
	        else if ("success".equals(action)) {
	            
	            request.getRequestDispatcher("/WEB-INF/success.jsp").forward(request, response);
	        }
	        else if ("apercu".equals(action)) {
	         /*   try {
	                Connection connection = establishDatabaseConnection();
	                String query = "SELECT * FROM tasks";
	                PreparedStatement statement = connection.prepareStatement(query);
	                ResultSet resultSet = statement.executeQuery();

	                request.setAttribute("taskData", resultSet);

	                resultSet.close();
	                statement.close();
	                connection.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	        }  */  
	            request.getRequestDispatcher("/WEB-INF/apercu.jsp").forward(request, response);
	        }
    else {
       
        this.getServletContext().getRequestDispatcher("/WEB-INF/test.jsp").forward(request, response);
    }
	    }


	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String nom = request.getParameter("nom");
	    request.setAttribute("nom", nom);
	    String password = request.getParameter("password");
	    request.setAttribute("password", password);

	    String fonction = "c";
	    
	    String fonction2 = "s";
	   

	    if (password != null && !password.isEmpty() && password.equals("123") && nom.equals("Aya") && fonction != null && !fonction.isEmpty() && fonction.equals("c")) {
	        this.getServletContext().getRequestDispatcher("/WEB-INF/form.jsp").forward(request, response);
	    } else if (password != null && !password.isEmpty() && password.equals("3") && nom.equals("Meryem") && fonction2 != null && !fonction2.isEmpty() && fonction2.equals("s")) {
	        this.getServletContext().getRequestDispatcher("/WEB-INF/bienvenue.jsp").forward(request, response);
	    } else {
	        request.setAttribute("message", "Mot de passe incorrect");
	        this.getServletContext().getRequestDispatcher("/WEB-INF/erreur.jsp").forward(request, response);
	    }
	}}





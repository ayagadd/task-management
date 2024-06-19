<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Tâche ajoutée avec succès</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .success-message {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="success-message">
        <h2>Tâche ajoutée avec succès</h2>
        <p>La tâche a été ajoutée à la base de données.</p>
        <p> <a href="test?action=add_task" class="action-button">Ajouter une autre tache</a></p>
    </div>
</body>
</html>

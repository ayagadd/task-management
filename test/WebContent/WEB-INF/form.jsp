<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter une tache</title>
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
    .header .left-header {
        flex: 1;
        text-align: left;
    }
    .header .right-header {
        text-align: right;
    }
    .header a {
        color: white;
        text-decoration: none;
        font-weight: bold;
        border-radius: 3px;
        padding: 5px 10px;
    }
    .header a.deconnexion {
        background-color: #d9534f;
    }
    .header a:hover {
        background-color: #45a049;
    }

    /* Additional styles for the links and centering */
    .center {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 40vh; /* Adjust the height as needed */
        background-color: #f2f2f2;
        padding: 20px;
        box-sizing: border-box;
    }

    .center h2 {
        color: black;
        font-family: Arial, sans-serif;
        font-size: 24px;
        margin-bottom: 20px;
    }

    .deconnexion {
        background-color: #d9534f;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 3px;
        font-weight: bold;
        text-decoration: none;
        transition: background-color 0.3s ease;
    }

    .deconnexion:hover {
        background-color: #c9302c;
    }

    /* Additional styles for the action buttons */
    .action-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: flex-start; /* Align to the top */
        height: calc(60vh - 100px); /* Adjust the height as needed */
        background-color: #f2f2f2;
        padding: 20px;
        box-sizing: border-box;
    }

    .action-button {
        background-color: #4CAF50;
        color: white;
        padding: 15px 30px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 20px;
        margin: 10px 0;
        width: 90%; /* Adjust the width as needed */
        max-width: 300px;
        text-align: center;
        transition: background-color 0.3s ease;
    }

    .action-button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="header">
        <div class="left-header">
            <h1>Gestion des tâches</h1>
        </div>
        <div class="right-header">
            <a href="test" class="deconnexion">Déconnexion</a>
        </div>
    </div>
    <div class="center">
        <h2>Bienvenue, <%= request.getAttribute("nom") %>!</h2>
    </div>
    <div class="action-container">
        <a href="test?action=apercu" class="action-button">Apercu des taches</a>
        <a href="test?action=add_task" class="action-button">Ajouter une tache</a>
    </div>
</body>
</html>


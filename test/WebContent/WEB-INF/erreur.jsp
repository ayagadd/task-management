<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenue</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .error-container {
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        text-align: center;
    }
    .error-container h1 {
        margin-bottom: 10px;
    }
    .error-container p {
        margin-bottom: 20px;
    }
    .error-container a {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        text-decoration: none;
        border-radius: 3px;
        display: inline-block;
    }
    .error-container a:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="error-container">
        <h1>Erreur</h1>
        <p>Mot de passe incorrect</p>
        <a href="test">Retour</a>
    </div>
</body>
</html>
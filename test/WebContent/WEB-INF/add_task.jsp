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

    /* Ajoutez les styles pour la section "Ajouter une tache" */
    .task-form-container {
        margin: 20px;
        padding: 20px;
        max-width: 400px;
        border: 1px solid #ccc;
        background-color: #f7f7f7;
        font-family: Arial, sans-serif;
    }

    .task-form-container h2 {
        margin-bottom: 20px;
        color: #333;
    }

    .task-form-container form {
        display: flex;
        flex-direction: column;
    }

    .task-form-container label {
        margin-bottom: 10px;
        color: #555;
    }

    .task-form-container input[type="text"],
    .task-form-container textarea,
    .task-form-container input[type="number"] {
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 14px;
    }

/* Style for the "Ajouter" button */
.action-button {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    text-decoration: none;
    display: inline-block;
    margin-top: 10px;
}

.action-button:hover {
    background-color: #45a049;
}


</style>
</head>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Ajouter une tache</title>
    <!-- Your CSS styles here -->
</head>
<body>
    <div class="header">
        <h1>Gestion des tâches</h1>
    </div>
    <div class="task-form-container">
        <h2>Ajouter une nouvelle tâche</h2>
        <form method="post" action="TaskServlet">
            <label for="task_name">Titre de la tâche:</label>
            <input type="text" name="task_name" id="task_name" required />

            <label for="description">Description de la tâche:</label>
            <textarea name="description" id="description" rows="5" required></textarea>

            <label for="duration">Durée estimée en heures:</label>
            <input type="number" name="duration" id="duration" required />

            <label for="asignee">Nom du cadre du service:</label>
            <input type="text" name="asignee" id="assignee" required />

            <a href="test?action=success" class="action-button">Ajouter</a>
        </form>
    </div>
</body>
</html>

</html>
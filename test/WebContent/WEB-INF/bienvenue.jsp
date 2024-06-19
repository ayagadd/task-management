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

        .task-actions {
            display: flex;
            justify-content: space-between;
        }

        .task-actions button {
            padding: 5px 10px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        .start-task {
            background-color: #4CAF50;
            color: white;
        }

        .complete-success {
            background-color: #45a049;
            color: white;
        }

        .complete-blocked {
            background-color: #d9534f;
            color: white;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Gestion des tâches</h1>
        <a href="test" style="background-color: #d9534f;">Déconnexion</a>
    </div>
    
    <h2 style="text-align: center; color: black; margin-top: 20px;">Bonjour, <%= request.getAttribute("nom") %>!</h2>

    <table class="task-table">
        <tr>
            <th>Tache</th>
            <th>Description</th>
            <th>Durée de la tâche (heures)</th>
            <th>Status</th>
            <th>Actions</th>
        </tr>
        <tr>
            <td>Tâche 1</td>
            <td>Description de la tâche 1</td>
            <td>2</td>
            <td id="status1">Tâche non démarrée</td>
            <td class="task-actions">
                <button class="start-task" onclick="updateStatus('status1', 'En cours')">Démarrer</button>
                <button class="complete-success" onclick="updateStatus('status1', 'Terminée avec succès')">Tâche terminée avec succès</button>
                <button class="complete-blocked" onclick="updateStatus('status1', 'Terminée avec blocage')">Tâche terminée avec blocage</button>
            </td>
        </tr>
        <tr>
            <td>Tâche 2</td>
            <td>Description de la tâche 2</td>
            <td>5</td>
            <td id="status2">Tâche non démarrée</td>
            <td class="task-actions">
                <button class="start-task" onclick="updateStatus('status2', 'En cours')">Démarrer</button>
                <button class="complete-success" onclick="updateStatus('status2', 'Terminée avec succès')">Tâche terminée avec succès</button>
                <button class="complete-blocked" onclick="updateStatus('status2', 'Terminée avec blocage')">Tâche terminée avec blocage</button>
            </td>
        </tr>
    </table>

    <script>
        function updateStatus(statusId, newStatus) {
            document.getElementById(statusId).textContent = newStatus;
      		
        	}
    </script>
</body>
</html>



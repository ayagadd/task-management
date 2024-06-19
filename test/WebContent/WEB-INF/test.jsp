<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Test</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
            background-image: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)),url('https://images.pexels.com/photos/3183150/pexels-photo-3183150.jpeg?cs=srgb&dl=pexels-fauxels-3183150.jpg&fm=jpg'); /* Add the path to your image */
            background-size: cover;
            background-position: center;
        }
        .header {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 10px;
            font-size: 24px;
            border-radius: 5px 5px 0 0;
        }
        .login-container-wrapper {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            margin-top: 20px;
        }
        .login-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
            margin: 0 15px;
        }
        .login-container h2,
        .login-container h3 {
            margin-top: 0;
            color: #000;
        }
        .login-container label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .login-container input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            width: 100%;
        }
        .login-container input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<div class="header">Gestion des tâches</div>

<div class="login-container-wrapper">
    <div class="login-container">
        <h2>Identification</h2>
        
        <form method="post" action="test">
            <label for="nom">Nom:</label>
            <input type="text" name="nom" id="nom" />
    
            <br />
    
            <label for="password">Mot de passe:</label>
            <input type="password" name="password" id="password" />
            <input type="submit" value="Se connecter" />
        </form>
    </div>
    

</div>

</body>
</html>









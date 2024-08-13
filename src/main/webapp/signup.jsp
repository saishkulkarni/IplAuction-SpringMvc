<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url(https://d16f573ilcot6q.cloudfront.net/wp-content/uploads/2024/01/IPL.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 2rem;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: dodgerblue;
            text-align: center;
            margin-bottom: 1.5rem;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        .radio-group {
            margin-bottom: 1rem;
        }

        input[type="radio"] {
            display: none;
        }

        label {
            display: block;
            background-color: #f0f0f0;
            padding: 10px;
            margin: 5px 0;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        label:hover {
            background-color: #e0e0e0;
        }

        input[type="radio"]:checked + label {
            background-color: mediumseagreen;
            color: white;
        }

        .btn {
            background-color: white;
            border: none;
            color: black;
            padding: 10px 22px;
            text-align: center;
            font-size: 16px;
            margin: 10px 0;
            transition: 0.3s;
            border-radius: 15px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: mediumseagreen;
            color: white;
        }

        .btn-group {
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Choose Your Role</h1>
        <form action="signup" method="post">
            <div class="radio-group">
                <input type="radio" name="role" id="management" value="Management">
                <label for="management">Management</label>

                <input type="radio" name="role" id="team" value="Team">
                <label for="team">Team</label>

                <input type="radio" name="role" id="player" value="Player">
                <label for="player">Player</label>
            </div>
            <div class="btn-group">
                <button type="submit" class="btn">Submit</button>
                <a href="index.jsp" class="btn">Back</a>
            </div>
        </form>
    </div>
</body>
</html>

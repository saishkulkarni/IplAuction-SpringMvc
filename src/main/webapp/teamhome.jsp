<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team Home</title>
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2ecc71;
            --text-color: #333;
            --background-color: rgba(255, 255, 255, 0.9);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-image: url('${img}');
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        .container {
            background-color: var(--background-color);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }

        h1 {
            color: #e74c3c;
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
        }

        h2 {
            color: #3498db;
            text-align: center;
            margin-bottom: 20px;
            font-size: 18px;
        }

        .button-group {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px 20px;
            text-align: center;
            font-size: 16px;
            margin: 10px 0;
            transition: 0.3s;
            border-radius: 25px;
            cursor: pointer;
            width: 200px;
            text-decoration: none;
        }

        .btn:hover {
            background-color: var(--secondary-color);
            transform: translateY(-3px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .back-btn {
            background-color: #95a5a6;
            margin-top: 20px;
        }

        .back-btn:hover {
            background-color: #7f8c8d;
        }

        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }

            h1 {
                font-size: 24px;
            }

            .btn {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>${msg}</h2>
        <h1>Team Home</h1>
        <div class="button-group">
            <a href="viewavailable" class="btn">Buy Player</a>
            <a href="viewteam" class="btn">View Team</a>
            <a href="viewteambyname" class="btn">View Team by Name</a>
            <a href="teamlogin.jsp" class="btn back-btn">Back</a>
        </div>
    </div>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Management Login</title>
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
            background-image: url(https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2022/12/world-cup-1672287798.jpg);
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

        form {
            display: flex;
            flex-direction: column;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            color: var(--text-color);
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px 20px;
            text-align: center;
            font-size: 16px;
            transition: 0.3s;
            border-radius: 25px;
            cursor: pointer;
            width: 48%;
        }

        .btn:hover {
            background-color: var(--secondary-color);
            transform: translateY(-3px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .back-btn {
            background-color: #95a5a6;
            margin-top: 20px;
            width: 100%;
        }

        .back-btn:hover {
            background-color: #7f8c8d;
        }

        .error-msg {
            color: #e74c3c;
            text-align: center;
            margin-bottom: 20px;
            font-style: italic;
        }

        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }

            h1 {
                font-size: 24px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Management Login</h1>
        <p class="error-msg">${msg}</p>
        <form action="managementlogin" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="button-group">
                <button type="submit" class="btn">Login</button>
                <button type="reset" class="btn">Cancel</button>
            </div>
        </form>
        <a href="index.jsp"><button class="btn back-btn">Back</button></a>
    </div>
</body>
</html>

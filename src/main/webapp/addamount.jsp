<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Amount</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url(https://wallpaperaccess.com/full/4496932.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8);
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
            font-size: 18px;
            margin-bottom: 10px;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }

        button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px 20px;
            text-align: center;
            font-size: 16px;
            margin: 4px 2px;
            transition: 0.3s;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #2980b9;
        }

        .button-group {
            display: flex;
            justify-content: space-between;
        }

        .back-button {
            background-color: #95a5a6;
            margin-top: 20px;
            width: 100%;
        }

        .back-button:hover {
            background-color: #7f8c8d;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Add Amount</h1>
        <form action="addamount">
            <h2>Enter Amount:</h2>
            <input type="text" name="amount" id="amount">
            <input type="hidden" name="id" value="<%= request.getParameter("id") %>">
            <div class="button-group">
                <button type="submit">Add</button>
                <button type="reset">Cancel</button>
            </div>
        </form>
        <a href="viewallteam"><button class="back-button">Back</button></a>
    </div>
</body>
</html>

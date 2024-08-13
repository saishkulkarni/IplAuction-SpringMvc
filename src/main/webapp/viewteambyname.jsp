<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Team</title>
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
            background-image: url(https://assets.bcci.tv/bcci/photos/7000/3cc121dd-b600-4b4e-9afd-b99d67cafa1a.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
            color: var(--text-color);
        }
        .container {
            background-color: var(--background-color);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 500px;
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
            align-items: center;
        }
        select {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 5px;
            margin-bottom: 20px;
            appearance: none;
            background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23007CB2%22%20d%3D%22M287%2069.4a17.6%2017.6%200%200%200-13-5.4H18.4c-5%200-9.3%201.8-12.9%205.4A17.6%2017.6%200%200%200%200%2082.2c0%205%201.8%209.3%205.4%2012.9l128%20127.9c3.6%203.6%207.8%205.4%2012.8%205.4s9.2-1.8%2012.8-5.4L287%2095c3.5-3.5%205.4-7.8%205.4-12.8%200-5-1.9-9.2-5.5-12.8z%22%2F%3E%3C%2Fsvg%3E");
            background-repeat: no-repeat;
            background-position: right 10px top 50%;
            background-size: 12px auto;
        }
        .btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px 24px;
            text-align: center;
            font-size: 16px;
            transition: 0.3s;
            border-radius: 25px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }
        .btn:hover {
            background-color: var(--secondary-color);
            transform: translateY(-3px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .search-btn {
            margin-bottom: 20px;
        }
        .back-btn {
            background-color: #95a5a6;
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
            select, .btn {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Select Team</h1>
        <form action="fetchusingteam">
            <select name="name">
                <c:forEach var="team" items="${teams}">
                    <option value="${team.getName()}">${team.getName()}</option>
                </c:forEach>
            </select>
            <button type="submit" class="btn search-btn">Search</button>
        </form>
        <a href="teamhomedummy" class="btn back-btn">Back</a>
    </div>
</body>
</html>

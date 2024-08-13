<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buy Players</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url(https://assets.bcci.tv/bcci/photos/7000/2721a134-0c1a-4fbd-98af-661c3739cb6f.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            margin: 0;
            padding: 20px;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
        }

        h1 {
            color: #e74c3c;
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f39c12;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .buy-button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 8px 16px;
            text-align: center;
            font-size: 14px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .buy-button:hover {
            background-color: #2980b9;
        }

        .back-button {
            background-color: #95a5a6;
            color: white;
            border: none;
            padding: 12px 20px;
            text-align: center;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 20px;
        }

        .back-button:hover {
            background-color: #7f8c8d;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Available Players</h1>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Role</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="player" items="${players}">
                    <tr>
                        <td>${player.getName()}</td>
                        <td>${player.getRole()}</td>
                        <td>${player.getPrice()}</td>
                        <td>
                            <a href="buyplayer?id=${player.getId()}">
                                <button class="buy-button">Buy</button>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="teamlogin.jsp"><button class="back-button">Back</button></a>
    </div>
</body>
</html>

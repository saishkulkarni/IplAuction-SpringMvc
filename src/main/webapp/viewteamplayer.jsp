<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${teamname} Players</title>
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2ecc71;
            --text-color: #333;
            --background-color: rgba(255, 255, 255, 0.9);
            --table-header-bg: #f39c12;
            --table-row-bg: #f2f2f2;
            --table-hover-bg: #ddd;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-image: url(https://assets.bcci.tv/bcci/photos/7000/e482ccf3-0255-417f-acbd-90f901fe4ee2.jpg);
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
            max-width: 800px;
            width: 100%;
        }

        h1 {
            color: #e74c3c;
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
            background-color: white;
            padding: 10px;
            border-radius: 25px;
        }

        h2 {
            color: white;
            text-align: center;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
            background-color: var(--background-color);
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: var(--table-header-bg);
            color: white;
        }

        tr:nth-child(even) {
            background-color: var(--table-row-bg);
        }

        tr:hover {
            background-color: var(--table-hover-bg);
        }

        .btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 10px 20px;
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

        @media (max-width: 768px) {
            .container {
                padding: 20px;
            }

            h1 {
                font-size: 24px;
            }

            table {
                font-size: 14px;
            }

            th, td {
                padding: 10px;
            }

            .btn {
                font-size: 14px;
                padding: 8px 16px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>${teamname} Players</h1>
        <% String msg = (String)request.getAttribute("msg");
        if(msg != null) { %>
            <h2>${msg}</h2>
        <% } else { %>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Role</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="player" items="${players}">
                        <tr>
                            <td>${player.getName()}</td>
                            <td>${player.getRole()}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        <% } %>
        <a href="viewallteam" class="btn">Back</a>
    </div>
</body>
</html>

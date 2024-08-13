<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Players</title>
    <style>
        :root {
            --primary-color: #3498db;
            --primary-dark: #2980b9;
            --secondary-color: #2ecc71;
            --secondary-dark: #27ae60;
            --text-color: #333;
            --background-color: rgba(255, 255, 255, 0.95);
            --table-header-bg: #34495e;
            --table-row-bg: #f2f2f2;
            --table-hover-bg: #e0e0e0;
            --danger-color: #e74c3c;
            --danger-dark: #c0392b;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url(https://assets.bcci.tv/bcci/photos/531/f2812844-10e4-4276-9348-cc47bae4a517.jpg);
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
            line-height: 1.6;
        }

        .container {
            background-color: var(--background-color);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            max-width: 1200px;
            width: 100%;
        }

        h1 {
            color: #e74c3c;
            text-align: center;
            margin-bottom: 30px;
            font-size: 32px;
            background-color: white;
            padding: 15px;
            border-radius: 25px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            margin-bottom: 30px;
            background-color: var(--background-color);
            border-radius: 10px;
            overflow: hidden;
        }

        th, td {
            padding: 15px;
            text-align: left;
        }

        th {
            background-color: var(--table-header-bg);
            color: white;
            font-weight: bold;
            text-transform: uppercase;
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
            transition: all 0.3s ease;
            border-radius: 25px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .btn:hover {
            background-color: var(--primary-dark);
            transform: translateY(-3px);
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.15);
        }

        .change-status-btn {
            background-color: var(--danger-color);
            color: white;
            font-size: 14px;
            padding: 8px 15px;
        }

        .change-status-btn:hover {
            background-color: var(--danger-dark);
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

            .btn, .change-status-btn {
                font-size: 14px;
                padding: 8px 16px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>List of All Players</h1>
        <table>
            <thead>
                <tr>
                    <th>Player Name</th>
                    <th>Role</th>
                    <th>Country</th>
                    <th>Status</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="player" items="${players}">
                    <tr>
                        <td>${player.getName()}</td>
                        <td>${player.getRole()}</td>
                        <td>${player.getCountry()}</td>
                        <td>${player.getStatus()}</td>
                        <td>${player.getPrice()}</td>
                        <td>
                            <a href="changeplayerstatus?id=${player.getId()}" class="btn change-status-btn">Change Status</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="managementhome.jsp" class="btn">Back</a>
    </div>
</body>
</html>

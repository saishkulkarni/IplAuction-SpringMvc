<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Player</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url(https://assets.bcci.tv/bcci/photos/495/95ae5c09-13e9-42e9-b7af-ad5faabd0074.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            margin: 0;
            padding: 20px;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.9);
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

        h2 {
            color: #333;
            font-size: 18px;
            margin-bottom: 10px;
        }

        input[type="text"],
        input[type="password"],
        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }

        select {
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            background-image: url('data:image/svg+xml;utf8,<svg fill="black" height="24" viewBox="0 0 24 24" width="24" xmlns="http://www.w3.org/2000/svg"><path d="M7 10l5 5 5-5z"/><path d="M0 0h24v24H0z" fill="none"/></svg>');
            background-repeat: no-repeat;
            background-position-x: 98%;
            background-position-y: 50%;
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
            width: 100%;
        }

        button:hover {
            background-color: #2980b9;
        }

        .back-button {
            background-color: #95a5a6;
            margin-top: 20px;
        }

        .back-button:hover {
            background-color: #7f8c8d;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Edit Player</h1>
        <form:form action="updateplayer" modelAttribute="player">
            <form:input path="id" type="hidden"/>
            <h2>Name:</h2>
            <form:input path="name"/>
            <h2>Username:</h2>
            <form:input path="username"/>
            <h2>Password:</h2>
            <form:password path="password"/>
            <h2>Role:</h2>
            <form:select path="role">
                <form:option value="">Select</form:option>
                <form:option value="Batsman">Batsman</form:option>
                <form:option value="Bowler">Bowler</form:option>
                <form:option value="AllRounder">All Rounder</form:option>
                <form:option value="Wicketkeeper">Wicket keeper</form:option>
            </form:select>
            <form:input path="status" type="hidden"/>
            <form:input path="country" type="hidden"/>
            <h2>Price:</h2>
            <form:input path="price" readonly="true"/>
            <button type="submit">Update</button>
        </form:form>
        <a href="playerhome.jsp"><button class="back-button">Back</button></a>
    </div>
</body>
</html>

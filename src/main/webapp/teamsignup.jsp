<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Team SignUp</title>
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2ecc71;
            --text-color: #333;
            --background-color: rgba(255, 255, 255, 0.9);
            --error-color: #e74c3c;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-image: url(https://cdn.i.haymarketmedia.asia/?n=campaign-india%2Fcontent%2F20220325041349_750x500.jpg&h=570&w=855&q=100&v=20170226&c=1);
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
            max-width: 500px;
            width: 100%;
        }

        h1 {
            color: var(--error-color);
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
            background-color: lightyellow;
            padding: 10px;
            border-radius: 25px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            color: var(--text-color);
            margin-bottom: 5px;
            font-size: 18px;
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

        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }

            h1 {
                font-size: 24px;
            }

            .btn {
                width: 100%;
                margin-bottom: 10px;
            }

            .button-group {
                flex-direction: column;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Team Signup</h1>
        <form:form action="teamsignup" modelAttribute="team" method="post">
            <div class="form-group">
                <label for="name">Team Name:</label>
                <form:input path="name" id="name" required="required" />
            </div>
            <div class="form-group">
                <label for="username">Username:</label>
                <form:input path="username" id="username" required="required" />
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <form:password path="password" id="password" required="required" />
            </div>
            <div class="form-group">
                <label for="imagelink">Image Link:</label>
                <form:input path="imagelink" id="imagelink" required="required" />
            </div>
            <div class="button-group">
                <form:button class="btn">Save</form:button>
                <button type="reset" class="btn">Cancel</button>
            </div>
        </form:form>
        <a href="signup.jsp"><button class="btn back-btn">Back</button></a>
    </div>
</body>
</html>

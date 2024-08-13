<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IPL Auction</title>
    <style>
        :root {
            --primary-color: #18184A;
            --secondary-color: #4CAF50;
            --text-color: #333;
            --background-color: rgba(255, 255, 255, 0.9);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html, body {
            height: 100%;
            font-family: 'Segoe UI', Arial, sans-serif;
        }

        body {
            display: flex;
            flex-direction: column;
            background-image: url(https://wallpaperaccess.com/full/5846498.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
        }

        #nav {
            background-color: rgba(24, 24, 74, 0.9);
            padding: 15px 0;
            overflow: hidden;
        }

        .mnk {
            font-size: 24px;
            color: white;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
            vertical-align: middle;
        }

        #nav img {
            height: 40px;
            vertical-align: middle;
            margin-right: 10px;
        }

        .content {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }

        h1 {
            background-color: var(--background-color);
            color: var(--primary-color);
            width: 300px;
            border-radius: 20px;
            text-align: center;
            padding: 15px;
            font-size: 32px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            margin-bottom: 30px;
        }

        #but {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .btn {
            font-family: 'Segoe UI', Arial, sans-serif;
            font-size: 18px;
            padding: 15px 30px;
            margin: 10px 0;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 280px;
            text-decoration: none;
            text-align: center;
            color: var(--primary-color);
        }

        .btn-primary {
            background-color: var(--background-color);
        }

        .btn-primary:hover {
            background-color: var(--secondary-color);
            color: white;
            transform: translateY(-3px);
            box-shadow: 0 6px 8px rgba(0,0,0,0.2);
        }

        .btn-secondary {
            background-color: var(--secondary-color);
            color: white;
        }

        .btn-secondary:hover {
            background-color: #45a049;
            transform: translateY(-3px);
            box-shadow: 0 6px 8px rgba(0,0,0,0.2);
        }

        .signup-text {
            color: white;
            font-size: 18px;
            margin: 20px 0 10px;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.7);
        }

        .error-msg {
            color: #ff3333;
            font-style: italic;
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
            text-shadow: 1px 1px 2px rgba(0,0,0,0.5);
        }

        @media (max-width: 600px) {
            h1 {
                width: 90%;
                font-size: 28px;
            }

            .btn {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div id="nav">
        <marquee behavior="scroll" direction="left" loop="100" scrollamount="10">
            <img src="https://www.iplt20.com/assets/images/ipl-logo-new-old.png" alt="IPL Logo">
            <span class="mnk">WELCOME TO TATA IPL 2023</span>
        </marquee>
    </div>

    <div class="content">
        <h2 class="error-msg">${msg}</h2>

        <h1>
            <i>Player Auction</i>
        </h1>

        <div id="but">
            <a href="managementlogin.jsp" class="btn btn-primary">Login As Management</a>
            <a href="teamlogin.jsp" class="btn btn-primary">Login As Team</a>
            <a href="playerlogin.jsp" class="btn btn-primary">Login As Player</a>

            <p class="signup-text"><u>Don't have an account?</u></p>
            <a href="signup.jsp" class="btn btn-secondary">Sign Up</a>
        </div>
    </div>
</body>
</html>

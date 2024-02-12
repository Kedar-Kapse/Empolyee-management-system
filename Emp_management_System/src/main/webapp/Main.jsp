<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Management System</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            position: relative;
        }

        .container {
            text-align: center;
            margin: 0;
            padding: 0;
            position: fixed;
        }

        img {
            width: 100%;
            height: auto;
        }

        .text-overlay {
            position: absolute;
            top: 40%;
            left: 40%;
            transform: translate(-0%, -50%);
            color: white;
            font-size: 70px;
            font-weight: bold;
            right: 0;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
            z-index: 1; 
        }

        .button-container {
            position: fixed;
            text-align: right;
            top: 75%;
            left: 30%;
            right: 0;
            transform: translate(-30%, -50%);
            z-index: 1; 
        }

        .button-container button {
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 16px;
            cursor: pointer;
            background-color: transparent;
            border: none;
            text-decoration: none;
            color: #fff;
            transition: background-color 0.3s, color 0.3s;
        }

        .button-container button.login {
            border: 2px solid #ffbd03;
            border-radius: 5px;
        }

        .button-container button.signup {
            border: 2px solid #008CBA;
            border-radius: 5px;
        }

        .button-container button:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }
    </style>
</head>
<body>

<div class="container">
    <img src="https://za.mintgroup.net/wp-content/uploads/2022/04/corp4.jpg" alt="Description of your image">

    <div class="text-overlay">EMPLOYEE <br> MANAGEMENT <br> SYSTEM</div>

    <div class="button-container">
        <button class="login"><a href="Login" style="text-decoration: none; color: inherit;">Login</a></button>
        <button class="signup"><a href="Signup_page" style="text-decoration: none; color: inherit;">Sign Up</a></button>
    </div>
</div>

</body>
</html>

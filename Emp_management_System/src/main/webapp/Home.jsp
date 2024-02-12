<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EMPLOYEE MANAGEMENT SYSTEM</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            text-align: center;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-image: url('https://t3.ftcdn.net/jpg/01/19/67/02/240_F_119670247_HDccziQUuo2kFpaNiM22dIto5I8GPAWW.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff;
            position: relative;
        }

        .cta-container {
            margin-top: 20px;
            margin-left: -780px;
        }

        .cta-button {
            display: inline-block;
            padding: 10px 30px;
            font-size: 1.5em;
            text-decoration: none;
            background-color: white;
            color: black; 
            border-radius: 5px;
            transition: background-color 0.3s ease;
            margin: 5px;
        }

        .cta-button:hover {
            background-color: #3498db; 
            color: white;
        }

        .text-overlay {
            position: absolute;
            top: 60%;
            left: 40%;
            transform: translate(-99%, -145%);
            color: white;
            font-size: 70px;
            font-weight: bold;
            right: 10;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
            z-index: 1; 
        }

        .right-bottom-passage {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #87CEEB;
            color: white;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="text-overlay">
        EMPLOYEE <br>MANAGEMENT <br> SYSTEM
    </div>
    <div class="cta-container">
        <a class="cta-button" href="/AddEmployee">Add</a>
        <a class="cta-button" href="/ListAllData">View</a>
    </div>
    <div class="right-bottom-passage">
         Welcome to our Employee Management System where efficiency meets excellence. Our platform empowers you to seamlessly manage your workforce, streamline processes, and enhance productivity. Join us on the journey of simplifying employee management, making your organizational tasks smoother and more effective.
    </div>
    
</body>
</html>

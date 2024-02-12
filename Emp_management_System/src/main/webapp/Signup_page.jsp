<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 5px;
            overflow: hidden;
            color: white;
        }

        .background-image {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -50;
            background-image: url('https://img.freepik.com/premium-photo/blue-abstract-art-composition-empty-space-4k-background-illustration-3d-rendering_594417-837.jpg');
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .text-overlay1 {
            position: absolute;
            text-align: center;
            color: white;
            font-size: 2em;
            z-index: 1;
        }

        .container {
            position: relative;
            z-index: 2;
            text-align: right;
            top: 50%;
            left: 30%;
            margin: 20px auto;
            width: 30%;
            padding: 5px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 90px rgba(5, 5, 9, 0.2);
        }

        h2 {
            color: #007FFF;
            font-size: 2em;
            margin-bottom: 20px;
            text-align: center;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            color: #007FFF;
            margin-top: 10px;
            text-align: left;
        }

        input {
            margin: 10px 0;
            padding: 10px;
            width: 100%;
            box-sizing: border-box;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
            transition: border-color 0.3s ease;
        }

        input:focus {
            border-color: #405de6;
        }

        button {
            margin-top: 20px;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: red;
        }
        .text-overlay1 {
            position: absolute;
            top: 25%;
            left: 40%;
            transform: translate(-105%, -50%);
            color: white;
            font-size: 70px;
            font-weight: bold;
            right: 10;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
            z-index: 1; 
        }
         a.add {
         margin-top: 20px;
            padding: 10px;
            background-color: #405de6;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
    }
        .text-overlay {
            position: absolute;
            top: 50%;
            left: 40%;
            transform: translate(-62%, -50%);
            color: white;
            font-size: 70px;
            font-weight: bold;
            right: 10;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
            z-index: 1;
        }
    </style>
</head>

<body>

    <div class="background-image">
    </div>
	<div class="text-overlay"> WELCOME TO <br>EMPLOYEE MANAGEMENT <br> SYSTEM</div>
    <div class="container">
        <div class="success-message">
            
        </div>
        <h2>Sign in</h2>
        <form action="Signupsuccess" method="post">
           
            <label for="firstName">First Name</label>
            <input type="text" id="firstName" name="firstName" required pattern="[A-Za-z\s]{3,50}">

            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" name="lastName" required pattern="[A-Za-z\s]{3,50}">

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Password@123" required>

            <button type="submit">Sign in</button> <a href="Login"><button type="button"  style="padding: 7px 11px;">Login</button></a>
        </form>
    </div>
		 
</body>

</html>

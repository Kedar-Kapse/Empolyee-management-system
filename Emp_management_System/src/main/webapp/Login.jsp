<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Login Page</title>
    <style>
        body {
            background: url('https://img.freepik.com/premium-photo/blue-abstract-art-composition-empty-space-4k-background-illustration-3d-rendering_594417-837.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .login-container {
            background-color: rgba(255, 255, 255, 0.0);
            padding: 20px;
            color: black;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
            text-align: center;
            width: 300px;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            right: 290px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #dbdbdb;
            background-color: #fafafa;
            border-radius: 4px;
        }

        button {
            background-color: #3897f0;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .error-message {
            color: red;
            margin-top: 5px;
        }

        .text-overlay {
            position: absolute;
            top: 50%;
            left: 40%;
            transform: translate(-340%, -55%);
            color: white;
            font-size: 70px;
            font-weight: bold;
            right: 0;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.8);
            z-index: 1;
        }

        h2 {
            color: #007FFF;
        }

        .login-container label {
            color: #007FFF;
        }
    </style>

    <script>
        function validateForm() {
            var email = document.getElementById('email').value;
            var password = document.getElementById('password').value;

            if (email.trim() === '' || password.trim() === '') {
                document.getElementById('error-message').innerText = 'Please fill in all fields.';
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <div class="login-container">
        <div class="text-overlay">
            EMPLOYEE <br>MANAGEMENT <br> SYSTEM
        </div>
        <h2>Login</h2>
        <form action="/loguser" method="post" onsubmit="return validateForm()">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required> <br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <br>
            <button type="submit">Login</button>
            <div id="error-message" class="error-message"></div>
        </form>
         <a href="Signup_page"><button type="submit"  style="padding: 7px 11px;">Sign in</button></a>
    </div>
</body>
</html>

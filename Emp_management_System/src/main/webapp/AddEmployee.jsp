<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Employee</title>
</head>
<style>
body {
    font-family: Arial, sans-serif;
    background: url('https://t4.ftcdn.net/jpg/00/99/21/13/360_F_99211361_fYgBpx9VzoWxxuBBIO45CPkqhCr0QFSw.jpg') center center fixed;
    background-size: cover;
    margin: 0;
    padding: 0;
}

h1 {
    color: #333;
    text-align: center;
}

form {
    max-width: 300px;
    margin: 10px auto;
    background-color: #fff;
    padding: 10px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    margin-bottom: 8px;
    color: #007BFF; /* Updated label color */
}

input {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    box-sizing: border-box;
    border: 1px solid #ccc;
    border-radius: 4px;
}

input[type="submit"] {
    background-color: #007FFF;
    color: #fff;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

input[type="text"]:focus {
    border: 2px solid #4caf50;
}

h1 {
    color: white;
}

a.add {
    text-decoration: none;
    padding: 6px 25px;
    background-color: #007BFF;
    color: white;
    border-radius: 5px;
    display: inline-block;
    text-align: center;
    margin: 15px; /* Adjusted margin */
}

a.add:hover {
    background-color: #0056b3;
}

</style>
<body>
    <marquee direction="left" behavior="scroll" scrollamount="15"> <!-- Increased scrollamount -->
        <h1>Please Add The Infromation Of Employees.</h1>
    </marquee>
    <form action="Addsuccess" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required pattern="[A-Za-z\s]{3,50}"><br>

        <label for="city">City:</label>
        <input type="text" id="city" name="city" required pattern="[A-Za-z\s]{3,50}"><br>

        <label for="contact">Contact:</label>
        <input type="text" id="contact" name="contacts" required pattern="[0-9]{10}" title="Please enter a 10-digit phone number"><br>

        <label for="department">Department:</label>
        <input type="text" id="department" name="department" required pattern="[A-Za-z\s]{3,50}"><br>

        <label for="salary">Salary:</label>
        <input type="text" id="salary" name="Salary" required pattern="[0-9]+" title="Please enter a valid number for salary"><br>

        <input type="submit" value="Submit">

        <a class="add" href="ListAllData">View Data</a>
        <a class="add" href="Home">Home</a>
    </form>
</body>
</html>

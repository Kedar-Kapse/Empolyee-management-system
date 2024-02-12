<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
<style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    background-image: url('https://img.freepik.com/free-vector/network-mesh-wire-digital-technology-background_1017-27428.jpg'); /* Replace 'path/to/your/image.jpg' with the actual path to your image file */
    background-size: cover; 
    background-position: center; 
    background-repeat: no-repeat; 
    }

    h1 {
    	text-align : center;
        color: #007FFF;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #007FFF;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    a.delete {
        text-decoration: none;
        padding: 5px 10px;
        background-color: #dc3545; 
        color: white;
        border-radius: 3px;
    }

    a.delete:hover {
        background-color: #bd2130;
    }

    a.update {
        text-decoration: none;
        padding: 5px 10px;
        background-color: #28a745; 
        color: white;
        border-radius: 3px;
    }

    a.update:hover {
        background-color: #218838;
    }
    
    a.add {
        text-decoration: none;
        padding: 10px 10px;
        background-color: #007BFF; 
        color: white;
        border-radius: 5px;
        display: inline-block;
        margin-top: 0px;
        
        
    }

    a.add:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
  
    <h1>EMPLOYEE DETAILS</h1>
    <a class="add" href="AddEmployee">Add Employee</a>
    <a class="add" href="Home">Home</a>
    <table>
        <tr>
            <th>EMPLOYEE NAME</th>
            <th>EMPLOYEE CITY</th>
            <th>EMPLOYEE PHONE</th>
            <th>EMPLOYEE DEPARTMENT</th>
            <th>EMPLOYEE SALARY</th>
            <th>DELETE</th>
            <th>UPDATE</th>
        </tr>
        <c:forEach var="emp" items="${employeeList}">
            <tr>
                <td>${emp.name}</td>
                <td>${emp.city}</td>
                <td>${emp.department}</td>
                <td>${emp.contacts}</td>
                <td>${emp.salary}</td>
                <td>
                    <a class="delete" href='<c:url value="/delete/${emp.id}"/>'>Delete</a>
                </td>
                <td>
                    <a class="update" href='<c:url value="/edit/${emp.id}"/>'>Update</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>

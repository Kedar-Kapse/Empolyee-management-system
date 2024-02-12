<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
 body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    text-align: center;
    background-image: url('https://www.nicepng.com/png/detail/68-682172_creative-backgrounds-png-banner-royalty-free-stock-creative.png'); 
    background-size: cover; 
    background-position: center; 
    background-repeat: no-repeat; 
}


  h1 {
    color: white;
  }

  form {
    background-color: #fff;
    max-width: 400px;
    margin: 20px auto;
    padding: 10px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  label {
    display: block;
    margin: 10px 0 5px;
    font-weight: bold;
    color: #007FFF;
  }

  input {
    width: 100%;
    padding: 8px;
    margin-bottom: 10px;
    box-sizing: border-box;
  }

  button {
    background-color: #007FFF;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
  }

  button:hover {
    background-color: #45a049;
  }
</style>
<body>
      <h1>EDIT PAGE</h1>
      <h2> We Are Updating The Datails Of ${empp.name}</h2>
      <form action="/Update/${id}" method="post">
      
      <label for="name"> NAME</label>
       <input type="text" id ="name" name="name" value="${empp.name}" required pattern="[A-Za-z\s]{3,50}">
      <br> 
      <label for="city"> CITY</label>
      <input type="text" id ="city" name="city" value="${empp.city}" required pattern="[A-Za-z\s]{3,50}">
      <br>
      <label for="contacts"> PHONE</label>
      <input type="text" id ="contacts" name="contacts" value="${empp.contacts}" required pattern="[0-9]{10}" title="Please enter a 10-digit phone number">
       <br>
      <label for="salery"> salary</label>
      <input type="text" id ="salary" name="salary" value="${empp.salary}" required pattern="[0-9]+" title="Please enter a valid number for salary">
       <br> 
      <label for="department"> department</label>
      <input type="text" id ="department" name="department" value="${empp.department}">
      
       
       
       
       <button type="submit">Update</button>
      
      
      </form>
</body>
</html>
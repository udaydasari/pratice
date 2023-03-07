<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>EMS Login</title>

</head>

<style>
h1{
background-color: #4CAF50; 
  list-style-type: none;
  color: white;
  text-align: center;
  margin: 0;
  padding: 0; 
  height: 2cm;
  line-height: 2cm;
font-family: 'Times New Roman', Times, serif;
}
body{
background-image: url("http://www.projekt92.pk/images/upload/1417520731_vip-event.jpg");
}
input[type=text], select {
  text-align:left;
  width: 300px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  text-align: left;
  width: 300px;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}


input[type=submit] {
  width: 300px;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  text-align: center;
  margin: auto;
  width: 300px;
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>

<body>

	<h1>Event Management System</h1> <br><br>
	
	
	
	<div>
  <form action="LoginUser" name="myform" >

    <p><i class="fa fa-vcard-o" style="font-size:24px"><b> Welcome</b></i></p><br>    
    <label for="uid"><i class="fa fa-user" style="font-size:16px"> Username</i></label>
    <br>
    <input type="text" id="uid" name="username" placeholder="Username" required>
    <br><br>
    
    <label for="pwd"><i class="fa fa-unlock-alt" style="font-size:16px"> Password</i></label>
    <br>
    <input type="password" id="pwd" name="password" placeholder="Password" required>
    
    <br><br>
    
    <%
    String message = (String)request.getAttribute("message");
    if(message.equals("error"))
    {
    %>
    <label style="color:red;">Incorrect username or password <br> please try again ...</label>
    <% } %>
    
    <br>


    <input type="submit" value="LOG IN" >
  </form>
</div>
	
</body>
</html>
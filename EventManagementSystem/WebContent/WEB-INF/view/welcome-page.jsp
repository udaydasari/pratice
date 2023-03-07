<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Welcome To Event Management</title>
</head>
<style>
h1{
  margin: auto;
  width: 50%;
  border: solid green;
  padding: 10px;
  text-align: center; 
  font-family: 'Times New Roman', Times, serif;
} 
body {
font-family: Arial, Helvetica, sans-serif;
background-image:url("https://thumbs.dreamstime.com/b/event-management-project-creation-development-small-large-scale-personal-corporate-events-207196709.jpg");
}

.navbar {
  overflow: hidden;
  background-color: #333;
  font-family: Arial, Helvetica, sans-serif;
  width: 100%;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.navbar a:hover {
  background-color: #000;
}


.navbar a:hover, .dropdown:hover .dropbtn, .dropbtn:focus {
  background-color: #04AA6D;
}


.show {
  display: block;
}

.active {
  background-color: #04AA6D;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: inline-block;
  }
}
</style>
<body>
		<h1>Event Management System</h1><br>

<div class="navbar">

	<c:url var="WelcomeLink" value="/events/WelcomePage" ></c:url>
	<c:url var="EventListLink" value="/events/list" ></c:url>
	<c:url var="AddEventLink" value="/events/showFormForAdd" ></c:url>
	<c:url var="LoginPageLink" value="/events/firstpage" ></c:url>

  <a class="active" href="${WelcomeLink}"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="${EventListLink}"><i class="fa fa-list"></i> Event List</a>
  <a href="${AddEventLink}"><i class="fa fa-paperclip" aria-hidden="true"></i> Add Event</a> 
  
  <a href="${LoginPageLink}" style="float:right">Logout &nbsp;&nbsp;<i class="fa fa-sign-out"></i></a>
</div>
<br><br>
Welcome...!

</body>
</html>
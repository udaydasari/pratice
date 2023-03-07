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
background-image:url("https://spotme.com/wp-content/uploads/2020/10/AdobeStock_333205002-scaled.jpeg");

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

.rectangle {
  height: 4cm;
  width: 6cm;
  float:left;
  background-color: #C0C0C0;
  border-radius: 20px;
  padding-left:20px;
  padding-top:10px;
  margin-left:15px;
  margin-bottom:20px;
  font-weight:bold;
  border-style: solid;
  transition: transform .3s;
  text-decoration: none;
  color: black;
  line-height: 1.7;
}

.rectangle:hover {
	transform: scale(1.1);
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
	

  <a href="${WelcomeLink}"><i class="fa fa-fw fa-home"></i> Home</a>
  <a class="active" href="${EventListLink}"><i class="fa fa-list"></i> Event List</a>
  <a href="${AddEventLink}"><i class="fa fa-paperclip" aria-hidden="true"></i> Add Event</a> 
  
  <a href="${LoginPageLink}" style="float:right">Logout &nbsp;&nbsp;<i class="fa fa-sign-out"></i></a>
</div>
<br><br>
		
		<div id="container">
			<div id="content">
			
			
			
			<c:forEach var="event" items="${events}">
			
			<c:url var="ShowEventLink" value="/events/showSingleEvent" >
							<c:param name="eventId" value="${event.id}" />
						</c:url>
			
			<a href="${ShowEventLink}" class="rectangle">
			
				${event.eventName}<br>
				Organizer:&nbsp; ${event.organiser}<br>
				At:&nbsp;${event.eventVenue}<br>
				In:&nbsp;${event.startDate}<br>
				Status:&nbsp;${event.status}<br>
				
			</a>
			
			
			</c:forEach>
				
			</div>
		</div>
		
	
</body>
</html>
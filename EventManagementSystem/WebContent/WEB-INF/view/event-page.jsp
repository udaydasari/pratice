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
background-image:url("https://meetinghand.com/files/blog//0ff0f7976614eeaa20c5c830d8653ca2.jpg");

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

.forform {
  margin: auto;
  width: 50%;
  border-radius: 25px;
  background-color: #f2f2f2;
  padding: 20px;
}

.bld{
font-weight:bold;
}

button[type=button] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-weight:bold;
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
  <a href="${EventListLink}"><i class="fa fa-list"></i> Event List</a>
  <a href="${AddEventLink}"><i class="fa fa-paperclip" aria-hidden="true"></i> Add Event</a> 
  
  <a href="${LoginPageLink}" style="float:right">Logout &nbsp;&nbsp;<i class="fa fa-sign-out"></i></a>
</div>

	<div id="container" class="forform">
	
						<c:url var="updateLink" value="/events/showFormForUpdate" >
							<c:param name="eventId" value="${event.id}" />
						</c:url>
						
						<c:url var="deleteLink" value="/events/deleteEvent" >
							<c:param name="eventId" value="${event.id}" />
						</c:url>
						
						
						<label class="bld">Event Name:&nbsp;</label>
							<label>${event.eventName}</label> 
							  <br><br>
					
	
							 
							<label class="bld">Organizer:&nbsp;</label>
							
							<label>${event.organiser}</label>  
							
							<br><br>
							
						
						
							
						 
						 
							 <label class="bld">Event Venue:&nbsp;</label>
							 <label>${event.eventVenue}</label> 
							 <br><br>
							 
						 
						 
							 <label class="bld">Start Date:&nbsp;</label>
							 <label>${event.startDate}</label> 
							 <br><br>
							 
						 
						 
							 <label class="bld">End Date:&nbsp;</label>
							 <label>${event.endDate}</label> 
							 <br><br>
							 
						 
						 
							 <label class="bld">Description:&nbsp;</label>
							 <label>${event.description}</label> 
							 <br><br>
							
						 
						 
							 <label class="bld">Event Type:&nbsp;</label>
							 <label>${event.eventType}</label> 
							 <br><br>
							 
						 
						 
							 <label class="bld">Budget:&nbsp;</label>
							 <label>${event.budget}</label> 
							 <br><br>
							 
						 
						 
							 <label class="bld">Status:&nbsp;</label>
							  <label>${event.status}</label> 
							 <br><br>
							 
							
							 
							 <a href="${updateLink}"><button type=button >Update</button></a>
							 <br>
							 <a href="${deleteLink}"><button type=button style="background-color: #CD5C5C;">Delete</button></a>
							 
	
	
	
	</div>

</body>
</html>
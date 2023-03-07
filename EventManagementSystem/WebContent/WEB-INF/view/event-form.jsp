<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>EMS Event Form</title>

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

.fortextinput{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
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

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: inline-block;
  }
}
</style>

</head>
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
		
			<form:form action="saveEvent" modelAttribute="event" method="POST">
				<form:hidden path="id"/>
				
				
							
						
						
							<label>Event Name:&nbsp;</label>
							 <form:input cssClass="fortextinput" path="eventName" required="required"/> 
							 
							 <label>Organizer:&nbsp;</label><i class="fa fa-id-badge"> </i>
							<form:input cssClass="fortextinput" path="organiser" required="required"/>
						 
						 
							 <label>Event Venue:&nbsp;</label> <i class="fa fa-map-marker"> </i>
							 <form:input cssClass="fortextinput"  path="eventVenue" required="required"/> 
						 
						 
							 <label>Start Time:&nbsp;(YYYY-MM-DD hh:mm:ss)</label> 
							 <form:input cssClass="fortextinput"  path="startDate" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])\s(0[0-9]|1[0-9]|2[0-3])(:[0-5][0-9]){2}" required="required"/> 
						 
						 
							 <label>End Time:&nbsp;(YYYY-MM-DD hh:mm:ss)</label> 
							 <form:input cssClass="fortextinput"  path="endDate" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])\s(0[0-9]|1[0-9]|2[0-3])(:[0-5][0-9]){2}"  required="required"/> 
						 
						 
							 <label>Description:&nbsp;</label> 
							 <form:textarea cssClass="fortextinput"  path="description" required="required"/> 
						 
						 
							 <label>Event Type:&nbsp;</label> 
							 <form:input cssClass="fortextinput"  path="eventType" required="required"/> 
						 
						 
							 <label>Budget:&nbsp;</label> <i class="fa fa-inr"> </i>
							 <form:input cssClass="fortextinput"  path="budget" required="required"/>  
						 
						
						
						 
							 <label></label> 
							 <input type="submit" value="SUBMIT"/> 
						 
					
					
			
			</form:form>
		
		
		</div>

</body>
</html>
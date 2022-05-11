<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	String bookingid = request.getParameter("bookingid");
	String cusid = request.getParameter("cusid");
	String venue = request.getParameter("venue");
	String date = request.getParameter("date");
	String eventtype = request.getParameter("eventtype");
	String capacity = request.getParameter("capacity");
	
	
	
	%>
	<h1>Delete Booking</h1>
	
	<form action="delete"  method="POST">

			<label for ="text" id="lebel" >Booking ID</label>
		<input type="text" id="text" name= "bookingid" value="<%=bookingid %>" readonly />
		<br><br>
	<label for ="text" id="lebel" >Customer ID</label>
	<input type="text" id="text" name="cusid" value="<%=cusid %>" readonly/>
	<br><br>
	<label for ="text" id="lebel" >Venue</label>
	<input type="text" id="text" name="venue" value="<%=venue%>" readonly/>	
	<br><br>
	<label for ="text" id="lebel" >Date</label>
	<input type="text" id="text" name= "date" value="<%=date %>" readonly/>
	
	<label for ="text" id="lebel" >Event Type</label>
	<input type="text" id="text" name="event" value="<%=eventtype %>" readonly/>
	<br><br>
	<label for ="text" id="lebel" >Capacity</label>
	<input type="text" id="text" name="capacity" value="<%=capacity %>" readonly/>
	<br><br>
	
	 <input type="submit" value="Delete Boooking" id="btn" name="submit">
	</form>


</body>
</html>
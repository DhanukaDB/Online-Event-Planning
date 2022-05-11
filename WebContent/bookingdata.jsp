<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 	
 	<c:forEach var="book" items="${BookingDetails}">
 	
 	<c:set var="bookingid" value="${book.bookingid}"/>
 	<c:set var="cusid" value="${book.cusid}"/>
 	<c:set var="venue" value="${book.venue}"/>
 	<c:set var="date" value="${book.date}"/>
 	<c:set var="eventtype" value="${book.eventtype}"/>
 	<c:set var="capacity" value="${book.capacity}"/>
 	
 	
 	${book.bookingid}
 	${book.cusid}
 	${book.venue}
 	${book.date }
 	${book.eventtype }
 	${book.capacity }
 	 
 	</c:forEach>
 	
 <c:url value ="updatebooking.jsp" var="bookingupdate">
 
 		<c:param name = "bookingid" value = "${bookingid}"/>
 		<c:param name = "cusid" value = "${cusid} "/>
 		<c:param name = "venue" value = "${venue}"/>
 		<c:param name = "date" value = "${date}"/>
 		<c:param name = "eventtype" value = "${eventtype}"/>
 		<c:param name = "capacity" value = "${capacity}"/>
 		
 </c:url>
 <a href="${bookingupdate}">
<input type="button" value="update booking" id="btn" name="update">
</a>
<br>
<c:url value ="deletebooking.jsp" var="deletebooking">

	<c:param name = "bookingid" value = "${bookingid}"/>
 		<c:param name = "cusid" value = "${cusid} "/>
 		<c:param name = "venue" value = "${venue}"/>
 		<c:param name = "date" value = "${date}"/>
 		<c:param name = "eventtype" value = "${eventtype}"/>
 		<c:param name = "capacity" value = "${capacity}"/>


 </c:url>
 <a href="${deletebooking}">
<input type="button" value="delete booking" id="btn" name="delete">
</a>
 	



</body>
</html>
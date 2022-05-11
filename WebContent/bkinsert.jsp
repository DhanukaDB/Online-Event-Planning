<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>







 <form action="insert"  method="POST">

	<label for ="text" id="lebel" >Customer ID</label>
	<input type="text" id="text" name= "cusid" placeholder="1276D" />
	<br><br>
	<label for ="text" id="lebel" >Venue</label>
	<input type="text" id="text" name="venue" placeholder="Cagiso Lake Side"/>
	<br><br>
	<label for ="text" id="lebel" >Date</label>
	<input type="text" id="text" name="date" placeholder="12/May/2022"/>	
	
	<br><br>
	<label for ="text" id="lebel" >Event Type</label>
	<input type="text" id="text" name= "event" placeholder="Wedding" />
	
	<label for ="text" id="lebel" >Capacity</label>
	<input type="text" id="text" name="capacity" placeholder="300"/>
	<br><br>
	
	 <input type="submit" value="Continue to Boooking" id="btn" name="submit">
	
	</form> 
	 
<!--  	
	Venue: <input type="text" name="venue"/> - 
<select name="Hotels[]" multiple="multiple">
    <option value="Hotel cf">Hotel Califonia</option>
    <option value="Sha plaza">Shadhab Plaza</option>
    <option value="Milan Resi">Milano Resi</option>
    <option value="AB villa">AudiBay villas</option>
    <option value="Hof">Heart of NuwaraEli</option>
</select>
	-->
	
	



</body>
</html>
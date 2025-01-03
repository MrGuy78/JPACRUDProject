<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Geology Anew!</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
  <form action= "addMt.do" method= "POST">
  <div class="container-fluid">
	<h1>Add New Mountain</h1>
	<p>
	Name: <input type= "text" name= "mountainName" value= "${newMountain.mountainName}" required /><br>
	Elevation: <input type= "text" name= "elevation" value= "${newMountain.elevation}" /><br>
	First Summit: <input type= "date" name= "firstSummit" value= "${newMountain.firstSummit}" /><br>
	My Summit: <input type= "date" name= "mySummit" value= "${newMountain.mySummit}" /><br>
	Location: <input type= "text" name= "location" value= "${newMountain.location}" /><br>
	Deaths Upon: <input type= "text" name= "deathsUpon" value= "${newMountain.deathsUpon}" /><br>
	<button type= "submit" value= "Add Mountain">Add Mountain</button>
	</p>
  </div>
  </form>

<div>
<a href="home.do" class= "button-link">
	<button type= "button" class= "button">Home</button></a>
</div>

<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
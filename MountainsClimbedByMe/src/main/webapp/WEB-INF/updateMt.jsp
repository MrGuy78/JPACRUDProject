<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update MountainClimbed</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
  <form action= "updateMt.do" method= "POST">
  <div class="container-fluid">
	<h1>Let's get those facts straight, shall we?</h1>
	<p>
		  <input type="hidden" name="id" value="${updatingMountain.id}">
	Name: <input type= "text" name= "mountainName" value= "${updatingMountain.mountainName}" required /><br>
	Elevation: <input type= "text" name= "elevation" value= "${updatingMountain.elevation}" /><br>
	First Summit: <input type= "date" name= "firstSummit" value= "${updatingMountain.firstSummit}" /><br>
	My Summit: <input type= "date" name= "mySummit" value= "${updatingMountain.mySummit}" /><br>
	Location: <input type= "text" name= "location" value= "${updatingMountain.location}" /><br>
	Deaths Upon: <input type= "text" name= "deathsUpon" value= "${updatingMountain.deathsUpon}" /><br>
	<button type= "submit" value= "Update Mountain">Update Mountain</button>
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
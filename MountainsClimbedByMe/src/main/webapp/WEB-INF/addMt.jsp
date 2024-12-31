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
  <form action= "newMt.do" method= "POST">
  <div class="container-fluid">
	<h1>Add New Mountain</h1>
	<p>
	Name: <input type= "text" name= "Mountain Name" value= "${newMountain.mountainName}" required /><br>
	Elevation: <input type= "text" name= "Description" value= "${newMountain.elevation}" /><br>
	First Summit: <input type= "date" name= "First Summit" value= "${newMountain.firstSummit}" /><br>
	My Summit: <input type= "date" name= "My Summit" value= "${newMountain.mySummit}" /><br>
	Location: <input type= "text" name= "Location" value= "${newMountain.location}" /><br>
	Deaths Upon: <input type= "text" name= "Deaths Upon" value= "${newMountain.deathsUpon}" /><br>
	<button type= "submit" value= "Add Mountain">Add Mountain</button>
	</p>
  </div>
  </form>
<button>
<a href="home.do">Home</a>
</button>
<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
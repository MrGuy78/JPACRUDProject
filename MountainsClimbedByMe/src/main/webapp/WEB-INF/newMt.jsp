<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Mountain in Database</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
  <form action= "addMt.do" method= "POST"></form>
  <div class="container-fluid">
  <h2>Congrats on your latest summit!</h2>
	<ul>
	  <li>ID: ${newMountain.id}</li>
	  <li>Name: ${newMountain.mountainName}</li>
	  <li>Elevation: ${newMountain.elevation}</li>
	  <li>First Summit: ${newMountain.firstSummit}</li>
	  <li>My Summit: ${newMountain.mySummit}</li>
	  <li>Location: ${newMountain.location}</li>
	  <li>Deaths Upon: ${newMountain.deathsUpon}</li>
	</ul>
  </div>
  </form>
<button>
<a href="home.do">Home</a>
</button>
<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
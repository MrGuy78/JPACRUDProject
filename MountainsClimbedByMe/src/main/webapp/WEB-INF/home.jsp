<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mountains Climbed By Me</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
  <div class="container-fluid">
	<h1>A random assortment of mountains atop of which I've stood.</h1>
  </div>
<div class="container-fluid">
  <table class="table table-striped table-hover">
    <thead class="table-primary">
    <tr>
      <td>ID</td>
      <td>Name</td>
      <td>Elevation (ft)</td>
      <td>First Summit</td>
      <td>My Summit</td>
      <td>Location</td>
      <td>Deaths Upon</td>
    </tr>
	</thead>
	<tbody>
	<c:forEach items="${showList}" var="mountainClimbed">
	<tr>
	  <td><a href="getMountain.do?showId=${mountainClimbed.id}">${mountainClimbed.id}</a></td>
	  <td><a href="getMountain.do?showId=${mountainClimbed.id}">${mountainClimbed.mountainName}</a></td>	  <td>${mountainClimbed.elevation}</td>
	  <td>${mountainClimbed.firstSummit}</td>
	  <td>${mountainClimbed.mySummit}</td>
	  <td>${mountainClimbed.location}</td>
	  <td>${mountainClimbed.deathsUpon}</td>
	</tr>
	</c:forEach>
	</tbody>
  </table>
</div>

<div>
	<a href="addMt.do" class= "button-link">
	<button type= "button" class= "button">Add a Mt</button></a>
</div>

<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>

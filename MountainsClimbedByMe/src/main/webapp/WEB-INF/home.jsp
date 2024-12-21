<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mountains Climbed By Me</title>
</head>
<body>
	<h1>A random assortment of mountains atop of which I've stood.</h1>
	
<div>
  <table class="table table-striped table-hover">
    <thead class="table-primary">
    <tr>
      <td>ID</td>
      <td>Name</td>
      <td>Elevation</td>
      <td>First Summit</td>
      <td>My Summit</td>
      <td>Location</td>
      <td>Deaths Upon</td>
    </tr>
	</thead>
	<tbody>
	<c:forEach items="${showList}" var="mountainClimbed">
	<tr>
	  <td><a href=""</td>
	  <td>${mountainClimbed.name}</td>
	  <td>${mountainClimbed.elevation}</td>
	  <td>${mountainClimbed.firstSummit}</td>
	  <td>${mountainClimbed.mySummit}</td>
	  <td>${mountainClimbed.location}</td>
	  <td>${mountainClimbed.deathsUpon}</td>
	  <td>${}</td>
	  <td>${}</td>
	</tr>
	</c:forEach>
	</tbody>
  </table>
</div>
</body>
</html>

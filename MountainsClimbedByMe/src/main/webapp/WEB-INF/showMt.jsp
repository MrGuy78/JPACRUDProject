<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your chosen mountain</title>
</head>
<body>
	<a href="getMountain.do">Home</a>

<c:choose>
  <c:when test="${empty mountainClimbed}">
	<h3>No Mountain Here (Kansas?)</h3>
  </c:when>
    <otherwise>
      <div>
		<h2>${mountainClimbed.mountainName}</h2>
		<ul>
		  <li>${mountainClimbed.id}</li>
		  <li>${mountainClimbed.elevation}</li>
		  <li>${mountainClimbed.firstSummit}</li>
		  <li>${mountainClimbed.mySummit}</li>
		  <li>${mountainClimbed.location}</li>
		  <li>${mountainClimbed.deathsUpon}</li>
		</ul>
	</div>
	</otherwise>
</c:choose>



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
            
<!DOCTYPE html>
<html>
<head>
<meta charset= "UTF-8">
<title>Your chosen mountain</title>
<jsp:include page="bootstrapHeader.jsp"></jsp:include>
</head>
<body>
  <div>
	<button>
	<a href= "home.do">Home</a>
	</button>
 </div>
      <div class="container-fluid">
		<h2>${mountainClimbed.mountainName}</h2>
		<ul>
		  <li>ID #: <strong>${mountainClimbed.id}</strong></li>
		  <li>Elevation (ft): <strong>${mountainClimbed.elevation}</strong></li>
		  <li>First summit date: <strong>${mountainClimbed.firstSummit}</strong></li>
		  <li>My summit date: <strong>${mountainClimbed.mySummit}</strong></li>
		  <li>GPS: <strong>${mountainClimbed.location}</strong></li>
		  <li>Deaths on the Mt: <strong>${mountainClimbed.deathsUpon}</strong></li>
		</ul>
	</div>
<button>
<a href= "updateMt.do?showId=${mountainClimbed.id}">Update</a>
</button>
<form action="deleteMt.do" method="POST">
    <input type="hidden" name="showId" value="${mountainClimbed.id}" />
    <button type="submit">Delete</button>
</form>

<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
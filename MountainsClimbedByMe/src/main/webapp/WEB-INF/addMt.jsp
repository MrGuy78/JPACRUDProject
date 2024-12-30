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
	Name: <input type= "text" name= "Name" required /><br>
	Elevation: <input type= "text" name= "Description" /><br>
	First Summit: <input type= "text" name= "First Summit" /><br>
	My Summit: <input type= "text" name= "My Summit" /><br>
	Location: <input type= "text" name= "Location" /><br>
	Deaths Upon: <input type= "text" name= "Deaths Upon" /><br>
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
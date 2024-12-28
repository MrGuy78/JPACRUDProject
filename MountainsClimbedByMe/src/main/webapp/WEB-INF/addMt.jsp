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
	<h1>a mountain</h1>
	<p>
	Name: <input type= "text" name= "Name" required><br>
	Elevation: <input type= "text" name= "Description"><br>
	First Summit: <input type= "text" name= "First Summit"><br>
	My Summit: <input type= "text" name= "My Summit"><br>
	Location: <input type= "text" name= "Location"><br>
	Deaths Upon: <input type= "text" name= "Deaths Upon"><br>
	<input type= "submit" value= "Add Mountain" />
	</p>
	</form>

<a href="home.do">Home</a>
<jsp:include page="bootstrapFooter.jsp"></jsp:include>
</body>
</html>
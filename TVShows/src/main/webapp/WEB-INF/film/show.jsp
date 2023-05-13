<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Details</title>
</head>
<body>

<c:choose>
	<c:when test="${not empty tvShow}">
		<h1>Show Details</h1>
		<div>
			<h4>${tvShow.id}</h4>
			<h4>${tvShow.name}</h4>
			
		</div>
	</c:when>
	<c:otherwise>
		<h1>Show not found</h1>
	</c:otherwise>
</c:choose>
	
</body>
</html>

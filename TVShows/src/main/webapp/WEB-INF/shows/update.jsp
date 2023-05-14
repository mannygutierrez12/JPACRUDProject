<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All TV Shows</title>
</head>
<body>
    <h1>All TV Shows</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Length (min)</th>
                <th>Number of Seasons</th>
                <th>Category</th>
                <th>Where to Stream</th>
                <th>Recommended By</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${shows}" var="show">
                <tr>
                    <td>${show.id}</td>
                    <td>${show.name}</td>
                    <td>${show.length}</td>
                    <td>${show.numberOfSeasons}</td>
                    <td>${show.category}</td>
                    <td>${show.whereToStream}</td>
                    <td>${show.recommendedBy}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <a href="index.do">Back to Home</a>
</body>
</html>

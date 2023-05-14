<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All TV Shows</title>
    <style>
        body {
            background-color: lightblue;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        
        table {
            border-collapse: collapse;
            width: 80%;
            max-width: 800px;
            margin: 20px;
            background-color: white;
            border: 1px solid #ccc;
        }
        
        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ccc;
        }
        
        th {
            background-color: #f2f2f2;
        }
        
        a {
            margin-top: 20px;
            text-decoration: none;
            color: #333;
            font-weight: bold;
        }
        
        a:hover {
            text-decoration: underline;
        }
    </style>
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

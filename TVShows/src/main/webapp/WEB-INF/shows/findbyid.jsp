<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Find TV Show by ID</title>
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
        
        .option-box {
            background-color: white;
            padding: 20px;
            margin-bottom: 10px;
            border-radius: 5px;
            width: 300px;
        }
        
        form {
            margin-bottom: 10px;
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
    <h1>Find TV Show by ID</h1>
    <div class="option-box">
        <form action="findShowById.do" method="get">
            <label for="showId">Enter ID:</label>
            <input type="number" id="showId" name="id" required><br>
            <input type="submit" value="Find" class="btn btn-primary">
        </form>
    </div>
    
    <h2>Show Details</h2>
   
    <c:choose>
        <c:when test="${not empty show}">
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
                    <tr>
                        <td>${show.id}</td>
                        <td>${show.name}</td>
                        <td>${show.length}</td>
                        <td>${show.numberOfSeasons}</td>
                        <td>${show.category}</td>
                        <td>${show.whereToStream}</td>
                        <td>${show.recommendedBy}</td>
                    </tr>
                </tbody>
            </table>
            <a href="index.do">Back to Home</a>
        </c:when>
        <c:otherwise>
            <p>The show was not found.</p>
            <a href="addShow.do">Add New Show</a>
        </c:otherwise>
    </c:choose>
</body>
</html>

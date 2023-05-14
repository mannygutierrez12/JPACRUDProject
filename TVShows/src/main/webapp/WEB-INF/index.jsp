<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>TV Show App</title>
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
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background-color: white;
            padding: 20px;
            margin-bottom: 10px;
            border-radius: 5px;
            width: 300px;
        }
        
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <h1>Welcome to TV Show App</h1>
    
     <div class="option-box">
        <form action="findShowById.do" method="get">
            <label for="findId">Find Show By Id:</label>
            <input type="number" id="findId" name="id" required>
            <input type="submit" value="Find Show">
        </form>
    </div>
    
    <div class="option-box">
        <form action="allShows.do" method="get">
            <input type="submit" value="View All Shows">
        </form>
    </div>
    
    <div class="option-box">
        <form action="addShow.do" method="get">
            <input type="submit" value="Add New Show">
        </form>
    </div>
    
    <div class="option-box">
        <form action="updateShowForm.do" method="get">
            <label for="updateId">Enter ID:</label>
            <input type="number" id="updateId" name="id" required>
            <input type="submit" value="Update Show">
        </form>
    </div>
    
    <div class="option-box">
        <form action="deleteShowForm.do" method="get">
            <input type="submit" value="Delete Show">
        </form>
    </div>
    
   
</body>
</html>

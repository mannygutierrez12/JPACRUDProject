<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Add TV Show</title>
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
    </style>
</head>
<body>
    <h1>Add TV Show</h1>
    <div class="option-box">
        <form action="addShow.do" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br>
            
            <label for="length">Length (min):</label>
            <input type="number" id="length" name="length" required><br>
            
            <label for="numberOfSeasons">Number of Seasons:</label>
            <input type="number" id="numberOfSeasons" name="numberOfSeasons" required><br>
            
            <label for="category">Category:</label>
            <input type="text" id="category" name="category" required><br>
            
            <label for="whereToStream">Where to Stream:</label>
            <input type="text" id="whereToStream" name="whereToStream" required><br>
            
            <label for="recommendedBy">Recommended By:</label>
            <input type="text" id="recommendedBy" name="recommendedBy" required><br>
            
            <input type="submit" value="Add" class="btn btn-primary">
        </form>
    </div>
    <a href="index.do">Back to Home</a>
</body>
</html>

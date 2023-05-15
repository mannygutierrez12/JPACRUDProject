<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Update TV Show</title>
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
    <h1>Update TV Show</h1>
    <div class="option-box">
        <form action="updateShow.do" method="post">
        
        	<label for="name">ID:</label>
            <input type="text" name="showId" required><br>
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br>
            
            <label for="length">Length (in mins):</label>
            <input type="number" id="length" name="length"><br>
            
            <label for="numberOfSeasons">Number of Seasons:</label>
            <input type="number" id="numberOfSeasons" name="numberOfSeasons"><br>
            
            <label for="category">Category:</label>
            <input type="text" id="category" name="category"><br>
            
            <label for="whereToStream">Where to Stream:</label>
            <input type="text" id="whereToStream" name="whereToStream" required><br>
            
            <label for="recommendedBy">Recommended By:</label>
            <input type="text" id="recommendedBy" name="recommendedBy" required><br>
            
            <input type="submit" value="Update">
        </form>
    </div>
    <a href="index.do">Back to Home</a>
</body>
</html>

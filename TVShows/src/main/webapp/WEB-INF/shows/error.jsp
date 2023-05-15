<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Error</title>
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

        .error-box {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            width: 300px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="error-box">
        <h1>Error: The TV show ID does not exist in the database</h1>
        <p><a href="index.do">Go back to the main menu</a></p>
    </div>
</body>
</html>
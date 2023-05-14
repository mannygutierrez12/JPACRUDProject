<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Login</title>
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
        
        .login-box {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            width: 300px;
            text-align: center;
        }
        
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        
        .submit-btn {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }
        
        .submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="login-box">
        <h2>Login</h2>
        <form action="login.do" method="post">
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <input type="submit" value="Login" class="submit-btn">
        </form>
    </div>
</body>
</html>

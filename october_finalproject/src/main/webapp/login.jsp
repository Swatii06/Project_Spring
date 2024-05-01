<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style type="text/css">
 body {
    height: 100vh; 
    background: linear-gradient(to top, #9933ff 0%, #669999 100%);
}
body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
    }

    form {
      max-width: 400px;
      margin: 20px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px purple;
    }

    input {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    button {
      background-color: purple;
      color: #fff;
      padding: 10px 15px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
      margin-left: 170px;
    }
</style>
</head>
<body>
<form action="login" method="post">
Email: <input type="email" name=email><br>
Password: <input type="password" name="password"><br>
<button type="submit">Login</button>
</form>
</body>
</html>
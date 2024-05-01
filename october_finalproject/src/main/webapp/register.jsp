<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<style type="text/css">

    body {
    height: 100vh; 
    background: linear-gradient(to top, #9933ff 0%, #669999 100%);
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
      width: 80px;
    }
    a{
      background-color: purple;
      color: #fff;
      padding: 10px 15px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
       margin-left: 730px;
       text-decoration: none;
        width: 80px;
    }
</style>
</head>
<body>

<form action="register" method="post">
Name: <input type="text" name=name><br>
Email: <input type="email" name=email><br>
Phone No: <input type="text" name=phone><br>
Password: <input type="password" name="password"><br>
Confirm Password: <input type="password" name="cpassword"><br>
<button type="submit">Register</button>


</form>
<a href="login.jsp">Login</a>
</body>
</html>
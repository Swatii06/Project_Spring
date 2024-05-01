<%@page import="com.october.web.model.Experience"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
 body {
    height: 100vh; 
    background: linear-gradient(to top, #9933ff 0%, #669999 100%);
}
form {
      margin-top: 20px;
      display: inline-block;
      text-align: left;
      max-width: 400px;
      width: 100%;
    }

    form label {
      display: block;
      margin-bottom: 5px;
    }

    form input {
      width: calc(100% - 16px);
      padding: 8px;
      box-sizing: border-box;
      margin-bottom: 10px;
    }

    form button {
      width: 20%;
      padding: 10px;
      background-color: black;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }


</style>
</head>
<body>
<c:set var="ob" value="${emp_data}" />

<form action="/edit/${ob.srno }" method="post">
    SrNo <input type="hidden" value=${ob.srno } name=srno>
    Company Name <input type="text" value=${ob.companyname } name=companyname>
    Role <input type="text" value=${ob.role } name=role>
    Joining Date <input type="date" value=${ob.startdate } name=startdate>
    Last Date <input type="date" value=${ob.enddate } name=enddate>
    
    <button type="submit">Edit</button>
    </form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Experience Data</title>
<style>
 body {
    height: 100vh; 
    background: linear-gradient(to top, #9933ff 0%, #669999 100%);
    color: white;
    
}
    table {
      border-collapse: collapse;
      width: 100%;
    }

    th, td {
      border: 2px solid #dddddd;
      padding: 8px;
      text-align: left;
      font-size: 15px;
    }

    th {
      background-color: #f2f2f2;
      color: black;
    }
    a{
    text-decoration: none;
    background-color: purple;
      color: #fff;
      padding: 5px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
     
   
    }
  </style>
</head>
<body>

<table border="2">
<tr>
<th>Sr.No</th>
<th>Company Name</th>
<th>Role</th>
<th>Joining Date</th>
<th>Last Date</th>
<th>Delete</th>
<th>Update</th>
</tr>

<c:forEach var="emp" items="${e_data }">
<tr>
<td>${emp.srno }</td>
<td>${emp.companyname }</td>
<td>${emp.role }</td>
<td>${emp.startdate }</td>
<td>${emp.enddate }</td>
<td> <a href="<c:url value='/delete/${emp.srno }'/>">Delete</a></td>
<td> <a href="<c:url value='/${emp.srno }'/>">Edit</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>
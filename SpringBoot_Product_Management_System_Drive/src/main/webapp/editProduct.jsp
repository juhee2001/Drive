<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <center><h1>Edit Product</h1></center>
  
  <form actions="update">
  
  <table border="1" align="center">
    <tr>
       <th>Id</th>
       <th>Name</th>
       <th>Price</th>  
       <th>Category</th>  
     
  
    </tr>
  
    <c:forEach items="${data}" var="pd">
    
    <tr>
    
       <td><input type="hidden" name="id" value="${data.id}"></td>
       
       <td><input type="number" name="id" value="${data.id}"></td>
       
       <td><input type="text" name="name" value="${data.name}"></td>
       
       <td><input type="number" name="price" value="${data.price}"></td>
       
       <td><input type="text" name="category" value="${data.category}"></td>
    
       <td><input type="submit" value="Update"></td>
    </tr>
    
    </c:forEach>
  
  </table>
</body>
</html>
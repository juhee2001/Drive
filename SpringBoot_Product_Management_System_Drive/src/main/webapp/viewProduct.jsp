<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">

function addProduct()
{
	function.fn.action="addProduct.jsp";
	function.fn.submit();
}
function deleteProduct()
{
	function.fn.action="delete";
	function.fn.submit();
}
function editProduct()
{
	function.fn.action="edit";
	function.fn.submit();
}

</script>
</head>
<body>
  <center><h1>View Product</h1></center>
  
  <form name="fn">
  
  <table border="1" align="center">
    <tr>
       <th>Id</th>
       <th>Name</th>
       <th>Price</th>  
       <th>Category</th>  
       <th>Actions</th>
  
    </tr>
  
    <c:forEach items="${data}" var="pd">
    
    <tr>
    
       <td><input button="radio" type="hidden" name="id" value="${pd.id}"></td>
       
       <td><input type="number" name="id" value="${pd.id}"></td>
       
       <td><input type="text" name="name" value="${pd.name}"></td>
       
       <td><input type="number" name="price" value="${pd.price}"></td>
       
       <td><input type="text" name="category" value="${pd.category}"></td>
    
   
    </tr>
    
    </c:forEach>
  
  </table>
  
  <table border="1" align="center">
  
    <tr>
    
       <td><a href="add" onclick=addProduct()>Add</a></td>
       
       <td><a href="delete" onclick=deleteProduct()>Delete</a></td>
       
       <td><a href="edit" onclick=editProduct()>Edit</a></td>
    
    
    
    </tr>
  
  
  </table>
  
  
  </form>
</body>
</html>
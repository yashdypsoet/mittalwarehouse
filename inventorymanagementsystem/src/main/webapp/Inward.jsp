<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>REACHED INWARD</h1>
<%--  		<%  --%>
//   			if(session.getAttribute("username")!="user")
//   			{
//   				response.sendRedirect("index.jsp");
//   			}
<%--  		%>  --%>
 <form action="InwardController" method="post">
 
 
  <label for="suplierName">SUPLIER NAME:</label><br>
  <input type="text" id="suplierName" name="suplierName" value="suplierName">
 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  Bill Date: <input type="date" id="Billdate" name="Billdate"><br><br>
 
  <label for="suplierInv">SUPLIER INVOCE NUMBER:</label><br>
  <input type="text" id="suplierInv" name="suplierInv" value="SUPLIER INVOCE NUMBER:"><br><br>

  <table style="width:100%">
  <tr>
    <td> PRODUCT CODE: <input type="text" id="productcode" name="productcode" value="">
    <td>MODEL NO: <input type="text" id="modelno" name="modelno" value=""></td>
    <td>SERIAL NO: <input type="text" id="serialno" name="serialno" value="">
  </tr>
</table><br>
  <input type="submit" value="Submit">
</form> 
	

</body>
</html>
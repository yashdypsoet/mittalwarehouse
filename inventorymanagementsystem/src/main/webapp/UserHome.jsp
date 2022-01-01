<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  		<%  
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragme", "no-cache");
			response.setHeader("Expires", "0");

  			if(session.getAttribute("userid")==null)
  			{
  				response.sendRedirect("index.jsp");
  			}
  		%>  
  		
  		
  	<div style="text-align:center">
	    <form name="Inward"  method="get" action="Inward.jsp" >
	        <input type="submit" name="submit" value="INWARD" style="padding: 54px 54px" >
	    </form>
	</div>  <br><br>  
    <div style="text-align:center">
	   <form name="Outward" method="get" action="Outward.jsp">
	        <input type="submit" value="OUTWARD" style="padding: 50px 50px">
	    </form>
    </div>
    
    
    <br><br><br><br>
   <form name="logout" method="post" action="logout">
        <input type="submit" value="logout">
    </form>


</body>
</html>
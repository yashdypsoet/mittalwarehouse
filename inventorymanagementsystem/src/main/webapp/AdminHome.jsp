<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<H2>Reached the Admin Home</H2>

  		<%  
  			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragme", "no-cache");
			response.setHeader("Expires", "0");
			
  			if(session.getAttribute("userid")==null)
  			{
  				response.sendRedirect("index.jsp");
  			}
  		%>  
 		<H2>Reached the Admin Home</H2>
</body>
</html>
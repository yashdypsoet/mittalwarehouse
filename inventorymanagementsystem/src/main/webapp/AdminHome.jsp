<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Home</title>
<style>

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body{
    background-color: #1a1a1a;
}

header{
    background:black;
    align-items: center;        
    text-align: center;
}

.navbar{
    color: antiquewhite;
    height: 3rem;
    display: flex;
    justify-content:center;
    align-items: center ;
}

.navbar li{
    display: inline-block;
    margin: 0 2rem;
    font-weight: bolder;
    list-style: none;
    justify-content: right;
}

.navbar li:hover{
    cursor: pointer;
/*     color:blanchedalmond; */
    font-style: oblique;
}

.navbar a{
    color: #FFFFFF;
    text-decoration: none;
}

.h2{
	text-align:center;
	margin-top:2rem;
	color:#ffffff;
}
</style>
</head>
<body>
		

  		<%-- <%  
  			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragme", "no-cache");
			response.setHeader("Expires", "0");
			
  			if(session.getAttribute("userid")==null)
  			{
  				response.sendRedirect("index.jsp");
  			}
  		%>   --%>
 		
 		
 	<header>
        <nav class="navbar">
            <ol>
                <li>Inward Report</li>
                <li>Outward Report</li>
                <li>Stock Available</li>
            </ol>
        </nav>
    </header>
    
    <H2 class="h2">Reached the Admin Home</H2>
 		
</body>
</html>
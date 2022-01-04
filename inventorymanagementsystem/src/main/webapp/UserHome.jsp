<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Home</title>
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

.container{
  	display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    height: 100%;
    width: 100%;
    padding: 2rem 0;
}

.btn-grp{
	display: flex;
    justify-content: center;
    align-items: center;
	height: 70vh;
    width: 50%; 
	padding:2rem;
	margin-top:3rem;
	background-color: black;
}

.btn{
	display: flex;
    justify-content: center;
    align-items: center;
    height: 2rem;
    width: 4rem;
    margin: 0 1rem;
    padding: 3rem;
    text-align: center;
    background-color:#1a1a1a;
	color:#FFFFFF;
	outline:none;
	font-weight: bolder;
    border: 1px solid black;
    border-radius: 10px;	
}

.btn:hover{
	cursor:pointer;
	background-color:#FFFFFF;
	color:#1a1a1a;
}

.log-btn{
	width:100px;
	padding:5px;
	background-color:#1a1a1a;
	color:#FFFFFF;
	outline:none;
    margin-top: 12rem;
    margin-left: -11rem;
	font-weight: bolder;
	border:1px solid #1a1a1a;
	border-radius:15px;
}

.log-btn:hover{
	cursor:pointer;
	background-color:#FFFFFF;
	color:#1a1a1a;
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
  		%>  
  		
  		 --%>
  		 
<!--   	<header>
        <nav class="navbar">
            <ul>
            	<li><a href="">LOGOUT</a></li>
            </ul>
        </nav>
    </header> -->
    
    
  		 <div class="container">
  		 			
  			<div class="btn-grp">
				  	<div>
					    <form name="Inward"  method="get" action="Inward.jsp" >
					    	<button class="btn" type="submit">INWARD</button>
					        <!-- <input type="submit" name="submit" value="INWARD" class="btn" > -->
					    </form>
					</div>  
					
				
					  
				    <div  >
					   <form name="Outward" method="get" action="Outward.jsp">
					   		<button class="btn" type="submit">OUTWARD</button>
					        <!-- <input type="submit" value="OUTWARD" class="btn" > -->
					    </form>
				    </div>
		   
		    
		    
				    <div>
					     <form name="logout" method="post" action="logout">
					     	<button class="log-btn" type="submit">LOGOUT</button>
					        <!-- <input type="submit" value="logout"> -->
					    </form>
				    </div>
		     </div>
		    
		 </div>
  


</body>
</html>
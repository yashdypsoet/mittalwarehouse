<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inward Report</title>
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

	
		<header>
        <nav class="navbar">
            <ol>
                <li>From Date-To Date</li>
                <li>Supplier Name</li>
                <li>Model Name</li>
            </ol>
        </nav>
    </header>
    
    <H2 class="h2">Reached the Inward Report</H2>

</body>
</html>
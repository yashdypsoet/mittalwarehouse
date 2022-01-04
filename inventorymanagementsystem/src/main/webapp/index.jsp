<html>
<head>
<title>InventoryManagementSystem</title>

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

.container{
  	display: flex;
    justify-content: center;
    height: 100%;
    width: 100%;
    color:#ffffff;
    margin-top:2rem;
}

.container .form{
    background:black;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 25rem;
    width: 30rem;
}

.container .form input{
   	margin-top: 0.5rem;
    margin-left: 1rem;
    margin-bottom: 1rem;
    border:1px solid black;
    border-radius:10px;
    padding:5px;
    width:50%;
}

.container .form label{
	font-weight: bolder;
	margin-left:1rem;
}

.btn{
width:100px;
padding:5px;
background-color:#000;
color:#FFFFFF;
outline:none;
margin-left:5%; 
font-weight: bolder;
border:1px solid #1a1a1a;
border-radius:15px;
}

.btn:hover{
cursor:pointer;
background-color:#FFFFFF;
color:#1a1a1a;
}

</style>

</head>
<body>
    
    	<h2 class="h2">Login</h2>
    	<div class="container">
		<form action="getLogin" method="post" class="form">
			  <label for="userid">USER-ID</label><br>
			  <input type="text" id="userid" name="userid" placeholder="Enter User ID" required><br>
			  <label for="password">PASSWORD</label><br>
			  <input type="password" id="password" name="password" placeholder="Enter Password" required ><br><br>
			  <button class="btn" type="submit">LOGIN</button>
		</form>
    </div>
	 
	
	
</body>
</html>

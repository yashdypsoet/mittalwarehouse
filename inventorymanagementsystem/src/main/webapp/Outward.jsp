<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Outward</title>
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

.h1{
text-align:center;
margin-top:2rem;
color:#ffffff;
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

.content{
	height: 100%;
	padding:2rem;
   /*  width: 100%; */
	background-color: black;
}

.container .form select{
	margin-top: 0.5rem;
    margin-left: 1rem;
    width:40%;
    margin-bottom: 1rem;
    border:1px solid black;
    border-radius:10px;
    padding:5px;
}

.container .form input{
    margin-top: 0.5rem;
    margin-left: 1rem;
    margin-bottom: 1rem;
    border:1px solid black;
    border-radius:10px;
    padding:5px;
}

.name-ip{
 	margin-top: 0.5rem;
    margin-left: 1rem;
    margin-bottom: 1rem;
    border:1px solid black;
    border-radius:10px;
    padding:5px;
    width:20rem;
}

.container .form label{
font-weight: bolder;
margin-left:1rem;
color:#ffffff;
}


.si_ip{
 width: 20rem;
}

.add-btn{
width:100px;
padding:5px;
background-color:#1a1a1a;
color:#FFFFFF;
outline:none;
font-weight: bolder;
border:1px solid #1a1a1a;
border-radius:15px;
}

.add-btn:hover{
cursor:pointer;
background-color:#FFFFFF;
color:#1a1a1a;
}

.btn{
width:100px;
padding:5px;
margin-left:40%;
background-color:#1a1a1a;
color:#FFFFFF;
outline:none;
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
    <header>
        <nav class="navbar">
            <ul>
             	<li><a href="http://localhost:8081/inventorymanagementsystemclone/index.jsp">HOME</a></li>
            	<li><a href="http://localhost:8081/inventorymanagementsystemclone/Inward.jsp">INWARD</a></li>
            	<li><a href="http://localhost:8081/inventorymanagementsystemclone/index.jsp">LOGOUT</a></li>
            </ul>
        </nav>
    </header>

	<h1 class="h1">REACHED OUTWARD</h1>
<%--  		<%  --%>
//   			if(session.getAttribute("username")!="user")
//   			{
//   				response.sendRedirect("index.jsp");
//   			}
<%--  		%>  --%>

<div class="container">
<div class="content">
<form  class="form" name="form" action="/action_page.php" >
  <label for="Party Name">PARTY NAME:</label>
  <br>
  <input class="name-ip" type="search" name="SuplierName" list="names" placeholder="Select or Add Party Name" autofocus >
        <datalist id="names">
            <option value="Sony">   
            <option value="LG">   
            <option value="Samsung">   
            <option value="One Plus">     
        </datalist>
   <!-- <select  id="select">
        <option value="Samsung">Samsung</option>
        <option value="Sony">Sony</option>
        <option value="LG">LG</option>
    </select>
    <input type="text" name="val" id="val" placeholder="Add Supplier Name"> -->
    <!-- <button onclick="add();" class="add-btn" type="submit">Add Supplier</button> -->
  <!-- <input type="text" class="pn_ip" id="partyname" name="partyname" value="partyname" placeholder="Enter Party Name"> -->
  <br>
  
  <!-- <label for="suplierInv">SUPLIER INVOCE NUMBER:</label>
  <br> -->
  <!-- <input type="text" class="si_ip" id="suplierInv" name="suplierInv" value="SUPLIER INVOCE NUMBER:" placeholder="Enter SUPLIER INVOCE NUMBER" required>
  <br> -->
  
  
  <table style="width:100%">
  <tr>
  	<td><label for="suplierInv">SERIAL NO:</label><br> <input type="text" id="serialno" class="srn_ip"  name="serialno" value="" placeholder="Enter Serial Number" required>
    <td><label for="suplierInv">PRODUCT CODE:</label><br> <input type="text"  id="productcode" class="pc_ip"  name="productcode" value="" placeholder="Enter Product Code"  required>
    <td><label for="suplierInv">MODEL NO:</label><br> <input type="text"  id="modelno"  class="mn_ip" name="modelno" value="" placeholder="Enter Model Number"  required></td>
    
  </tr>
</table>
   <button class="btn" type="submit">Submit</button>
</form> 
</div>
</div>

<script type="text/javascript"> 

function add()
{
    var select = document.getElementById('select'),
        txtval = document.getElementById('val').value,
        newopt = document.createElement("OPTION"),
        newoptval = document.createTextNode(txtval);

    newopt.appendChild(newoptval);
    select.insertBefore(newopt,select.lastChild);
}

/* function jump(fr, to){
    let len=fr.value.length;
    let mx=fr.getAttribute("maxlength");
    if(len==mx){
        document.getElementById(to).focus();
    }
} */

/* function validate()
{
  const partyname = document.form.partyname;
  const suplierInv = document.form.suplierInv;
  const productcode = document.form.productcode;
  const modelno = document.form.modelno;
  const serialno = document.form.serialno;
	
  if(partyname.value === '' || partyname.value == null)
  {
     alert("Please enter party Name");
     partyname.focus();
      return false;
  }  

  
  if(suplierInv.value === '' || suplierInv.value == null)
  {
    alert("Please enter suplierInv");
    suplierInv.focus();
    return false;
  }  
  
  if(productcode.value === '' || productcode.value == null)
  {
      alert("Please enter productcode");
      productcode.focus();
      return false;
  } 

  if(modelno.value === '' || modelno.value == null)
  {
      alert("Please enter modelno");
      modelno.focus();
      return false;
  }  

  return false;
}*/

 
</script>
		
</body>
</html>



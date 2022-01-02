<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



<style type="text/css">

.container{
  	display: flex;
    justify-content: center;
    align-items: center;
    height: 100%;
    width: 100%;
    padding: 2rem 0;
}

.container .form input{
   	margin-top: 0.5rem;
    margin-left: 1rem;
    margin-bottom: 1rem;
}

.container .form label{
	font-weight: bolder;
	margin-left:1rem;
}

.si_ip{
 width: 20rem;
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
	<h1>REACHED INWARD</h1>
<%--  		<%  --%>
//   			if(session.getAttribute("username")!="user")
//   			{
//   				response.sendRedirect("index.jsp");
//   			}
<%--  		%>  --%>


									
<div class="container">
 <form action="InwardController" method="post" class="form" name="form"  onsubmit="return validate()">
 
 
  <label for="suplierName" class="l1">SUPLIER NAME:</label>
  <br>
  <input type="text" id="suplierName" class="sn_ip" name="suplierName" value="suplierName" placeholder="Enter Party Name">
  <br>

  <label for="suplierName" class="l2">Bill Date: </label>
  <br>
  <input type="date" id="Billdate" class="bd_ip"  name="Billdate" placeholder="Enter Party Name"><br><br>
 
  <label for="suplierInv" class="l3">SUPLIER INVOCE NUMBER:</label><br>
  <input type="text" id="suplierInv" class="si_ip"  name="suplierInv" value="SUPLIER INVOCE NUMBER:"placeholder="Enter Party Name" ><br><br>

  <table style="width:100%">
  <tr>
    <td><label for="suplierInv">PRODUCT CODE:</label><br><input type="text" maxlength="5" id="productcode" class="pc_ip"  name="productcode" value="" placeholder="Enter Product Code" onkeyup="jump(this, 'modelno')">
    <td><label for="suplierInv">MODEL NO:</label><br><input type="text" maxlength="5" id="modelno"  class="mn_ip" name="modelno" value="" placeholder="Enter Model Number" onkeyup="jump(this, 'serialno')"></td>
    <td><label for="suplierInv">SERIAL NO:</label><br><input type="text" maxlength="5" id="serialno" class="srn_ip"  name="serialno" value="" placeholder="Enter Serial Number" onkeyup="jump(this, 'productcode')">
  </tr>
</table><br>
  <button class="btn" type="submit">Submit</button>
</form> 
</div>

<script type="text/javascript">

function validate()
{
  const suplierName = document.form.suplierName;
  const Billdate = document.form.Billdate;
  const suplierInv = document.form.suplierInv;
  const productcode = document.form.productcode;
  const modelno = document.form.modelno;
  const serialno = document.form.serialno;
	
  if(suplierName.value === '' || suplierName.value == null)
  {
     alert("Please enter suplierName");
     suplierName.focus();
      return false;
  }  

  
  if(Billdate.value === '' || Billdate.value == null)
  {
    alert("Please enter Billdate");
    Billdate.focus();
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

  if(serialno.value === '' || serialno.value == null)
  {
      alert("Please enter serialno");
      serialno.focus();
      return false;
  }  

  return false;
}

function jump(fr, to){
    let len=fr.value.length;
    let mx=fr.getAttribute("maxlength");
    if(len==mx){
        document.getElementById(to).focus();
    }
}
</script>
	
</body>
</html>
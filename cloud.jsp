<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<META Http-Equiv="Cache-Control" Content="no-cache">
<META Http-Equiv="Pragma" Content="no-cache">
<META Http-Equiv="Expires" Content="0">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/tees.css">
<title>Admin</title>
<script>
function validLogin(){
if (document.admin.uname.value == ""){
alert ( "Please enter Login Name." );
document.admin.uname.focus();
return false;
}
if (document.admin.pass.value == ""){
alert ( "Please enter password." );
document.admin.pass.focus();
return false;
}
if(document.admin.uname.value == "cloud" && document.admin.pass.value == "cloud"){
alert ( "Welcome User" );
window.open('cloudview.jsp','_self')
}
else{
	alert("Invalid Login")
	return false;
}
return false;
}
 

   /*  window.history.forward();
    function noBack() { window.history.forward(); } */
</SCRIPT>
</head>
<body onload="noBack();"
    onpageshow="if (event.persisted) noBack();" onunload="">
<div class="sidenav">
  <a href="index.jsp">Home</a>
  <a href="dataowner.jsp">Dataowner</a>
  <a href="datauser.jsp">Datauser</a>
  <a href="cloud.jsp">Cloud</a>
</div>    

<div class="main">
<h2 align="center">Multi Keyword Search Scheme Over Encrypted Data on Mobile Cloud</h2>
  <img src="image/cloud.jpg" alt="Paris">
 <form name="admin" method="post"  onsubmit="return validLogin()" >
 <div class="row">  
 <div class="leftcolumn">
    <div class="card">
		<table class="login" style="border:1; width:30%; cellpadding:3;">
                <thead>
                    <tr>
                        <th colspan="2">Cloud Login</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
     
                    
                </tbody>
            </table>
            <table>
           			<tr>
                        <td><button class="button" >Login</button></td>
                        
                    </tr> 
                    </table> 
                    </div>
                    </div>
                    </div>
        </form>
        </div>

</body>
</html>
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
<title>User</title>
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
  <img src="image/datauser.jpg" alt="Paris">
 <form name="admin" method="post" action="LoginServlet">
 		<table class="login" style="border:1; width:30%; cellpadding:3;">
                <thead>
                    <tr>
                        <th colspan="2">Data User Login</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="userName"/></td>
                    </tr>
                    <tr>
                        <td><p>Password</p></td>
                        <td><input type="password" name="password" /></td>
                    </tr>
                    <tr>
                        <td><p>Activate Key</p></td>
                        <td><input type="text" name="otp" /></td>
                    </tr>
     
                    
                </tbody>
            </table>
            <table>
           			<tr>
                        <td><button class="button" >Login</button></td>
                        
                    </tr> 
                    <tr> <span class="pseudolink" onclick="location='registration.jsp'">New User Click Here For Register</span></tr>
                    </table> 
        </form>
        </div>

</body>
</html>
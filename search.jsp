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
<title>Search</title>
</head>
<body>
<div class="sidenav">
  <a href="index.jsp">Home</a>
  <a href="dataowner.jsp">Dataowner</a>
  <a href="datauser.jsp">Datauser</a>
  <a href="cloud.jsp">Cloud</a>
</div>    

<div class="main">
 <form name="admin" method="post"  action="s_content.jsp" >
 <div class="row">  
 <div class="leftcolumn">
    <div class="card">
		<table class="login" style="border:1; width:30%; cellpadding:3;">
                <thead>
                    <tr>
                        <th colspan="2">Search</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Search Index</td>
                        <td><input type="text" name="search"/></td>
                    </tr>          
                </tbody>
            </table>
            <table>
           			<tr>
                        <td><button class="button" >search</button></td>
                        
                    </tr> 
                    </table> 
                    </div>
                    </div>
                    </div>
        </form>
        </div>

</body>
</html>
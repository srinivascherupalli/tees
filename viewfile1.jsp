<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<link rel="stylesheet" href="css/tees.css">
<style type="text/css">
	td{
	width: 800px;
	text-align: center;
	padding: 20px 20px;
	}
</style>
<%
String id = request.getParameter("reviews");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "tees";
String userId = "root";
String password = "root";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<div class="sidenav">
  <a href="index.jsp">Home</a>
  <a href="userauth1.jsp">Registered User Authentication</a>
  <a href="viewfile1.jsp">View Uploaded File</a>
  
  <a href="cloud.jsp">Logout</a>
</div>  
<div class="main">
<table>
<h2 align="center"><font><strong>File List</strong></font></h2>
<tr bgcolor="#A52A2A">
<td><b>id</b></td>
 <td><b>File Name</b></td>
<td><b>Index</b></td>
<td><b>Description</b></td>
<td><b>Date</b></td> 
<td><b>TF Value</b></td> 
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM files";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
	


%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("filename") %></td>
<td><%=resultSet.getString("indexterm") %></td>
<td><%=resultSet.getString("description") %></td>
<%-- <td><%=resultSet.getString("file_data") %></td> --%> 
<td ><%=resultSet.getString("u_time") %></td>
<td ><%=resultSet.getString("tf") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>
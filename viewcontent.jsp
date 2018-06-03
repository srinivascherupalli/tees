<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<link rel="stylesheet" href="css/tees.css">
<%
//String id = request.getParameter("csp");
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
<form action="Verify.jsp">
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>
<div class="sidenav">
  <a href="index.jsp">Home</a>
  <a href="userauth.jsp">Send Authentication Request</a>
  <a href="search.jsp">Search</a>
  <a href="index.jsp">Logout</a>
</div>
</tr>
<h2 align="center"><font><strong>Content List</strong></font></h2>
<tr bgcolor="#A52A2A">
<td><b>content</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String cid = request.getParameter("c_id");
session.setAttribute("id",cid);  

String sql = "select file_data from files WHERE id = '"+cid+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<div class="main">
<tr bgcolor="#DEB887">
<td><%=resultSet.getString("file_data") %></td>
</tr>
 <tr>
   <div class="download">     
  <td><input type="submit" value="Download"/></td>
  </div>
</tr> 
</div>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</form>
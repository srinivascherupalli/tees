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

<div class="sidenav">
  <a href="index.jsp">Home</a>
  <a href="userauth.jsp">Send Authentication Request</a>
  <a href="search.jsp">Search</a>
  <a href="index.jsp">Logout</a>
</div>

<div class="main">
<table>
<h2 align="center"><font><strong>Search List</strong></font></h2>
<tr bgcolor="#A52A2A">
<td><b>File Id</b></td>
<td><b>File Name</b></td>
<td><b>Index</b></td>
<td><b>Description</b></td>
<td><b>Date</b></td>
<td><b>View Content</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String search = request.getParameter("search");

String like= "%" + search + "%";
String sql = "SELECT * FROM files WHERE filename LIKE '"+like+"' OR indexterm LIKE '"+like+"' OR description LIKE '"+like+"' OR u_time LIKE '"+like+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr bgcolor="#DEB887">
<td><%=resultSet.getString("id") %></td>
<td><%=resultSet.getString("filename") %></td>
<td><%=resultSet.getString("indexterm") %></td>
<td><%=resultSet.getString("description") %></td>
<td><%=resultSet.getString("u_time") %></td>
<td> <a href="viewcontent.jsp?c_id=<%=resultSet.getString("id")%>">Content</a></td> 

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</div>

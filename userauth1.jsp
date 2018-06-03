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
  <a href="userauth1.jsp">Registered User Authentication</a>
  <a href="viewfile1.jsp">View Uploaded File</a>
  
  <a href="cloud.jsp">Logout</a>
</div>    
<div class="main">
<table>
<h2 align="center"><font><strong>Authentication List</strong></font></h2>

<tr bgcolor="#A52A2A">
<td><b>Name</b></td>
<td><b>Email</b></td>
<td><b>User Name</b></td>
<td><b>Gender</b></td>
<td><b>Birth Date</b></td>
<td><b>Country</b></td>
<td><b>Authentication</b></td>
</tr></div>


<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM users where status='Requested' and otp='empty'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr bgcolor="#DEB887">
<td><%=resultSet.getString("fullName") %></td>
<td><%=resultSet.getString("Email") %></td>
<td><%=resultSet.getString("userName") %></td>
<%-- <td><%=resultSet.getString("password") %></td>
 --%><td><%=resultSet.getString("gender") %></td>
<td><%=resultSet.getString("dob") %></td>
<td><%=resultSet.getString("country") %></td>
<td> <a href="SendMail?AuthenticationID=<%=resultSet.getString("u_id")%>&&email=<%=resultSet.getString("Email")%>">Authenticate</a></td> 
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</table>
</div>
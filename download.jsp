<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="javax.servlet.*"%>
<%
ServletOutputStream output = response.getOutputStream();
String connectionURL = "jdbc:mysql://localhost:3306/tees";
String Content=new String("");
String id=(String)session.getAttribute("id");  
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection(connectionURL,"root","root");
Statement st=con.createStatement();
ResultSet rst= st.executeQuery("select file_data2 from files where id='"+id+"' ");
if(rst.next())
{
Content=rst.getString("file_data2");
}
con.close();
}catch(Exception e){
System.out.println("Exception caught"+e.getMessage());
}
byte requestBytes[] = Content.getBytes();
ByteArrayInputStream bis = new ByteArrayInputStream(requestBytes);
response.reset();
response.setContentType("application/doc");
response.setHeader("Content-disposition","attachment; filename=" +"file.doc");
byte[] buf = new byte[1024];
int len;
while ((len = bis.read(buf)) > 0){
output.write(buf, 0, len);
}
bis.close();
response.getOutputStream().flush();
%>

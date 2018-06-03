<%@page import="java.util.Random"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="java.util.logging.Level"%>
<%@page import="tees.DBConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
 <style>  
html { 

  background: url(29318290-internet-cloud-server-concept-with-sky-and-cloud-background.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
}
user agent stylesheet user agent stylesheet input[type="button" i], input[type="submit" i], input[type="reset" i], input[type="file" i]::-webkit-file-upload-button, button {
       background: #861abdfa;
    border: 1px solid #391515;
    border-radius: 5px;
    color: #fff;
    font-weight: bold;
    line-height: 33px;
    text-align: center;
    text-transform: uppercase;
    width: 135px;
    margin-top: 25px;
    /* background: #490ab9; */
}
</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>req</title>
    </head>
    <body align="center">
        
        <%  
           
            
                    

            try
        
            {    
            	
            	DBConnection con=new DBConnection();
                Connection conn= DBConnection.createConnection(); 
              
               
                String strAuthenID = request.getParameter("AuthenticationID");  
                    Class.forName("com.mysql.jdbc.Driver"); 
              	    java.sql.Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/tees","root","root");	
                    String sql1 = "update users set Status='Requested' WHERE u_id='"+strAuthenID+"'";
          	      PreparedStatement statement2 = con2.prepareStatement(sql1);
          	      int executeUpdate=statement2.executeUpdate();
    	           
    	           

            } catch (SQLException ex) {Logger.getLogger(Logger.class.getName()).log(Level.SEVERE, null, ex);} 
        %>
        
        <br><br>
         <% 
         out.println("<script>"
	                 +"alert('request has been send Successfully..	')"
	      			 +"</script>");
      
		         RequestDispatcher rs2 = request.getRequestDispatcher("userauth1.jsp");
	            rs2.include(request, response);  
   	    	
   	      
         %>
        <div style="position: relative">
            
        </div>
        
    </body>
</html>
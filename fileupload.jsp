<%@ page language="java" %>
<Html>
<HEAD>
<script>
function validateForm() {
        alert("File  Uploaded Successfully");
        return true;
    }
</script>
<link rel="stylesheet" href="css/tees.css">

<TITLE>Upload File</TITLE></HEAD>
<BODY>
<div class="sidenav">
<a href="index.jsp">Home</a>
<a href="fileupload.jsp">File Upload</a>
<a href="userauth.jsp">User Authentication</a>
<a href="viewfile.jsp">View Uploaded File</a>
<a href="viewuser1.jsp">View Users Details</a>
<a href="index.jsp">Log Out</a>
</div>
<<div class="main">
<FORM ENCTYPE="multipart/form-data" ACTION="UploadFileServlet" METHOD=POST onsubmit="return validateForm()">
<br><br><br>
<table  align="center" >
<tr><td colspan="2"><p align="center"><B>UPLOAD THE FILE</B></td></tr>
<tr><td><b>File Name</b>
</td>
<td><INPUT NAME="filename" TYPE="text" required></td></tr>
<tr><td><b>Index Term</b>
</td>
<td><INPUT NAME="indexterm" TYPE="text" required></td></tr>

<tr><td><b>Description</b>
</td>
<td><textarea name="description" required></textarea></td></tr>
<tr><td><b>Upload File	:</b>
</td>
<td><INPUT NAME="file" TYPE="file" required></td></tr>
<tr><td><INPUT TYPE="submit" VALUE="Upload File" ></td></tr>
<tr><td><INPUT TYPE="reset" VALUE="Reset" ></td></tr>
</table>
</FORM>
</div>
</BODY>
</HTML>

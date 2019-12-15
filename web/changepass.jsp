<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
    </head>
<body style="background-image: url('images/d.jpg');">
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%!
Connection con;
String password;
%>
<%
//String userid = request.getParameter("uname");
String dd=(String)session.getAttribute("sname");
String spass=request.getParameter("pass");
String pwd=(String)session.getAttribute("sname2");
String Newpass=request.getParameter("newpass");
String conpass=request.getParameter("confirm");

try
{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
if(Newpass.equals(conpass))
{
Statement st1=con.createStatement();
int i=st1.executeUpdate("update students set Pass='"+Newpass+"' , Confirm_Pass='"+Newpass+"'where Uname='"+dd+"'");
out.println("<center><h1>Password changed successfully</h1><img src='images/change.jpg'></center>");
}
else
{
out.println("<center><h2>Invalid Current Password</h1></center>");
}
}
catch(Exception e)
{
out.println(e);
}
%>
<hr>
    <center><a style="text-decoration: none; color:red;" href="index.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a style="text-decoration: none; color:greenyellow;" href="logout.jsp">Logout</a></center>
    <hr><br><br><br>
    
   </body>
</html>

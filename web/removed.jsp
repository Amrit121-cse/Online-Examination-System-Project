<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Removed</title>
    </head>
<body style="background-image: url('images/d.jpg');">
<%!
Connection con;
PreparedStatement  ps ;
int i;
%>
<%
   try
   {
        int id = Integer.parseInt(request.getParameter("t1"));   
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
        ps = con.prepareStatement("delete from students where s_id=? ");
        ps.setInt(1,id);
        i = ps.executeUpdate();
        if(i!=0)
        {
            
             out.print("<center><h1>Student  Removed Successfully</h1> <img src='images/student.png'></center>");
        }
        else
        {
            out.println("<center><h1>Sorry! student id does not match.</h1></center>"); 
        }
   }
    catch(Exception e)
    {
        out.print(e);
    }
%>
<hr>
    <center><a href="ad.jsp">Admin's Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="RemoveStudent.jsp">Remove More Student</a></center>
    <hr>
    </body>
</html>

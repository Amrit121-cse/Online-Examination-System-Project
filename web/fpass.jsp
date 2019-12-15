<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Got Password??</title>
    </head>
    <body style="background-color:lightpink">
<%!
Connection con;
PreparedStatement  ps ;
ResultSet rs ;
%>
<%
   try
   {
        String  Name = request.getParameter("name");
        String  ans = request.getParameter("s1");
        
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
        ps = con.prepareStatement("select Pass from students where  Uname=? and Answer=? ");
        ps.setString(1, Name);
        ps.setString(2, ans);
        rs = ps.executeQuery();
        if(!rs.next())
        {
            out.println("<center><h1>Sorry! UserName or  Security Answer does not match.</h1></center>");
            out.println("<hr>");
            out.println("<center><img src='images/fpass.jpg' width='450' height='300' alt='password'/></center>");
        }
        else
        {
            String   pwd = rs.getString("Pass");
            out.print("<center><h1>Your Password is&nbsp= &nbsp;&nbsp;"+pwd+"</h1></center>");
            out.println("<hr>");
            out.println("<center><img src='images/pwd.jpg' width='450' height='300' alt='password'/></center>");
        }
   }
    catch(Exception e)
    {
        out.print(e);
    }
%>
    <br><br>
    <center><a style="text-decoration: none;" href="index.html">Home</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a style="text-decoration: none;" href="logout.jsp">Logout</a></center>
    <hr>
    </body>
</html>

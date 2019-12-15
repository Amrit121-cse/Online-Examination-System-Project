<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
    </head>
    <body>
        <%
        String s1=request.getParameter("fname");
        String s2=request.getParameter("sid");
        String s3=request.getParameter("email");
        String s4=request.getParameter("s");
        String s5=request.getParameter("dob");
        String s6=request.getParameter("uname");
        String s7=request.getParameter("pass");
        String s8=request.getParameter("cpass");
        String s11=request.getParameter("s1"); 
        String s12=request.getParameter("ss");
        Connection con;
        ResultSet rs;
        PreparedStatement ps; 
        Statement stmt;
        
        %>
        <%
        try
         {
            Date d = new Date();
        SimpleDateFormat s = new SimpleDateFormat();
        String s10 = s.format(d);
          Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
           ps=con.prepareStatement("insert into students values (?,?,?,?,?,?,?,?,?,?,?)");
           ps.setString(1,s1);
           ps.setString(2,s2);
           ps.setString(3,s3); 
           ps.setString(4,s4);
           ps.setString(5,s5);
           ps.setString(6,s6);
           ps.setString(7,s7);
           ps.setString(8,s8);
           ps.setString(9,s10);
           ps.setString(10,s11);
           ps.setString(11,s12);
           ps.executeUpdate();
           response.sendRedirect("Added.jsp");
         }
        catch(Exception e)
        {
            out.print(e);
        }

        %>
        
        
    </body>
</html>

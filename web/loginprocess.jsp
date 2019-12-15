<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8 ">
        <title>Login  Page</title>
    </head>
<body style="background-image: url('images/d.jpg');">
        <%
           
        String s1=request.getParameter("uname");
        String s2 =request.getParameter("id");
        String s3=request.getParameter("pass");
        %>
          <%
        try
        {
            Connection con;
            PreparedStatement ps;
            ResultSet rs;
            Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
            ps = con.prepareStatement("select * from students where uname=? and Pass=?");
            ps.setString(1, s1);
            ps.setString(2, s3);
            rs = ps.executeQuery();
            
            if (rs.next()) 
            {                
                response.sendRedirect("success.jsp");
            }
            else 
            {
                out.println("<center>");
                out.println("<h1>Invalid login credentials</h1>");
                //out.println("<img src='t.jpg'/>");
                out.println("<hr><a style='text-decoration:none; color:yellow;' href='admin.jsp'>Try Again</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a style='text-decoration:none; color:black;' href='index.html'>Home</a><hr>");
                out.println("</center>");
            }
        }
            catch(Exception e)
            {
                out.println(e);
            }
            session.setAttribute("sname",s1);
            session.setAttribute("sname1",s2);
          %>
    </body>
</html>

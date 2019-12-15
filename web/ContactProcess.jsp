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
        <title>JSP Page</title>
    </head>
<body style="background-image: url('images/d.jpg');">
        <%
            String sub=request.getParameter("subject");
            String fed=request.getParameter("content");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
                PreparedStatement ps=con.prepareStatement("insert into Contact values(?,?)");
                ps.setString(1,sub);
                ps.setString(2,fed);
                int i=ps.executeUpdate();
                if(i>0)
                {
                    out.println("<h1><center>Message sent successfully....</center></h1><br><br><br>");
                    out.println("<center><img src='images/email.jpg' alt='email'/></center>");
                    out.println("<center><hr><a style='text-decoration:none;' href='contact us.jsp'>Go Back</a>&nbsp;|&nbsp;");
                    out.println("<a style='text-decoration:none;' href='index.html'>Go Home</a></center><hr>");
                }
                else
                {
                    
                }
            }
            catch(Exception e)
            {
                
            }
        %>
    </body>
</html>

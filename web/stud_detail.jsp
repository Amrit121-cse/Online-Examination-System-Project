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
        <title>JSP Page</title>
<style>
     body
            {
                margin: 0;
            }
table 
{
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}
th
{
    background-color: orange;
}
tr:hover
{
    background-color:lightgreen;
}
td, th {
    border: 1px solid black;
    text-align: center;
    padding: 8px;
}

tr:nth-child(even) {
    background-color:hotpink;
}
</style>
    </head>
    <body bgcolor="wheat">
<%
           try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select Fname,s_id,Email,Uname from students");

   %>
   <table border="1">
    
    <tr><th>First Name</th><th>Student ID</th><th>Email</th><th>User Name</th></tr>
   <%
 
    while(rs.next())
      
    {
        String s1=rs.getString("Fname");
        int s2=rs.getInt("s_id");
        String s3=rs.getString("Email");
        String s4=rs.getString("Uname");
    %>

    <tr><td><%=s1%></td><td><%=s2%></td><td><%=s3%></td><td><%=s4%></td></tr>

    <%
    }
      }
          catch(Exception e)
       {
           out.println(e);
   }
%>
</table>
</body>
</html>
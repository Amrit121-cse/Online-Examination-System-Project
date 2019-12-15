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
        <script>
            function printdata()
           {
               window.print();
           }
        </script>
        <style>
            body
            {
                margin: 0;
            }
table {
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
    background-color: lightblue;
}
</style>
    </head>
<body style="background-image: url('images/d.jpg');">
<%
     try
     {
    Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select s.Fname, s.s_id, s.Uname,s.Reg_Date,s.Gender,exam7.exam_name,r.marks_obtained,r.remarks from students s INNER JOIN  res r ON s.s_id=r.s_id INNER JOIN  exam7 ON r.E_id=exam7.E_id  ");
    %>
    
    <table border="1">
       
    
    <tr>
    <th>Student Name</th><th>Student ID</th><th>User Name</th><th>Given Exam Date</th><th>Subject Name</th><th>Marks Obtained</th><th>Remark</th>
  </tr>
    <%
    while(rs.next())
    {   
        String sf=rs.getString("Fname");
        int si=rs.getInt("s_id");
        String su=rs.getString("Uname");
       String sdt=rs.getString("Reg_Date");
        String s2=rs.getString("exam_name");
        int s3=rs.getInt("marks_obtained");
        String s4=rs.getString("remarks");
        //String s5=rs.getString("Date");
    %>  
    <tr><td><%=sf%></td><td><%=si%></td><td><%=su%></td><td><%=sdt%></td><td><%=s2%></td><td><%=s3%></td><td><%=s4%></td></tr>  
    <%
    }
     
      }
          catch(Exception e)
       {
           out.println(e);
   }
%>
  </table><br>
    <center><input type="submit" value="Print Student Results" name="b1" onclick="printdata();" /></center>
</body>
</html>
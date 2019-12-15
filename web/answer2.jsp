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
        <style>
            body
            {
                margin:0;
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
    background-color: #dddddd;
}

</style>
<script>
            function printdata()
           {
               window.print();
           }
        </script>
    </head>
    <body>
        <%!
        Connection con;
        Statement st1,st2,st3,st4,st5;
        ResultSet rs;
        int no;
        String ques,ans,op1,op2,op3,op4=null;
        %>
        <%
        try
        {
       int eid=Integer.parseInt(request.getParameter("id"));
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
           st1=con.createStatement();
           rs=st1.executeQuery("select question_no,question,option1,option2,option3,option4,answer from javatest where E_id="+eid+" order by question_no");
           %>
    
    <table border="2">
    <tr>
    <th>Question No.</th><th>Question</th><th>option 1</th><th>option 2</th><th>option 3</th><th>option 4</th><th>Answer</th></tr>
  <%
           while(rs.next())
           {
               no=rs.getInt("question_no");
               ques=rs.getString("question");
               op1=rs.getString("option1");
               op2=rs.getString("option2");
               op3=rs.getString("option3");
               op4=rs.getString("option4");
               ans=rs.getString("Answer");
        %>
    <tr><td><%=no%></td><td><%=ques%></td><td><%=op1%></td><td><%=op2%></td><td><%=op3%></td><td><%=op4%></td><td><%=ans%></td></tr>  
    <%
    }
       
             }
       catch(Exception e)
       {
           out.println(e);
        }
       
%>
  </table>
  <br>
  <center><input type="submit" value="Print Result" name="b1" onclick="printdata();"/> 
    </body>
</html>

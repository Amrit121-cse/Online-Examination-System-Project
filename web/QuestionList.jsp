<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Questions List</title>
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
    </head>
    <body>
        <table border="2">
    <tr>
    <th>Question_No</th><th>Question_ID</th><th>Exam Name</th><th>Exam ID</th><th>QUESTION</th><th>Option 1</th><th>Option 2</th><th>Option 3</th><th>Option 4</th><th>Answer</th>
  </tr>
<%!
Connection con;
Statement st1,st2,st3,st4,st5;
ResultSet rs;
int s11,s12,s13,s14,s15;         
%>    
        <%
     try
     {
          s11=Integer.parseInt(request.getParameter("id1"));
     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
if(s11==1)
{
st1=con.createStatement();
rs=st1.executeQuery("select * from cpptest order by question_no");
}
%>     
    
    <%
    while(rs.next())
    {
        int s1=rs.getInt("question_no");
        int s2=rs.getInt("question_id");
        String s10=rs.getString("Exam_Name");
        int s3=rs.getInt("E_id");
        String s4=rs.getString("question");
        String s5=rs.getString("option1");
        String s6=rs.getString("option2");
        String s7=rs.getString("option3");
        String s8=rs.getString("option4");
        String s9=rs.getString("Answer");
    %>
    
    <tr><td><%=s1%></td><td><%=s2%></td><td><%=s10%></td><td><%=s3%></td><td><%=s4%></td><td><%=s5%></td><td><%=s6%></td><td><%=s7%></td><td><%=s8%></td><td><%=s9%></td></tr>  
    <%
    }
     
      }
          catch(Exception e)
       {
           out.println(e);
   }
%>
<tr>
    <th>Question_No</th><th>Question_ID</th><th>Exam Name</th><th>Exam ID</th><th>QUESTION</th><th>Option 1</th><th>Option 2</th><th>Option 3</th><th>Option 4</th><th>Answer</th>
  </tr>
 <%
     try
     {
          s12=Integer.parseInt(request.getParameter("id2"));

     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
if(s12==2)
{
st2=con.createStatement();
rs=st2.executeQuery("select * from javatest order by question_no");
}
%>     

    <%
    while(rs.next())
    {
        int s1=rs.getInt("question_no");
        int s2=rs.getInt("question_id");
        String s10=rs.getString("Exam_Name");
        int s3=rs.getInt("E_id");
        String s4=rs.getString("question");
        String s5=rs.getString("option1");
        String s6=rs.getString("option2");
        String s7=rs.getString("option3");
        String s8=rs.getString("option4");
        String s9=rs.getString("Answer");
    %>
    
    <tr><td><%=s1%></td><td><%=s2%></td><td><%=s10%></td><td><%=s3%></td><td><%=s4%></td><td><%=s5%></td><td><%=s6%></td><td><%=s7%></td><td><%=s8%></td><td><%=s9%></td></tr>  
    <%
    }
     
      }
          catch(Exception e)
       {
           out.println(e);
   }
%>
<tr>
    <th>Question_No</th><th>Question_ID</th><th>Exam Name</th><th>Exam ID</th><th>QUESTION</th><th>Option 1</th><th>Option 2</th><th>Option 3</th><th>Option 4</th><th>Answer</th>
  </tr>
 <%
     try
     {
          s13=Integer.parseInt(request.getParameter("id3"));

     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
if(s13==3)
{
st3=con.createStatement();
rs=st3.executeQuery("select * from csharptest order by question_no");
}
%>     
    <%
    while(rs.next())
    {
        int s1=rs.getInt("question_no");
        int s2=rs.getInt("question_id");
        String s10=rs.getString("Exam_Name");
        int s3=rs.getInt("E_id");
        String s4=rs.getString("question");
        String s5=rs.getString("option1");
        String s6=rs.getString("option2");
        String s7=rs.getString("option3");
        String s8=rs.getString("option4");
        String s9=rs.getString("Answer");
    %>
    
    <tr><td><%=s1%></td><td><%=s2%></td><td><%=s10%></td><td><%=s3%></td><td><%=s4%></td><td><%=s5%></td><td><%=s6%></td><td><%=s7%></td><td><%=s8%></td><td><%=s9%></td></tr>  
    <%
    }
     
      }
          catch(Exception e)
       {
           out.println(e);
   }
%>
<tr>
    <th>Question_No</th><th>Question_ID</th><th>Exam Name</th><th>Exam ID</th><th>QUESTION</th><th>Option 1</th><th>Option 2</th><th>Option 3</th><th>Option 4</th><th>Answer</th>
  </tr>
 <%
     try
     {
     s14=Integer.parseInt(request.getParameter("id4"));
     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
if(s14==4)
{
st4=con.createStatement();
rs=st4.executeQuery("select * from pythontest order by question_no");
}
%>     

    <%
    while(rs.next())
    {
        int s1=rs.getInt("question_no");
        int s2=rs.getInt("question_id");
        String s10=rs.getString("Exam_Name");
        int s3=rs.getInt("E_id");
        String s4=rs.getString("question");
        String s5=rs.getString("option1");
        String s6=rs.getString("option2");
        String s7=rs.getString("option3");
        String s8=rs.getString("option4");
        String s9=rs.getString("Answer");
    %>
    
    <tr><td><%=s1%></td><td><%=s2%></td><td><%=s10%></td><td><%=s3%></td><td><%=s4%></td><td><%=s5%></td><td><%=s6%></td><td><%=s7%></td><td><%=s8%></td><td><%=s9%></td></tr>  
    <%
    }
     
      }
          catch(Exception e)
       {
           out.println(e);
   }
%>
<tr>
    <th>Question_No</th><th>Question_ID</th><th>Exam Name</th><th>Exam ID</th><th>QUESTION</th><th>Option 1</th><th>Option 2</th><th>Option 3</th><th>Option 4</th><th>Answer</th>
  </tr>
 <%
     try
     {
          s15=Integer.parseInt(request.getParameter("id5"));
     Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
if(s15==5)
{
st5=con.createStatement();
rs=st5.executeQuery("select * from ctest order by question_no");
}
%>     
    <%
    while(rs.next())
    {
        int s1=rs.getInt("question_no");
        int s2=rs.getInt("question_id");
        String s10=rs.getString("Exam_Name");
        int s3=rs.getInt("E_id");
        String s4=rs.getString("question");
        String s5=rs.getString("option1");
        String s6=rs.getString("option2");
        String s7=rs.getString("option3");
        String s8=rs.getString("option4");
        String s9=rs.getString("Answer");
    %>
    
    <tr><td><%=s1%></td><td><%=s2%></td><td><%=s10%></td><td><%=s3%></td><td><%=s4%></td><td><%=s5%></td><td><%=s6%></td><td><%=s7%></td><td><%=s8%></td><td><%=s9%></td></tr>  
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
    <center><input type="submit" value="Print Student Details" name="b1" onclick="printdata();" /></center>
</body>
</html>


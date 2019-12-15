<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Question Added</title>
    </head>
<body style="background-image: url('images/d.jpg');">
<%!
Connection con;
Statement st1,st2,st3,st4,st5;
%>       
<%
try
{
String s1=request.getParameter("b1");
String s3=request.getParameter("t1");
String s4=request.getParameter("t2");
String s5=request.getParameter("t3");
String s6=request.getParameter("t4");
String s7=request.getParameter("t5");
int s8=Integer.parseInt(request.getParameter("t6"));
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
if(s1.equals("c++"))
{
st1=con.createStatement();
int i=st1.executeUpdate("insert into cpptest (question_id,Exam_Name,E_id,question,option1,option2,option3,option4,answer) values("+1+",'"+s1+"',"+1+",'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"',"+s8+")");
}
if(s1.equals("java"))
{
st2=con.createStatement();
int i=st2.executeUpdate("insert into javatest (question_id,Exam_Name,E_id,question,option1,option2,option3,option4,answer) values("+2+",'"+s1+"',"+2+",'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"',"+s8+")");
}
if(s1.equals("c#"))
{
st3=con.createStatement();
int i=st3.executeUpdate("insert into csharptest (question_id,Exam_Name,E_id,question,option1,option2,option3,option4,answer) values("+3+",'"+s1+"',"+3+",'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"',"+s8+")");
}
if(s1.equals("python"))
{
st4=con.createStatement();
int i=st4.executeUpdate("insert into pythontest (question_id,Exam_Name,E_id,question,option1,option2,option3,option4,answer) values("+4+",'"+s1+"',"+4+",'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"',"+s8+")");
}
if(s1.equals("c"))
{
st5=con.createStatement();
int i=st5.executeUpdate("insert into ctest (question_id,Exam_Name,E_id,question,option1,option2,option3,option4,answer) values("+5+",'"+s1+"',"+5+",'"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"',"+s8+")");
}   
%>
    <center><h2>Question Added Successfully..</h2><img src="images/questions.jpg"></center>
<%
}
catch(Exception er)
{
    out.println(er);
}
%>
<hr><center> <tr>
<td  align="center">
 <a style="text-decoration: none" color="white"   href="ad.jsp">Admin's Home</a>&nbsp;&nbsp;&nbsp; <a style="text-decoration: none" color="white"   href="index.html">Home</a>
</td>
        </tr></center><hr>
</body>
</html>

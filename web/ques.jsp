<!doctype html>
<html>
    <head>
        <title>Question Updated</title>
    </head>
<body style="background-image: url('images/d.jpg');">
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
Connection con;
Statement st1,st2,st3,st4,st5;
%>  
<%
try
{
String s1=request.getParameter("b1");
String s2=request.getParameter("b2");
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
int i=st1.executeUpdate("update cpptest set question='"+s3+"',option1='"+s4+"',option2='"+s5+"',option3='"+s6+"',option4='"+s7+"',answer="+s8+" where Exam_Name='"+s1+"' and question_no='"+s2+"'");
}
if(s1.equals("java"))
{
st2=con.createStatement();
int i=st2.executeUpdate("update javatest set  question='"+s3+"',option1='"+s4+"',option2='"+s5+"',option3='"+s6+"',option4='"+s7+"',answer="+s8+" where Exam_Name='"+s1+"' and question_no='"+s2+"'");
}
if(s1.equals("c#"))
{
st3=con.createStatement();
int i=st3.executeUpdate("update csharptest set  question='"+s3+"',option1='"+s4+"',option2='"+s5+"',option3='"+s6+"',option4='"+s7+"',answer="+s8+" where Exam_Name='"+s1+"' and question_no='"+s2+"'");
}
if(s1.equals("python"))
{
st4=con.createStatement();
int i=st4.executeUpdate("update pythontest set  question='"+s3+"',option1='"+s4+"',option2='"+s5+"',option3='"+s6+"',option4='"+s7+"',answer="+s8+" where Exam_Name='"+s1+"' and question_no='"+s2+"'");
}
if(s1.equals("c"))
{
st5=con.createStatement();
int i=st5.executeUpdate("update ctest set  question='"+s3+"',option1='"+s4+"',option2='"+s5+"',option3='"+s6+"',option4='"+s7+"',answer="+s8+" where Exam_Name='"+s1+"' and question_no='"+s2+"'");
}   
%>
<center><h2>Question is updated successfully.</h2><img src="images/questions.jpg"></center>
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
        </body></html>
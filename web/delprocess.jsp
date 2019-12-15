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
        <title>Question Delete</title>
    </head>
<body style="background-image: url('images/d.jpg');">
      <%!
Connection con;
Statement st1,st2,st3,st4,st5;
ResultSet rs;
int i1,i4;
%>       
<%
try
{
String s1=request.getParameter("b1");
int s2=Integer.parseInt(request.getParameter("b2"));
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
//out.println(s1);
//out.println(s2);
if(s1.equals("c++"))
{
st1=con.createStatement();
i1=st1.executeUpdate("delete from cpptest where question_no="+s2+" ");
}
else if(s1.equals("java"))
{
st2=con.createStatement();
i1=st2.executeUpdate("delete from javatest where question_no="+s2+" ");
}
else if(s1.equals("c#"))
{
st3=con.createStatement();
i1=st3.executeUpdate("delete from csharptest where question_no="+s2+"");
}
else if(s1.equals("python"))
{
st4=con.createStatement();
i4=st4.executeUpdate("delete from pythontest where question_no="+s2+" ");
}
else if(s1.equals("c"))
{
st5=con.createStatement();
i1=st5.executeUpdate("delete from ctest where question_no="+s2+" ");
}   
%>
<center><h2>Question Deleted Successfully..</h2><img src="images/questions.jpg"></center>
<%
}
catch(Exception er)
{
    out.println(er);
}
%>
<hr><center> <tr>
<td  align="center">
 <a style="text-decoration: none; color:white"   href="ad.jsp">Admin's Home</a>&nbsp;&nbsp;&nbsp; <a style="text-decoration: none" color="white"   href="index.html">Home</a>
</td>
        </tr></center><hr>
</body>
</html>

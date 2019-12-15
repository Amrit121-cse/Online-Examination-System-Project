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
        <title>Student Result</title>
        <script>
            function printdata()
           {
               window.print();
           }
        </script>
    </head>
<%!
String r1;
String dd;
String s11;
String s5;
Connection con;
ResultSet rs;
PreparedStatement st1;
Statement st;
int i1;
int count;
%>
<% dd=(String)session.getAttribute("sname");%>
<% r1=(String)session.getAttribute("sname1");%>
<%
        try
        {
         
        i1=Integer.parseInt(request.getParameter("id"));  
       Class.forName("com.mysql.jdbc.Driver");
       con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
         st1=con.prepareStatement("select exam_name from exam7 where E_id=?");
         st1.setInt(1,i1);
         rs=st1.executeQuery();
      
        while(rs.next())
        {
             s11=rs.getString("exam_name");
        }
     
        }
        catch(Exception er)
       {
          out.println(er);
       }
        %>
  <link rel="stylesheet" href="css/Result.css" type="text/css"/>
    </head>
<body style="background-image: url('images/d.jpg');">
        <table class="s">
<tr>
<td bgcolor=#5F9EA0><b><font color=#F08080 size=3 face=roman
<center>
<marquee behavior="alternate" onmouseover=this.stop()
onmouseout=this.start()><font color=white size=4>Note:Marks less than 5 is Failed and greater than 5 is Passed. </font></marquee></font></b></td></tr></table>
      
            <div id="s">
            <a href="index.html">Home</a>|<a href="logout.jsp">Logout</a>
        </div>
        
            <table align="center">
            <tr>
                <th colspan="2">Result</th>
                
            </tr>
            <tr>
                <td>Student Name:</td>
                <td>
                    <%=dd%>
                </td>
                
            </tr>
           <tr>
                <td>Student ID:</td>
                <td>
                    <%=r1%>
                </td>
                
            </tr>
            <tr>
                <td>Given Exam:</td>
                <td>
                    <%=s11%>
                </td>
                
            </tr>
           <tr>
                <td>Total Questions:</td>
                <td>
                    10
                </td>
                
            </tr>
                  <tr>
                   <td>Marks Obtained</td>
                    <td><% 
          String s1=request.getParameter("cpp1");
          String s2=request.getParameter("cpp2");
          String s3=request.getParameter("cpp3");
          String s4=request.getParameter("cpp4");
          String s5=request.getParameter("cpp5");
          String s6=request.getParameter("cpp6");
          String s7=request.getParameter("cpp7");
          String s8=request.getParameter("cpp8");
          String s9=request.getParameter("cpp9");
          String s10=request.getParameter("cpp10");
          
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
          st=con.createStatement();
         
          count =0;
          if(s1.equals("r1"))
          {
              count=count+1;
          }
          if(s2.equals("r4"))
          {
              count=count+1;
          }
          if(s3.equals("r2"))
          {
              count=count+1;
          }
          
        if(s4.equals("r4"))
          {
              count=count+1;
          }
          if(s5.equals("r4"))
          {
              count=count+1;
          }
          if(s6.equals("r3"))
          {
              count=count+1;
          }
          if(s7.equals("r1"))
          {
              count=count+1;
          }
          
           if(s8.equals("r4"))
          {
              count=count+1;
          }
           if(s9.equals("r1"))
          {
              count=count+1;
          }
            if(s10.equals("r2"))
          {
              count=count+1;
          }
         out.println(count);
        %>
                </tr>
             <tr>
                <td>Remark:</td>
                <td>
                    <%if(count<5)
                    {
             
                        out.print("Fail");
                        s5="Fail";
                    }
         else
         {
                    out.print("Pass");
                    s5="Pass";
         }%>
                </td>
                
            </tr>
        </table>
              <%
               int e1=1;
              st.executeUpdate("insert into res values('"+dd+"',"+r1+","+i1+",'"+s11+"',"+count+",'"+s5+"')");
                %><br>
                <center>
                    <%
                    if(count<5)
                    {
                        
                        out.println("<img src='images/fail.jpg' width='400' height='300'/>");
                    }
                     else
                    {
                            out.println("<img src='images/pass.png' width='400' height='300'/>");
                    }
                    %>
                </center>
                <hr>
                <center><a class="next" style="text-decoration: none;" href="Finish.jsp">Finish</a>&nbsp;&nbsp;&nbsp;
                    <a  style="text-decoration: none;" class="next" href="answer1.jsp?id=<%=e1%>">View Answer</a></center>
                    <br> 
        <center><input type="submit" value="Print Result" name="b1" onclick="printdata();" /></center>
    </body>
</html>


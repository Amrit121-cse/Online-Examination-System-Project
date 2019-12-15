<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="refresh" content="600;url=over.jsp" />
<!DOCTYPE html>
<html>
<head>
<title>
</title>
<link rel="stylesheet" href="css/subjects.css" type="text/css"/>
<script LANGUAGE="JavaScript">
function ValidateForm(form){
ErrorText= "";
if ( ( form.cs1[0].checked == false ) && ( form.cs1[1].checked == false )&& ( form.cs1[2].checked == false )&& ( form.cs1[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.cs2[0].checked == false ) && ( form.cs2[1].checked == false )&& ( form.cs[2].checked == false )&& ( form.cs2[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.cs3[0].checked == false ) && ( form.cs3[1].checked == false )&& ( form.cs3[2].checked == false )&& ( form.cs3[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.cs4[0].checked == false ) && ( form.cs4[1].checked == false )&& ( form.cs4[2].checked == false )&& ( form.cs4[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.cs5[0].checked == false ) && ( form.cs5[1].checked == false )&& ( form.cs5[2].checked == false )&& ( form.cs5[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.cs6[0].checked == false ) && ( form.cs6[1].checked == false )&& ( form.cs6[2].checked == false )&& ( form.cs6[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.cs7[0].checked == false ) && ( form.cs7[1].checked == false )&& ( form.cs7[2].checked == false )&& ( form.cs7[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.cs8[0].checked == false ) && ( form.cs8[1].checked == false )&& ( form.cs8[2].checked == false )&& ( form.cs8[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
else if ( ( form.cs9[0].checked == false ) && ( form.cs9[1].checked == false )&& ( form.cs9[2].checked == false )&& ( form.cs9[3].checked == false )) 
{
alert ( "<h1>All questions are Mandatory!!</h1>" ); 
return false;
}
else if ( ( form.cs10[0].checked == false ) && ( form.cs10[1].checked == false )&& ( form.cs10[2].checked == false )&& ( form.cs10[3].checked == false )) 
{
alert ( "All questions are Mandatory!!" ); 
return false;
}
if (ErrorText== "") { form.submit() }
}
</script>
</head>
<body>
    <form action="csharpRes.jsp"/>
     <%
        
        String s1=request.getParameter("fname");
        String s2=request.getParameter("sid");
        String dd=(String)session.getAttribute("sname");  
       String r1=(String)session.getAttribute("sname1");
        %>
<table border=10 cellspacing=0 cellpadding=0 width="100%">
<tr>
<td bgcolor=#5F9EA0><b><font color=#F08080 size=3 face=roman
center>
<marquee behavior="alternate" onmouseover=this.stop()
onmouseout=this.start()><font color=white size=4><%
            String name =(String)session.getAttribute("sname");
        %>
        <%= "Welcome&nbsp&nbsp&nbsp" +name %>&nbsp;&nbsp;<%=r1%></font></marquee></font></b></td></tr></table>
<table border="3">
        <td>
<img src="images/csh.png" style="float:left" width="220" height="130"></td>

<a href="logout.jsp"><div class="logout">LOGOUT</div></a>
</div>
    <a href="help.jsp"><div class="help">HELP</div></a>
</table>
<div id="t">
    <jsp:include page="t.html"/> 
</div>
<hr>

<fieldset><legend>Questions</legend>
    
    <h3><center>C# Programming</center></h3>
<hr>
<% 
     
         try{ 
             Class.forName("com.mysql.jdbc.Driver");
          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
            Statement st = con.createStatement();
        ResultSet rs;
       rs = st.executeQuery("select question,option1,option2,option3,option4 from csharptest where question_no = '1' and E_id='3'");
          while(rs.next())
                   {
           out.println("Q.1)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='cs1' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs1' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs1' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs1' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } 
          out.print("</ol>");
         out.print("<hr/>");
         rs = st.executeQuery("select question,option1,option2,option3,option4 from csharptest where question_no = '2' and E_id='3'"); 
          while(rs.next()){
           out.println("Q.2)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='cs2' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs2' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs2' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs2' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } 
         out.print("</ol>");
         out.print("<hr/>");
         rs = st.executeQuery("select question,option1,option2,option3,option4 from csharptest where question_no = '3' and E_id='3'");
          while(rs.next()){
           out.println("Q.3)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='cs3' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs3' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs3' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs3' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } 
          out.print("</ol>");
         out.print("<hr/>");
        rs = st.executeQuery("select question,option1,option2,option3,option4 from csharptest where question_no = '4' and E_id='3'");
          while(rs.next()){
           out.println("Q.4)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='cs4' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs4' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs4' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs4' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } 
          out.print("</ol>");
          out.print("<hr/>");
        rs = st.executeQuery("select question,option1,option2,option3,option4 from csharptest where question_no = '5' and E_id='3'"); 
          while(rs.next()){
           out.println("Q.5)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='cs5' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs5' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs5' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs5' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } 
          out.print("</ol>");
          out.print("<hr/>");
        rs = st.executeQuery("select question,option1,option2,option3,option4 from csharptest where question_no = '6' and E_id='3'"); 
          while(rs.next()){
           out.println("Q.6)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='cs6' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs6' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs6' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs6' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } out.print("</ol>");
          out.print("<hr/>");
                    
                   
        rs = st.executeQuery("select question,option1,option2,option3,option4 from csharptest where question_no = '7' and E_id='3'");
          while(rs.next()){
           out.println("Q.7)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='cs7' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs7' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs7' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs7' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } out.print("</ol>");
          out.print("<hr/>");
                   
        rs = st.executeQuery("select question,option1,option2,option3,option4 from csharptest where question_no = '8' and E_id='3'");
          while(rs.next()){
           out.println("Q.8)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='cs8' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs8' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs8' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs8' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } out.print("</ol>");
          out.print("<hr/>");
                   
        rs = st.executeQuery("select question,option1,option2,option3,option4 from csharptest where question_no = '9' and E_id='3'");
          while(rs.next()){
           out.println("Q.9)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='cs9' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs9' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs9' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs9' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } out.print("</ol>");
          out.print("<hr/>");
                    
        rs = st.executeQuery("select question,option1,option2,option3,option4 from csharptest where question_no = '10' and E_id='3'");
          while(rs.next()){
           out.println("Q.10)<b>"+rs.getString(1)+"</b>");
           out.println("<ol type='A'>");
           out.println("<li><input type='radio' name='cs10' value='r1' />"+rs.getString(2)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs10' value='r2' />"+rs.getString(3)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs10' value='r3'  />"+rs.getString(4)+"<br><br></li>");
           out.println("<li><input type='radio' name='cs10' value='r4'  />"+rs.getString(5)+"<br><br></li>");
           
                    } out.print("</ol>");
          out.print("<hr/>");
                    
          }

         catch(Exception e)
         {
             out.print(e);
         } 
 int eid=Integer.parseInt(request.getParameter("id"));

 out.print("<input type='hidden'  name='id'  value='"+eid+"' /> ");  
out.print("<center><input class='next' type='submit' value='Submit' onclick='return ValidateForm(this.form)'></center>");                    
 %>
 <br><br><br>
</form>
</body>
</html>

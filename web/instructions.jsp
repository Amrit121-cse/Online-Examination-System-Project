<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="refresh" content="60;url=success.jsp" />
<!DOCTYPE html>
<html>
<head>
<title>
</title>
<style>
    body{
        background:blanchedalmond;
    }
.help
{
	text-align:center;
	padding:5px;
	width:5%;
	float:right;
	border:2px solid black;
}
.help:hover
{
	background:black;
	color:white;
	font-weight:bold;
	box-shadow:5px 5px 10px gray;
}
.logout
{
	text-align:center;
	padding:5px;
	width:5%;
	float:right;
	border:2px solid black;
}
.logout:hover
{
	background:black;
	color:white;
	font-weight:bold;
	box-shadow:5px 5px 10px gray;
}
fieldset
{
	width:80%;
	margin-left:10%;
	border-radius:3px;
	overflow:auto;
	background:white;
}
legend
{
	border:1px solid black;
	padding:5px;
	background:#6666ff;
	color:white;
	border-top-right-radius:1em;
	border-bottom-right-radius:1em;
}
.prev
{
	border:1px solid black;
	padding:10px;
	background:#6666ff;
	color:white;
	width:10%;
	border-radius:20px;
	font-weight:bold;
}
.prev:hover{background:white;color:blue;border:2px solid blue;}
.next:hover{background:white;color:blue;border:2px solid blue;}
.next
{
	margin-left:10px;
	border:1px solid black;
	padding:10px;
	background:#6666ff;
	color:white;
	width:10%;
	border-radius:20px;
	font-weight:bold;
}
#t
{
   float:right; 
}
</style>
</head>
<body style="background-image: url('images/d.jpg');">
    <%!
    Connection con;
    %>
    <%
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
            HttpSession ses = request.getSession(false);
            String connectedUName =(String) ses.getAttribute("sname");
            if (connectedUName!= null) {
        %>
    <form action="success.jsp" method="post"/>
    <div>
<a href="logout.jsp"><div class="logout">LOGOUT</div></a>
<a href="help.jsp"><div class="help">HELP</div></a>
</div> 
   <%
 String name =(String)session.getAttribute("sname");
 String name1=(String)session.getAttribute("sname1");
%>
<center><h4><%= "Welcome&nbsp&nbsp&nbsp" +name %>&nbsp;&nbsp;<%=name1%></h4></center> 
    <div id="t">
 <jsp:include page="timers.jsp"/></div><br>
<hr>
<fieldset><legend>Test Direction</legend>
    <p>Your test will be start in few minute.Please go through the instructions carefully will also be accessible using the <b>'HELP'</b> button the whole duration of the Exam.</p>
<p>Your Exam ID for this exam is &nbsp;<b><%=name1%> </b>Please note it down at a secure place for future reference.</p>
<hr>
<h3>Instructions:</h3>
<ol type="1">
<li> Each module has a fixed number of questions and an alloted time.The time remaining for the module is shown 
on the <b>right corner</b> of the screen throughout the exam.</li>
<li>You may take an <b>Emergency Break</b> at any other Time.However the time will <b>Not</b> stop in such 
cases.</li>
<li>Be at your seat until the completion of the exam.Don't talk and do not indulge any cheating.Your condiature 
may be <b>Canceled</b> for any infractions.</li>
<li>In case of any problem with the question please <b>Note</b> down it for share it with us with email after 
you finish your test.</li>
</ol>
<ol type="1">
<h3>How to answer the question:</h3>
<li>Each question has direction on how to answer the question.</li>
<li>you can chose the appropriate answer by clicking the checkbox on it.</li>
<li>Once you have completed the Exam,press the submit button</li>
</ol>
</fieldset>
<br>
<center>
<input class="next" type="submit" value="Proceed">
</center>
</form>
<%
                con.close();
            } else {
                out.print("<center><h3 style=\"color:red;\">Login First. </h3></center>");
                request.getRequestDispatcher("login.jsp").include(request, response);
            }
        %>
</body>
</html>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>
        <title>Online Examination System</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
             <script src="js/jquery-1.12.0.min.js"></script>
        <script>
        $("#slideshow > div:gt(0)").hide();

        setInterval(function () {
            $('#slideshow > div:first')
              .fadeOut(1000)
              .next()
              .fadeIn(1000)
              .end()
              .appendTo('#slideshow');
        }, 3000);

    </script>             
<link rel="stylesheet" href="css/Success.css" type="text/css"/> 
             <title>Welcome User</title>
    </head>
<body style="background-image: url('images/d.jpg');">
       <%!
    Connection con;
    %>
    <%
        //Display the username and id to the next page//
            Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
            HttpSession ses = request.getSession(false);
            String connectedUName =(String) ses.getAttribute("sname");
            if (connectedUName!= null) {
        %>
<table border=10 cellspacing=0 cellpadding=0 width="100%">
<tr>
<td bgcolor=#2F4F4F><b><font color=#F08080 size=3 face="bold"
center>
<marquee behavior="alternate" onmouseover=this.stop()
onmouseout=this.start()><font color=white size=4><%
            String name =(String)session.getAttribute("sname");
            String name1=(String)session.getAttribute("sname1");
        %>
        <%int id=1;%>
        <%= "Welcome&nbsp&nbsp&nbsp" +name %></font></marquee></font></b></td></tr></table>
        <div id="slideshow">
   <div>
   </div>
    <div>
       <img src="images/std2.jpg" width="1366px" height="255px"  />
   </div>
             <div>
       
   </div>
   
    <div>
       <img src="images/std3.jpg" width="1366px" height="255px" />
   </div>   
</div><br><br>
        <hr>
    <ul>
  <li><a class="active" href="index.html">HOME</a></li>
  <li><a  href="test.jsp">GIVE EXAM</a></li>
<%out.print("<li><a href='change.jsp?id="+id+"'>CHANGE PASSWORD</a></li>");%>
  <ul style="float:right;list-style-type:none;">
    <li><a href="contact us.jsp">CONTACT</a></li>
    <li><a href="help.jsp">HELP</a></li>
    <li><a href="logout.jsp">LOGOUT</a></li>  
  </ul>
</ul>
  <%
                con.close();
            } else {
                out.print("<center><h3 style=\"color:red;\">Login First. </h3></center>");
                request.getRequestDispatcher("login.jsp").include(request, response);
            }
        %><br><br>
        <footer>
            <center> <p><em>©Online Examination System.</em></p></center>
        </footer>

    </body>
</html>

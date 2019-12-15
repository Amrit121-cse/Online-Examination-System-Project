<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<link rel="stylesheet" href="css/Test.css" type="text/css"/>
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
        
<form>
<table border=10 cellspacing=0 cellpadding=0 width="100%">
<tr>
<td bgcolor=#5F9EA0><b><font color=#F08080 size=3 face=roman
center>
<marquee behavior="alternate" onmouseover=this.stop()
onmouseout=this.start()><font color=white size=4><%
            String name =(String)session.getAttribute("sname");
            String r1=(String)session.getAttribute("sname1"); 
        %>
        <%= "Welcome&nbsp&nbsp&nbsp" +name %></font></marquee></font></b></td></tr></table>
        <div id="slideshow">
   <div>
   </div>
    <div>
       <img src="images/std2.jpg" width="1366px" height="255px"  />
   </div>
             <div>
       <img src="images/std3.jpg" width="1366px" height="255px" />
   </div>
   
    <div>
   </div>
           
</div><hr> <br><br>
<ul>
  <li><a class="active" href="index.html">HOME</a></li>
<% 
int e1=1;
int e2=2;
int e3=3;
int e4=4;
int e5=5;

out.print("<li><a href='cpp.jsp?id="+e1+"'>C++</a></li>");   
out.print("<li><a href='java.jsp?id="+e2+"'>JAVA</a></li>"); 
out.print("<li><a href='csharp.jsp?id="+e3+"'>C#</a></li>");
out.print("<li><a href='python.jsp?id="+e4+"'>PYTHON</a></li>");
out.print("<li><a href='c.jsp?id="+e5+"'>C</a></li>");%>
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
        %> 
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br>
<footer>
            <center> <p><em>©Online Examination System.</em></p></center>
        </footer>
    </form>
</body>
</html>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
        <script type="text/javascript" src="backNoWork.js"></script>
<style>
                a {
    display: relative;
    color: #666;
    text-align: center;
    padding: 14px 16px;
    
}

a:hover {
    background-color: #FFB6C1;
}
                </style>
    </head>
<body style="background-image: url('images/d.jpg');">
        <%
response.setHeader("Pragma","no-cache"); 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Expires","0"); 
response.setDateHeader("Expires",-1); 
session.invalidate();
        %>
    <center><h1><font>You are Successfully logged out...</font></h1></center><br>
    <center><img src="images/log.png" alt="Logout"></center><br><br>
    <center><a style="text-decoration: none; color: wheat;" href="index.html">Home</a></center>
    </body>
</html>

   
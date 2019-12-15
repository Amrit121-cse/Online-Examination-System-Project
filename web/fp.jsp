
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Forgot Password Page</title>  
   
        <link rel="stylesheet" href="css/styles.css">
  </head>
<body style="background-image: url('images/d.jpg');">
      <div id="s">
          <a href="index.html">HOME</a>&nbsp;|&nbsp;<a href="logout.jsp">LOGOUT</a></div>
      <br/><br/><br/><br/><br/><br/>
      
    <section>
  <span></span>
  <h1>Forgot Password</h1>
  <form action="fpass.jsp" method="post">
      <input placeholder="Uname" type="text"  required name="name" autocomplete="off"> 
      <input placeholder="Enter Your Security Answer" required type="password"  name="s1" autocomplete="off">
  <button title="Click Login Button">Get Password</button></form>
  <h2>
    <a href='login.jsp'>Login Here</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html">Home</a> 
  </h2>
</section>    
  </body>
</html>


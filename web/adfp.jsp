
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
  <form action="adfpass.jsp" method="post">
      <input placeholder="Admin Name" required type="text"  name="name" autocomplete="off"> 
      <input type="password" name="ss" required placeholder="Enter Your Security Answer"/>
  <button title="Click Login Button">Get Password</button></form>
  <h2>
    <a href='admin.jsp'>Suddenly Remembered?Login here</a> 
  </h2>
</section>    
  </body>
</html>


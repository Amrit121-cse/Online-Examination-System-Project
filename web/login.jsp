<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Login Page</title>  
   
    <link rel="stylesheet" href="css/styles.css">
<style>
input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button 
{ 
  -webkit-appearance: none; 
  margin: 0; 
}
body
{
	margin:0;
}
footer
{
    margin: 0;
    width: 100%;
    height: 30px;
    background-color: greenyellow;
    line-height: 6px;
    position:relative;
    bottom:1.6px;
    clear:both;
    position: fixed;
    z-index: 100;
    opacity: 0.90%;  
}

</style>
  </head>
    
<body style="background-image: url('images/d.jpg');">
      
      <br/><br/><br/><br/><br/>
     <form action="loginprocess.jsp" method="post">
        
    <section>
  <span></span>
  <h1>Student Login</h1>
   <input placeholder="User Name" autocomplete="off"  type="text" required name="uname" title="Please Enter User Name.">
    <input placeholder="Student ID" autocomplete="off"  type="number" required name="id" title="Please Enter Student ID.">
   <input placeholder="Password" type="password" autocomplete="off"  required name="pass"  title="Please Enter Your Password.">

  <button title="Click Login Button">LOGIN</button>
  <h2>
   
      <a href="fp.jsp">Forgot Password?</a>&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="reg.jsp">Register</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html">Home</a>
  </h2>
</section>  </form>

  </body>
  
</html>
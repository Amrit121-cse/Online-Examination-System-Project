<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Login Page</title>  
<script type="text/javascript">
function val(){
if((frm.newpass.value).length <6)
{
	alert("Password should be minimum 6 characters.");
	return false;
}
if(frm.confirm.value != frm.newpass.value)
{
	alert("Password confirmation does not match.");
	return false;
}
}
</script>
    <link rel="stylesheet" href="css/styles.css">
    <style>
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
    opacity: 0.90%
}  

    </style>
  </head>
    
<body style="background-image: url('images/d.jpg');">
      
      <br/><br/><br/><br/><br/>
     <form name ="frm" action="changepass.jsp" method="post">
      <%
    String op=(String)session.getAttribute("sname2");
    String dd=(String)session.getAttribute("sname");%>  
    <section>
  <span></span>
  <h1>Change Password</h1>
   <input  value="<%=dd%>" type="text" required name="uname" disabled title="Student Name">
<input placeholder="Old Password" autocomplete="off" type="password" required name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"/>
<input placeholder="New Password" type="password" autocomplete="off"  required name="newpass" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" >
<input placeholder="Re-Enter New Password" type="password" autocomplete="off"  required name="confirm"  title="Password should not be blnak.">
 <input type="submit" title="Click To Change" value="CHANGE" onclick="return val();"/>
 
  <h2>
      <a href="fp.jsp">Forgot Password?</a>&nbsp;&nbsp;
      &nbsp;&nbsp;<a  href="index.html"<h1>Home</a>
  </h2>
</section> 
 </form>

  </body>
  
</html>
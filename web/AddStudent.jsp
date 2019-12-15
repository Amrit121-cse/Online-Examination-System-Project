<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Add Student</title>  
    
    <link rel="stylesheet" href="css/style1.css">
    <script type="text/javascript">
function val(){
if((frm.pass.value).length <6)
{
	alert("Password should be minimum 6 characters.");
	return false;
}
if(frm.cpass.value !== frm.pass.value)
{
	alert("Password confirmation does not match.");
	return false;
}
}
function check()
{
    if((frm.sid.value).length !==5)
{
	alert("Password should be 5 digit only.");
	return false;
}
}
</script>
<style>
input[type=number]::-webkit-inner-spin-button, 
input[type=number]::-webkit-outer-spin-button 
{ 
  -webkit-appearance: none; 
  margin: 0; 
}
</style>
  </head>
<body style="background-image: url('images/d.jpg');">
 
    <section>
  <span></span>
  <h1>Add Students Here</h1> 
  <form name="frm" action="register.jsp" method="post">
<input autocomplete="off" placeholder="Full Name" type="text" required  name="fname" pattern="[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" title="Full Name should not contain any digit."/>
    <input autocomplete="off" placeholder="Student ID(eg. 12345)" type="number" required  name="sid"   maxlength="5" title="Student ID should be 5 digit only"/> 
    <input autocomplete="off" placeholder="Email" type="email" required name="email" title="for eg. xyz@something.com"/>
    <select name="s"><option selected disabled="false">Select Your Gender</option><option>Male</option><option>Female</option><option>Other</option></select>
    <input type="Date" required name="dob" pattern="(0[1-9]|1[0-9]|2[0-9]|3[01]).(0[1-9]|1[012]).[0-9]{4}" title="Please Enter Your D.O.B."/>
    <input autocomplete="off" placeholder="User Name" type="text" required name="uname" pattern="[a-zA-Z0-9]{4,12}" title="user name should be unique ,or can be a alphanumeric and should be in between 4 to 12 chars only." />
    <input placeholder="Password" autocomplete="off" type="password" required name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" onkeyup="checkPass(); return false;"/>
    <input placeholder="Re-type Password" autocomplete="off" type="password" required name="cpass" title="Please Re-type Your Password"/>
    <select required name="s1"><option selected disabled="false">Select Your Security Question</option><option>What is your favorite food?</option><option>Who is your favorite cricketer?</option><option>What is your nick name?</option></select>
    <input type="password" name="ss" required placeholder="Your Answer" title="Enter Your Answer"/>
    <input type="submit"title="Click Login Button"value="Add Student" onclick="return val(),check();"/>
    <center><a href="ad.jsp">Admin's Home</a></center>
  </form>
</section> 
  </body>
</html>
 
    </body>
</html>

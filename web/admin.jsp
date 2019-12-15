<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
        <style>
  body
{
     font: 16px Helvetica;
     margin: 0;
}


section {
  width: 275px;
  background: #ecf0f1;
  padding: 0 30px 30px 30px;
  margin: 60px auto;
  text-align: center;
  border-radius: 5px;
}

span {
  display: block;
  position: relative;
  margin: 0 auto;
  top: -40px;
  height: 80px;
  width: 80px;
  background: url('images/admin.png') center center no-repeat, #f39c12;
  border-radius: 50%;

}

h1 {
  font-size: 24px;
  font-weight: 100;
  margin-bottom: 30px;
}

input {
  width: 100%;
  background: #bdc3c7;
  border: none;
  height: 30px;
  margin-bottom: 15px;
  border-radius: 5px;
  text-align: center;
  font-size: 14px;
  color: #7f8c8d;
}

input:focus
{
  outline: none;
  color:black;
  background:white;
}

button {
  width: 100%;
  height: 30px;
  border: none;
  background: #3498db;
  color: #ecf0f1;
  font-weight: 100;
  margin-bottom: 15px;
  border-radius: 5px;
  transition: all ease-in-out .2s;
  border-bottom: 3px solid #2980b9;
}

button:focus {
  outline: none;
}

button:hover {
  background: #2980b9;
}

h2 {
  font-size: .75em;
}

a {
  color: #e74c3c;
  text-decoration: none;
  transition: all ease-in-out .2s;
}

a:hover {
  color: #c0392b;
}
select
{
  width: 100%;
  background: #bdc3c7;
  border: none;
  height: 30px;
  margin-bottom: 15px;
  border-radius: 5px;
  text-align: center;
  font-size: 14px;
  color: #7f8c8d;
}
select:focus
{
    outline: none; 
    background:white;
    color:black;
}
footer
{
    margin: 0;
    width: 100%;
    height: 30px;
    background-color:greenyellow;
    line-height: 6px;
    position:relative;
    bottom:2px;
    clear:both;
    position: fixed;
    z-index: 100;
    opacity: 0.90%;  
}

        </style>
     </head>
<body style="background-image: url('images/d.jpg');">
  <form action="administrator.jsp" method="post">

       <section>
  <span></span>
  <h1>Administration Login</h1>
    <input placeholder='Admin Name' type='text' required name="uname" autocomplete="off" title="Enter Admin Name">
    <input placeholder='Password' type='password' required  name="upass"  title="Enter Password">
    <select required name="s1"><option selected disabled="false">Select Your Security Question</option><option>What is your favorite food?</option><option>Who is your favorite cricketer?</option><option>What is your nick name?</option></select>
    <input type="password" name="ss" required placeholder="Your Answer" title="Please Enter Your Security Answer."/>
  <button title="Click Login Button">LOGIN</button></form>
  <h2>
    <a href='adfp.jsp'>Forgot Password?</a>
    &nbsp; &nbsp; <a href='index.html'>Home</a>
  </h2>
</section>

    </body>
</html>

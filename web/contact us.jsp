<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Contact/Feedback me</title>  
    <style>
        h1{
            color:yellow;
        }
        h2{
            color:black;
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
        <link rel="stylesheet" href="css/styles.css">
  </head>
  <body style="background-image: url('images/d.jpg');">
 <center><h1> </h1></center>
      
      <br/><br/><br/>
      
    <section>
  <span></span>
  <h3>Contact/Feedback</h3>
  <form action="ContactProcess.jsp" method="post">
      <input placeholder="subject" required type="text"  name="subject" autocomplete="off"> 
      <textarea placeholder="Write Your Comment Here" required rows="5" cols="30" name="content"></textarea>
      
  <button title="Click to remove">Send Email</button></form>
  <a href="index.html">HOME</a>
</section>    
     
  </body>
</html>


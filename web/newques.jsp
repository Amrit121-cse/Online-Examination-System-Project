<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Add Questions</title>  
   
        <link rel="stylesheet" href="css/styles.css">
  </head>
  <body background="images/blue.jpg">
      <div id="s">
          <a href="index.html">HOME</a>&nbsp;|&nbsp;<a href="logout.jsp">LOGOUT</a></div> 
    <section>
  <span></span>
  <h1>Add Questions</h1>
  <form action="newquesprocess.jsp" method="post">
      <select name="b1">
                <option>Select Your Exam ID</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                        </select>
     
      <textarea placeholder="Write Your Question Here" required  name="t1"></textarea><br>
      <input type="text" name="t2" value="" placeholder="Option 1" required/><br>
      <input type="text" name="t3" value="" placeholder="Option 2" required/><br>
      <input type="text" name="t4" value="" placeholder="Option 3" required/><br>
      <input type="text" name="t5" value="" placeholder="Option 4" required/><br>
      <input type="number" name="t6" value="" placeholder="Enter Answer" required/>
      
      
  <button title="Click to Add">ADD</button></form>
</section>    
  </body>
</html>


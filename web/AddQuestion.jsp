<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Add Questions</title>  
   
        <link rel="stylesheet" href="css/styles.css">
  </head>
<body style="background-image: url('images/d.jpg');">

    <section>
  <span></span>
  <h1>Add Questions</h1>
  <form action="addprocess.jsp" method="post">
      <select name="b1" required>
                <option>Select Your Exam Name</option>
                <option>c++</option>
                <option>java</option>
                <option>c#</option>
                <option>python</option>
                <option>c</option>
                        </select>
     <textarea placeholder="Write Your Question Here" required  name="t1" autocomplete="off"></textarea><br>
      <input type="text" name="t2" value="" placeholder="Option 1" required autocomplete="off"/><br>
      <input type="text" name="t3" value="" placeholder="Option 2" required autocomplete="off"/><br>
      <input type="text" name="t4" value="" placeholder="Option 3" required autocomplete="off"/><br>
      <input type="text" name="t5" value="" placeholder="Option 4" required autocomplete="off"/><br>
      <select name="t6" required>
          <option disabled selected>Enter Your Answer</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                        </select> 
  <button title="Click to Add">ADD</button></form>
  <a href="ad.jsp">Admin's Home</a>
</section>    
  </body>
</html>


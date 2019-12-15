<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Delete Questions</title>  
   
        <link rel="stylesheet" href="css/styles.css">
  </head>
<body style="background-image: url('images/d.jpg');">

    <section>
  <span></span>
  <h1>Delete Questions</h1>
  <form action="delprocess.jsp" method="post">
      <select name="b1" required>
                <option>Select Your Exam Name</option>
                <option>c++</option>
                <option>java</option>
                <option>c#</option>
                <option>python</option>
                <option>c</option>
                        </select>
      <select name="b2" required>
                <option>Select Your Question No.</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
                <option>13</option>
                <option>14</option>
                <option>15</option>
                        </select>
      
      
  <button title="Click to Delete">DELETE</button></form>
  <a href="ad.jsp">Admin's Home</a>
</section>    
  </body>
</html>


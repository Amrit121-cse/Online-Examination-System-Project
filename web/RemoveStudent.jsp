<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Remove Student</title>  
   
        <link rel="stylesheet" href="css/styles.css">
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
      <br/><br/><br/><br/><br/><br/>
      
    <section>
  <span></span>
  <h1>Remove Student</h1>
  <form action="removed.jsp" method="post">
      <select required name="t1">
          <option disabled selected>Select student ID</option>
      <%!
       Connection con;
       Statement st;
       ResultSet rs;
       String sid;
      %>
      <%
      try
      {
      Class.forName("com.mysql.jdbc.Driver");
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
      st=con.createStatement();
      rs=st.executeQuery("select distinct s_id from students");
      while(rs.next())
      {
          sid=rs.getString("s_id");
          %>         
    <option><%=sid%></option>
    <%
       }
       }
      catch(Exception e)
      {
          out.println(e);
      }
      
    %>
    </select>  
    <button title="Click to remove">Remove</button></form>
  <a href="ad.jsp">Admin's Home</a>
  </body>
</html>


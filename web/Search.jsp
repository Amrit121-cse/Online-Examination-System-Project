<%@page import="java.sql.ResultSetMetaData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
        <style>
            body{
                margin:0;
            }
table 
{
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

th
{
    background-color: orange;
}
td, th {
    border: 1px solid black;
    text-align: center;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
}
</style>
    </head>
    <body style="background-image: url('images/d.jpg');">
        <%!
        Connection con;
        Statement st;
        ResultSetMetaData rsmd;
        PreparedStatement ps;
       int i;
        %>
        <%
             try
            {
	   String Sid=request.getParameter("search");
           int s1=Integer.valueOf(Sid);
           
                Class.forName("com.mysql.jdbc.Driver");
               con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","");
                
                ps=con.prepareStatement("select Fname,s_id,Email,Gender,DOB,Uname,Reg_Date from students where s_id=?");
                ps.setInt(1,s1);
               
			out.print("<table width=50% border=1>");
			out.print("<caption>Search Result:</caption>");
			ResultSet rs=ps.executeQuery();
			
			/* Printing column names */
			ResultSetMetaData rsmd=rs.getMetaData();
			int total=rsmd.getColumnCount();
			out.print("<tr>");
			for(i=1;i<=total;i++)
			{
				out.print("<th>"+rsmd.getColumnName(i)+"</th>");
				
			}
			out.print("</tr>");
			/* Printing result */
			while(rs.next())
			{
			out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getInt(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>");
				
			}
			out.print("</table>");
        }
            catch(Exception e)
            {
                e.printStackTrace();
                out.print(e);
                
            }  
        %>
         
    </body>
</html>

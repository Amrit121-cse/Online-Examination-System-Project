<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/admin.css" type="text/css"/>
</head>
<body>
<%
int eid1=1;
int eid2=2;
int eid3=3;
int eid4=4;
int eid5=5;
%>
<header>
<ul>
             <li><a href='index.html'>Home</a></li>
<li><a href='#'>Student Management</a>
	<ul class="dropdown">
	<li><a href='stm.jsp'>Student Details</a></li>
	<li><a href='AddStudent.jsp'>Add Student</a></li>	
	<li><a href='RemoveStudent.jsp'>Remove Student</a></li>
	</ul>
</li>
<li><a href='stud_Result.jsp'>Result Management</a></li>
		
	<li><a href='report.jsp'>Report Management</a></li>

<li><a href='#'>Question Management</a>
	<ul class="dropdown">
        <li><a href='AddQuestion.jsp'>Add Question</a></li>
	<li><a href='UpdateQuestion.jsp'>Update Question</a></li>
        <li><a href='DeleteQuestion.jsp'>Delete Question</a></li>
        <li><a href='QuestionList.jsp?id1=<%=eid1%>&id2=<%=eid2%>&id3=<%=eid3%>&id4=<%=eid4%>&id5=<%=eid5%>'>View Question List</a></li>
	</ul></li>
        <li><a href='about.jsp'>About</a></li>
    <li><a href='logout.jsp'>Logout</a></li>
</ul></header>
        <img src="images/zone.jpg" alt="admin zone"/>
<h1>Student Management</h1>
<p style="color:red;"> You can View,Add and Remove the already added Students Details.Administrator can also add a new 
Student for a particular test under this section. </p>
<hr/>
<h1>Result Management</h1>
<p style="color:red"> You can view the  Result  under this Result Management section. </p>
<hr/>

<h1>Report Management</h1>
<p style="color:red"> You can view the overall Report of the students under this Report Management section. 
</p>

<hr/>
<h1>Question Management</h1>
<p style="color:red"> You can View,Add,Delete,Update the already added questions under this Question Management 
section. </p>
<hr/><br><br>
<footer>
            <center> <p><em>©Online Examination System.</em></p></center>
        </footer>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "student";
String userid = "root";
String password = "1810";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!Doctype html>
<html>
	<head>
	<title>viewtable</title>
	<style>
	     *{
		 
		  padding:0px;
		  margin:0px;
		 }
		 #a{
			   width:100%;
			   min-height:25%;
			   background-color:lightblue;
			   
			   
			  
			}	
			#b{
			    font-size:25px;
				margin-left:50%;
			}
			#c{
			   padding:7px;
			   display:inline-block;
			}
		#d{
		    font-size:20px;
			margin-bottom:50px;
	
		}
		#e{
		   margin:auto;
		   font-size:20px;
		   margin-top:20px;
		   
		
		}
        #z{
		    width:100%;
			height:6%;
			background-color:lightblue;
	        position:fixed;
			bottom:0;
		}
		#y{
		    text-align:center;
		    font-size:20px;
			width:100%;
			height:6%;
			line-height:47px;
		
		
		}
		#body-div{
		   background-image:url("kedar14.jpg");
		   background-repeat:no-repeat;
		   background-size:cover;
		  
		}
		.c1{
				float:left;
				margin-top:0px;
				border-radius:30px;
				margin-left:25px;
				font-size:25px;
			}
			
	</style>
	</head>
	
	<body id="body-div">
	<nav id="a">
		
		<ul>
		<div class="c1">
		     <%
		String session_u_email=(String)session.getAttribute("email");
		out.print("welcome: "+session_u_email);
		%>
		    </div>
		<div id="b">
		<li id="c"><a href="ahome.jsp"style="text-decoration:none;">Home</a></li>
			<li id="c"><a href="aabout.jsp"style="text-decoration:none;">About</a></li>
			<li id="c"><a href="addemployee1.jsp"style="text-decoration:none;">Add Employee</a></li>
			<li id="c"><a href="viewemp.jsp"style="text-decoration:none;">View Employee</a></li>
			<li id="c"><a href="aleave.jsp"style="text-decoration:none;">view-Leave</a></li>
			<li id="c"><a href="alogin.html"style="text-decoration:none;">logout</a></li>
		</div>
		</ul>
	
		</nav>
		<table border="3" cellspacing="0" id="e">
			<tr id="d">
				<th>Employee Name</th>
				<th>Employee Id</th>
				<th>Employee email</th>
				<th>Phone</th>
				<th>Address</th>
				<th>Qalification</th>
				<th>Job name</th>
				<th>Jobe type</th>
				<th>Country</th>
				<th>State</th>
				<th>City</th>
				<th colspan="3">action</th>
			</tr>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1810");
statement=connection.createStatement();
String sql ="select * from addemp";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("empid") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("empaddress")%></td>
<td><%=resultSet.getString("qualification")%></td>
<td><%=resultSet.getString("jobname") %></td>
<td><%=resultSet.getString("jobtype") %></td>
<td><%=resultSet.getString("country") %></td>
<td><%=resultSet.getString("state") %></td>
<td><%=resultSet.getString("city") %></td>
<td><a href="update.jsp?id=<%=resultSet.getString("id")%>"><button type="button" class="update">update</button></a></td>
<td><a href="delete.jsp?id=<%=resultSet.getString("id") %>"><button type="button"  class="delete">Delete</button></a></td>
<td><a href="task.jsp?id=<%=resultSet.getString("id")%>"><button type="button" class="Task">Task</button></a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
<footer id="z">
<p id="y">&copykedarnath</p></footer>

</body>
</html>
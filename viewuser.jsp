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
			<title>Home Page</title>
			<style>
			*{
			  margin:0px;
			  padding:0px;
			}
			#a{
			   width:100%;
			   min-height:25%;
			   background-color:lightblue;
			   
			   
			  
			}	
			#b{
			    font-size:30px;
				margin-left:65%;
			}
			#c{
			   padding:7px;
			   display:inline-block;
			}
			#d{
			   position:fixed;
			   bottom:0;
			   width:100%;
			   height:6%;
			   background-color:lightblue;
			   }
			#e{
            text-align:center;
			font-size:20px;
			text-bottom:5px;
			width:100%;
			height:6%;
			line-height:48px;
			}
			#f{
		    font-size:20px;
			margin-bottom:50px;
	
		}
		#g{
		   margin:auto;
		   font-size:20px;
		   margin-top:60px;
		   
		
		}
		.h{
		  border:solid 3px;
		  width:40%;
		  height:450px;
		   font-size:35px;
		   margin:auto;
           		
		
		}
		.c1{
				float:left;
				margin-top:0px;
				border-radius:30px;
				margin-left:25px;
			}
			
			</style>
		</head>
		<body>
		<%
		String session_u_email=(String)session.getAttribute("email");
		out.print("welcome"+session_u_email);
		%>
			<nav id="a">
			<ul>
			<div class="c1">
		    <img src="logo2.png"style="height:44px;width:60px;border-radius:20px;"/>
		    </div>
			<div id="b">
			<li id="c"><a href="uhome.jsp">Home</a></li>
			<li id="c"><a href="uabout.jsp">About</a></li>
			<li id="c"><a href="viewuser.jsp">Information</a></li>
			<li id="c"><a href="logoutprocess.jsp">logout</a></li>
			</div>
			</ul>
			</nav>
			<table border="3" cellspacing="0" id="g">
			<tr id="f">
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
			</tr>
			<%
try{

	String session_u_email1=(String)session.getAttribute("email");
	out.print("welcome"+session_u_email);

connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1810");
statement=connection.createStatement();
String sql ="select * from addemp where email='"+session_u_email1+"'";
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
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
			
			</table>
			
			<footer id="d">
			<p id="e">&copykedarnath</p>
			</footer>
		
		
		</body>
</html>
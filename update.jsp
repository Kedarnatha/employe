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
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1810");
statement=connection.createStatement();
String sql ="select * from addemp where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<head>
<style>
#a{
 border:solid 3px;
 margin-left:10%;
 width:40%;
}
#b{
padding:15px;
font-size:30px;
}
#c{
 font-size:25px;
 margin-left:160px;
}
body{
 background-color:white;
}
</style>
</head>
<body>
<h1>Update data from database in jsp</h1>
<div id="a">
<form method="post" action="update-process.jsp">
<input type="hidden" name="id" value="<%=resultSet.getString("id") %>">
<br>
<div id="b">
Name:
<input type="text" name="name" style="margin-left:85px;" value="<%=resultSet.getString("name") %>">
<br>
Empid:
<input type="text" name="empid" style="margin-left:76px;" value="<%=resultSet.getString("empid") %>">
<br>
Email:
<input type="text" name="email" style="margin-left:85px;" value="<%=resultSet.getString("email") %>">
<br>
Phone:
<input type="number" name="phone" style="margin-left:84px;" value="<%=resultSet.getString("phone") %>">
<br>
Empaddress:
<input type="text" name="empaddress"style="margin-left:13px;" value="<%=resultSet.getString("empaddress") %>">
<br>
Qualification:
<input type="text" name="qualification" style="margin-left:5px;" value="<%=resultSet.getString("qualification") %>">
<br>
Jobname:
<input type="text" name="jobname" style="margin-left:52px;" value="<%=resultSet.getString("jobname") %>">
<br>
Jobtype:
<input type="text" name="jobtype" style="margin-left:64px;" value="<%=resultSet.getString("jobtype") %>">
<br>
Country:
<input type="text" name="country" style="margin-left:63px;" value="<%=resultSet.getString("country") %>">
<br>
State:
<input type="text" name="state" style="margin-left:98px;" value="<%=resultSet.getString("state") %>">
<br>
City:
<input type="text" name="city" style="margin-left:108px;" value="<%=resultSet.getString("city") %>">
<br><br>
<input type="submit" id="c" value="submit">
</div>
</form>
</div>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>
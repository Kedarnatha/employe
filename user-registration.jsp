<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
<body>
<%
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","1810"); 
Statement st=con.createStatement();
String name=request.getParameter("name");
String email=request.getParameter("email");
String password1=request.getParameter("password1");
String pass2=request.getParameter("pass2");
String strQuery = "SELECT COUNT(*) FROM userm where email='"+email+"'";
ResultSet rs = st.executeQuery(strQuery);
rs.next();
String Countrow = rs.getString(1);
out.println(Countrow);
if(Countrow.equals("0")){
	int i=st.executeUpdate("insert into userm(name,email,password1,pass2)values('"+name+"','"+email+"','"+password1+"','"+pass2+"')");

	response.sendRedirect("User login.html");
	out.println("Thank you for register ! Please <a href='User login.html'>Login</a> to continue.");
}
else{
	out.println("User name or Email already exists !");
	//response.sendRedirect("User registration.html");
	
}
}
catch (Exception e){
e.printStackTrace();
}
%>
</body>
</html>

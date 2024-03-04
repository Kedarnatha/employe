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
String password=request.getParameter("password");
String strQuery = "SELECT COUNT(*) FROM userm where email='"+email+"'";
ResultSet rs = st.executeQuery(strQuery);
rs.next();
String Countrow = rs.getString(1);
out.println(Countrow);
if(Countrow.equals("0")){
	int i=st.executeUpdate("insert into admine(name,email,password)values('"+name+"','"+email+"','"+password+"')");

	response.sendRedirect("alogin.html");
	out.println("Thank you for register ! Please <a href='alogin.html'>Login</a> to continue.");
}
else{
	out.println("User name or Email already exists !");
	response.sendRedirect("aregist.html");
	
	
}
}
catch (Exception e){
e.printStackTrace();
}
%>
 <h1><font color="Red">User name or Email already exists .</font></h1>
</body>
</html>


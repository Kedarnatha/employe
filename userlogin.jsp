<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String email=request.getParameter("email"); 
session.putValue("email",email); 
String password1=request.getParameter("password1"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","1810"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from userm where email='"+email+"' and password1='"+password1+"'"); 
try{
	rs.next();
	        if(rs.getString("password1").equals(password1)&&rs.getString("email").equals(email)) 
			{ 
			      out.println("Welcome "  +email);
			    session.setAttribute("email",email);
			    response.sendRedirect("uhome.jsp");
			} 
		else{
		   
			 out.println("Invalid password or username.");
		    }
}
catch (Exception e) {
e.printStackTrace();
}
%>
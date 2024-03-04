<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1810");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM addemp WHERE id="+id);
response.sendRedirect("viewemp.jsp");
out.println("employee added sucessfully");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
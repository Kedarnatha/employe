<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name");
String empid=request.getParameter("empid");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
String empaddress=request.getParameter("empaddress");
String qualification=request.getParameter("qualification");
String jobname=request.getParameter("jobname");
String jobtype=request.getParameter("jobtype");
String country=request.getParameter("country");
String state=request.getParameter("state");
String city=request.getParameter("city");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1810");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into addemp(name,empid,email,phone,empaddress,qualification,jobname,jobtype,country,state,city)values('"+name+"','"+empid+"','"+email+"','"+phone+"','"+empaddress+"','"+qualification+"','"+jobname+"','"+jobtype+"','"+country+"','"+state+"','"+city+"')");

response.sendRedirect("addemployee1.jsp");
out.println("employee added sucessfully");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
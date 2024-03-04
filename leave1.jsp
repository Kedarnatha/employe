<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String empname=request.getParameter("empname");
String empid=request.getParameter("empid");
String empdepart=request.getParameter("empdepart");
String Start_date=request.getParameter("Start_date");
String End_date=request.getParameter("End_date");
String reson=request.getParameter("reson");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1810");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into leave1(empname,empid,empdepart,Start_date,End_date,reson) values('"+empname+"','"+empid+"','"+empdepart+"','"+Start_date+"','"+End_date+"','"+reson+"')");
out.println("Thank you for register ! Please <a href='index.html'>Login</a> to continue.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
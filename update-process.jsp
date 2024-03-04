<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%! String url = "jdbc:mysql://localhost:3306/student";%>
<%! String user = "root";%>
<%! String psw = "1810";%>
<%
String id = request.getParameter("id");
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
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "1810");
String sql="Update addemp set id=?,name=?,empid=?,email=?,phone=?,empaddress=?,qualification=?,jobname=?,jobtype=?,country=?,state=?,city=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1, id);
ps.setString(2, name);
ps.setString(3, empid);
ps.setString(4, email);
ps.setString(5, phone);
ps.setString(6, empaddress);
ps.setString(7, qualification);
ps.setString(8, jobname);
ps.setString(9, jobtype);
ps.setString(10, country);
ps.setString(11, state);
ps.setString(12, city);
int i = ps.executeUpdate();
if(i > 0)
{
response.sendRedirect("viewemp.jsp");
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><body bgcolor="khaki">

        <%

            session.invalidate();

        %>

        <h1><font color="Red">You are Sucessfully logged out...</font></h1>
         response.sendRedirect("User login.html");
        <a href="User login.html">Go-Back To Home Page</a>

    </body>

</html>
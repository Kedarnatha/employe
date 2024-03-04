<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			   min-height:30%;
			   background-color:lightblue;
			   
			   
			  
			}	
			#b{
			    min-height:50px;
				margin-left:50%;
			}
			#c{
			   padding:7px;
			   display:inline-block;
			   font-size:25px;
			 
			 
			 
			  
			}
			#d{
			 
			   width:100%;
			   height:6%;
			   background-color:lightblue;
			   margin-top:40px;
			   }
			#e{
            text-align:center;
			font-size:20px;
			text-bottom:5px;
			width:100%;
			height:6%;
			line-height:48px;
			margin-left:-540px;
			}
			#main-div{
			 width:100%;
			 height:614px;
			
			}
			#one-div{
			  width:38%;
			  height:616px;
			  background-color:lightgreen;
			  float:left;
			}
			#two-div{
			  width:58%;
			  height:406px;
			  background-color:white;
			  float:right;
			 
			}
			#h-div{
			    font-size:35px;
				margin-left:80px;
				margin-top:200px;
			}
			.p-div{
			  font-size:25px;
			  margin-left:10px;
			  margin-top:30px;
			}
			#img-div{
			border-top-left-radius:50% !important;
            border-top-right-radius:50% !important;
            border-bottom-right-radius:50% !important;
            border-bottom-left-radius:50% !important;
			height:300px;
			margin-left:448px;
			margin-bottom:500px;
			}
			#h3-div{
			 margin-left:300px;
			 font-size:35px;
			 margin-bottom:160px;
			 margin-top:30px;
			}
			#p-div2{
			 font-size:25px;
			 margin-right:30px;
			 margin-left:-150px;
			 margin-top:30px;
			 font-style:italic;
			}
			.c1{
				float:left;
				margin-top:0px;
				border-radius:30px;
				margin-left:25px;
				font-size:25px;
			}
			#main1-div{
			width:100%;
			height:600px;

			}
			#child1{
			width:55%;
			height:600px;
			background-color:lightgreen;
			float:left;
			border-radius:280px;
			}
			#child2{
			width:45%;
			height:600px;
			background-color:white;
			float:right;
			border-radius:280px;
			}
			h4{
			font-size:40px;
			margin-left:250px;
			margin-top:160px;
			}
			#f{
			 font-size:25px;
			 margin-left:100px;
			 margin-top:10px;
			}
			#main2-div{
			width:100%;
			height:500px;
	
			}
			#child3{
			width:40%;
			height:600px;
			float:left;
			border-radius:280px;
			}
			#child4{
			width:60%;
			height:500px;
			background-color:lightpink;
			float:right;
			border-radius:280px;
			}
			h4{
			font-size:40px;
			margin-left:250px;
			margin-top:160px;
			}
			#g{
			 font-size:25px;
			 margin-left:80px;
			 margin-top:10px;
	
			}
			
			</style>
		</head>
		<body>
		
			<nav id="a">
			<ul>
			<div class="c1">
		    <%
		String session_u_email=(String)session.getAttribute("email");
		out.print("welcome: "+session_u_email);
		%>
		    </div>
			<div id="b">
			<li id="c"><a href="ahome.jsp"style="text-decoration:none;">Home</a></li>
			<li id="c"><a href="aabout.jsp"style="text-decoration:none;">About</a></li>
			<li id="c"><a href="addemployee1.jsp"style="text-decoration:none;">Add Employee</a></li>
			<li id="c"><a href="viewemp.jsp"style="text-decoration:none;">View Employee</a></li>
			<li id="c"><a href="aleave.jsp"style="text-decoration:none;">view-Leave</a></li>
			<li id="c"><a href="alogin.html"style="text-decoration:none;">logout</a></li>
			</div>
			</ul>
			</nav>
			<div id="main-div">
			<div id="one-div">
			<div id="h-div">
			<h2>BIOGRAPHY</h2>
			</div>
			<div class="p-div">
			<p>A life's work of embracing both the creative and the quantitative,    developing thriving online businesses and enviable brands</p>
			</div>
			<img src="ke.jpg"id="img-div">
			</div>
			<div id="two-div">
			<div id="h3-div">
			<h3>ABOUT ME</h3>
			<div id="p-div2">
			<p>An employee management system is a digital tool used by businesses to organize and manage employee-related tasks like performance,payroll.it simplifies HR processesnand keeps all employee infromation in one place for easy access and control</p>
			<a href="" style="margin-left:200px;border:solid 3px black;">Read more</a>
			</div>
			</div>
			</div>
			</div><br><br><br><br><br><br>
			<div id="main1-div">
			<div id="child1">
			<h4>Our Purpose</h4>
			<p id="f">We exist to help build sustainable organizations of the future.</p>
			</div>
			<div id="child2">
			<img src="purpose.jpg" style="width:530px;height:530px; margin-left:110px;margin-top:40px;border-radius:140px;">
			</div>
			</div>
			<div id="main2-div">
			<div id="child4">
			<h4>Our Mission</h4>
			<p id="g">To provide engaging, fun and actionable content focusing on the “how” of people and leadership. To be a place where culture creators and people managers can connect, communicate and build community.</p>
			</div>
			<div id="child3">
			<img src="mission2.jpg" style="width:530px;height:500px; margin-left:50px;margin-top:40px;border-radius:140px;">
			</div>
			</div><br>
		
			<footer id="d">
			<p id="e">&copykedarnath</p>
			</footer>
		
		
		</body>
</html>
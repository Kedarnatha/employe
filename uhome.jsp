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
			   min-height:8%;
			   background-color:lightblue;
			   
			   
			  
			}	
			#b{
			    font-size:30px;
				margin-left:65%;
			}
			#c{
			   padding:7px;
			   display:inline-block;
			}
			#d{
			   position:fixed;
			   bottom:0;
			   width:100%;
			   height:6%;
			   background-color:lightblue;
			   }
			#e{
            text-align:center;
			font-size:20px;
			margin-bottom:5px;
			width:100%;
			height:50px;
			line-height:50px;
			}
			
			
			.c1{
				float:left;
				margin-top:0px;
				border-radius:30px;
				margin-left:25px;
			}
			
			</style>
		</head>
		<body>
		<%
		String session_u_email=(String)session.getAttribute("email");
		out.print("welcome"+session_u_email);
		%>
			<nav id="a">
			<ul>
			<div class="c1">
		    <img src="logo2.png"style="height:47px;width:60px;border-radius:20px;"/>
		    </div>
			<div id="b">
			<li id="c"><a href="uhome.jsp" style="text-decoration:none;">Home</a></li>
			<li id="c"><a href="uabout.jsp" style="text-decoration:none;">About</a></li>
			<li id="c"><a href="viewuser.jsp" style="text-decoration:none;">Information</a></li>
			<li id="c"><a href="logoutprocess.jsp" style="text-decoration:none;">logout</a></li>
			</div>
			</ul>
			</nav>
			<div class="abc">
			<img class="slides" src="kedar15.jpg" style="height:623px;width:100%;">
			<img class="slides" src="kedar3.jpg" style="height:623px;width:100%;">
			<img class="slides" src="kedar13.jpg" style="height:623px;width:100%;">
			<img class="slides" src="kedar14.jpg" style="height:623px;width:100%;">
			<img class="slides" src="kedar4.png" style="height:623px;width:100%;">
			</div>
			<footer id="d">
			<p id="e">&copykedarnath</p>
			</footer>
		</body>
		<script>
var myIndex=0;
carousel();

function carousel()
{
var i;
var x=document.getElementsByClassName("slides");
for(i=0;i<x.length;i++)
{
x[i].style.display="none";
}
myIndex++;
if(myIndex>x.length)
{
myIndex=1
}
x[myIndex-1].style.display="block";
setTimeout(carousel,3000);//Change image every 2 seconds

}
</script>
</html>
    
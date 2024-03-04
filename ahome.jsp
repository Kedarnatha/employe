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
			   min-height:25%;
			   background-color:lightblue;
			    
			}	
			
			#b{
			    font-size:25px;
				margin-left:50%;
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
			line-height:46px;
			}
			.c1{
				float:left;
				margin-top:0px;
				border-radius:30px;
				margin-left:25px;
				font-size:25px;
			}
			
			
			</style>
			
		</head>
		<body>
			<nav id="a">
			<ul>
			<div class="c1">
			<%
		      String session_u_email=(String)session.getAttribute("email");
		        out.print("welcome: "+ session_u_email);
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
			</div>
			</nav>
			<div class="abc">
			<img class="slides" src="kedar21.jpg" style="height:623px;width:100%;">
			<img class="slides" src="kedar2.jpg" style="height:623px;width:100%;">
			<img class="slides" src="kedar3.jpg" style="height:623px;width:100%;">
			<img class="slides" src="kedar4.png" style="height:623px;width:100%;">
			<img class="slides" src="kedar5.jpeg" style="height:623px;width:100%;">
			<img class="slides" src="kedar14.jpg" style="height:623px;width:100%;">
			<img class="slides" src="kedar15.jpg" style="height:623px;width:100%;">
			<img class="slides" src="kedar16.jpg" style="height:623px;width:100%;">
			
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
setTimeout(carousel,3500);//Change image every 2 seconds

}
</script>
</html>
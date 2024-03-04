<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!Doctype html>
<html>
		<head>
		<title>Add Employee</title>
		<style>
		*{
		 
		  padding:0px;
		  margin:0px;
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
		h2{
		   text-align:center;
		   color:black;
		   margin-top:6px;
		   font-style:italic;
		   margin-bottom:5px;
		   font-size:25px;
		}
	     #e{  
		 font-size:18px;
		 margin-left:175px; 
		 margin-top:8px;
		 }
		
	
		#f{
		  font-size:17px;
		  margin-left:40px;
		  
		  
		}
	    #d{
		    width:55%;
			height:560px;
			border:solid 4px lightblue;
			margin:auto;
			background-image:linear-gradient(silver,lightblue,pink);
		}
		#z{
		    width:100%;
			height:6%;
			background-color:lightblue;
	        position:fixed;
			bottom:0;
		}
		#y{
		    text-align:center;
			width:100%;
			height:6%;
			line-height:48px;
			font-size:20px;
		
		
		}
		#body-div{
		   
		   background-image:url("kedar16.jpg");
		  
		  
		}
		.c1{
				float:left;
				margin-top:0px;
				border-radius:30px;
				margin-left:25px;
				font-size:25px;
			}
		</style>
		<script>
		function validateform(){
		var name=document.myform.name.value;
		var employeeid=document.myform.employeeid.value;
		var email=document.myform.email.value;
		var num=document.myform.num.value;
		if(name==null||name==""){
		alert("name cant be blank");
		return false;
		}
		else if(employeeid.length<6){
		alert("id must be 6 digit");
		return false;
		}
		else if(email==null||email==""){
		alert("email cant be blank");
		return false;
		}
		else if(isNaN(num)){
		 document.getElementById("textloc").innerHTML="Enter Numeric value only";
		 return false;
		 }
		 else{
		 return true;
		 
		 }
		}
		
		</script>
		</head>
		<body id="body-div">
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
		<div>
		<h2>Update Employee</h2>
		</div>
		<div id="d">
		<form name="myform" method="post" action="addemployee.jsp" onsubmit="return validateform()">
		<label id="e">Employee Name</label>
		<input type="text"placeholder="Enter name" name="name"id="f" style="margin-top:8px;"><br><br>
		<label id="e">Employee ID</label>
		<input type="number" name="empid" placeholder="employee id" id="f" style="margin-left:64px;"><br><br>
		<label id="e">Employee Email</label>
		<input type="Email" name="email" placeholder="abc@gmail.com" id="f"><br><br>
		<label id="e">Phone</label>
		<input type="number" name="phone" placeholder="number"id="f"style="margin-left:118px;" maxlength="10"><br><span id="textloc"></span><br>
		<label for="address"id="e">Employee Adress</label>
		<textarea id="f" name="empaddress" rows="2" cols="25" required></textarea><br><br>
		<label id="e">Qualification</label>
		<input type="text"placeholder=" enter your qulification"name="qualification" id="f"style="margin-left:70px;"><br><br>
		<label id="e">job name</label>
		<input type="text"placeholder="enter your job name" name="jobname"id="f"style="margin-left:100px;"><br><br>
		<label id="e">job type</label>
		<input type="text"placeholder="enter your job type" name="jobtype" id="f"style="margin-left:110px;"><br><br>
		<label id="e">Country</label>
		<input type="Country"placeholder="enter your country" name="country" id="f"style="margin-left:110px;"><br><br>
		<label id="e">State</label>
		<input type="State"placeholder="enter your state" name="state" id="f"style="margin-left:135px;"><br><br>
		<label id="e">City</label>
		<input type="City"placeholder="enter your city" name="city" id="f"style="margin-left:135px;"><br><br>
		<input type="checkbox" value="Working"style="margin-left:175px; ">Working status</input><br><br>
		 <input type="Submit"value="ADD Employee" style="background-color:pink; margin-left:34%;font-size:25px;">
		 </div>
		 </form>
		 <footer id="z">
		 <p id="y">&copykedarnath</p>
		 </footer>
		
		</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update page</title>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" 
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" 
    crossorigin="anonymous"></script>
     <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" 
    crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" 
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" 
    crossorigin="anonymous"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		//validation if admin has not logged in
		if(session.getAttribute("Name") == null){
			response.sendRedirect("loginpage.jsp");
		}
	%>
	<center><h1> WELCOME SRIMATHI !!!</h1></center>
	<label for="id">ID</label>
	<input type="number" id="id">
	<label for="confirmed">CONFIRMED</label>
	<input type="text" id="confirmed">
	<label for="recovered">RECOVERED</label>
	<input type="text" id="recovered">
	<label for="death">DEATH</label>
	<input type="text" id="death">
	<label for="active">ACTIVE</label>
	<input type="text" id="active">
	
	
	<form >
		<input type="submit" id="update" value="UPDATE">
	</form>

	<form action="http://localhost:8065/COVID-DASHBOARD/Logout">
		<input type="submit" value="LOGOUT">
	</form>
	
	<!--  <form action="ALogout">
		<input type ="submit" value="Logout">
	</form>*/-->
	<script>
	 $(function () {
	  		$("#update").on("click", function () {
	    		var $id = $("#id");
	    		var $confirmed = $("#confirmed");
	    	    var $recovered = $("#recovered");
	    	    var $death=$("#death");
	    	    var $active=$("#active");
	    		$.ajax({
	        		type: "POST",
	        		url: "http://localhost:8065/COVID-DASHBOARD/updateprocess",
	        		data:{
	        			id: $id.val(),
	  	      			confirmed: $confirmed.val(),
	  	      			recovered: $recovered.val(),
	  	      			death:$death.val(),
	  	      			active:$active.val()
	        		},
	        		success: function (status) {
	          			window.location.href = "http://localhost:8065/COVID-DASHBOARD/adminpage.jsp"; // re-direct to next page
	          			console.log("success"); 
	        		},
	        		error: function () {
	        			window.location.href = "http://localhost:8065/COVID-DASHBOARD/adminpage.jsp"; // re-direct to next page
	          			console.log("error"); 
	        		},
	      		});
	  		});
		});</script>
</body>
</html>


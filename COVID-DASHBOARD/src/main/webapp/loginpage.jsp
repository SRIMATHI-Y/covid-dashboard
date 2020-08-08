<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <!--index title-->
    <title>corona dashboard</title>
    <meta charset="utf-8">
    <!--inclusion of css js and bootstrap CDNs-->
    
    <!-- bootstrap cdn -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" 
    crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" 
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" 
    crossorigin="anonymous"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" 
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" 
    crossorigin="anonymous"></script>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" 
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" 
    crossorigin="anonymous"></script>

	 <!-- jQuery and Popper CDN -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
   <!--  <h1 style="background-color:green">COVID-19 DASHBOARD </h1>-->
   <nav class="navbar navbar-dark bg-success">
      <a class="navbar-brand" href="#">
       <b>COVID-19 DASHBOARD </b>
      </a>
    </nav>
   <nav class="navbar navbar-dark bg-warning">
    <p>A coronavirus is a kind of common virus that causes an infection in your nose, sinuses, or upper throat. Most coronaviruses aren't dangerous.In early 2020, after a December 2019 outbreak in China, the World Health Organization identified SARS-CoV-2 as a new type of coronavirus. The outbreak quickly spread around the world..</p>
   </nav><br>
   <div>
   <ul class="nav nav-tabs" id="myTab" role="tablist" style="margin-left: 120px;">
                <li class="nav-item" role="presentation">
                    <a class="nav-link active" id="userLogin" data-toggle="tab" href="#User" role="tab" 
                        aria-controls="home" aria-selected="true">User Login
                    </a>
                </li>
                <li class="nav-item" role="presentation">
                    <a class="nav-link" id="adminLogin" data-toggle="tab" href="#Admin" role="tab" 
                        aria-controls="profile" aria-selected="false">Admin Login
                    </a>
                </li>
            </ul>
    <div class="mx-auto" style="width: 200px;">  
    <div class="tab-content" id="myTabContent" style="width: 320px; margin-left: 120px;">
    				<br>
   					<div class="tab-pane fade show active" id="User" role="tabpanel" >   <!-- mx auto-is an default to align in the center -->
   					<form>
   							<div class="form-group">
   									ENTER THE PHONE NUMBER:<input type="text" id="phone" class="form-control">
   							</div>
   							<p>
   								<a class="btn btn-outline-danger" data-toggle="collapse" href="#anothereg" id="sub" role="button" aria-expanded="false" aria-controls="anothereg">SUBMIT</a>
   							</p>
   							<div class="collapse multi-collapse" id="anothereg">
   							<form>
  							 <div class="form-group">
   									ENTER THE OTP:<input type="text" id="otp" class="form-control">
  							 </div>
  							 <p>
  						 		<a class="btn btn-outline-danger" id="don" role="button">DONE</a>
   								<p>
   							</form>
   							</div>
   				   </form>
    			   </div>
    <div class="tab-pane fade" id="Admin" role="tabpanel" >
                <br>
                <form>
                    <div class="form-group">
                        User Name:<input type="text" class="form-control" id="userName">
                        Password:<input type="password" class="form-control" id="password">
                    </div>
                    <button type="button" class="btn btn-primary" id="AdminLoginButton">Submit</button>
                     <p id="status"></p>
                </form>
            </div>
        </div>
    </div>
    <script>
    //admin
    $(function () {
	  		$("#AdminLoginButton").on("click", function () {
	    		var $username = $("#userName");
	    		var $password = $("#password");
	    		//console.log($username.val());
      			//console.log($password.val());
	    		$.ajax({
	        		type: "POST",
	        		url: "http://localhost:8065/COVID-DASHBOARD/Adminlogin",
	        		data:{
	        			username: $username.val(),
	  	      			password: $password.val(),
	        		},
	        		success: function (status) {
	          			window.location.href = "http://localhost:8065/COVID-DASHBOARD/adminpage.jsp"; // re-direct to next page
	          			console.log("success"); 
	        		},
	        		error: function () {
	  	        		console.log("error");
	        			$("p").html("<b>Wrong Username or password!!!</b>");
	        			$("input:text").val("");
	        	 		$("input:password").val(""); 
	        		},
	      		});
	  		});
		});
    //user
   $(function(){
	//$(".error").html("").hide();
	$("#sub").on("click", function() {
	var $number = $("#phone");
	console.log($number.val());
		$.ajax({
			url :"http://localhost:8065/COVID-DASHBOARD/logprocess",
			type : "POST",
			data : 
			{ 
				number : $number.val(),
			},
			success : function (status) {
      			$("status").html("OTP has sent successfully");
      		},
      		error: function() {
      			$("status").html("!");
	        	},
			//success : function(response) {
				//$(".container").html(response);
			//}
		});
	//else {
		//$(".error").html('Please enter a valid number!')
		//$(".error").show();
	});
	
	});

   $(function () {
	  		$("#don").on("click", function () {
	    		var $otp = $("#otp");
	    		console.log($otp.val());
	    		$.ajax({
	        		type: "POST",
	        		url: "http://localhost:8065/COVID-DASHBOARD/verifyotp",
	        		data:{
	        			otp : $otp.val(),
	        		},
	        		success: function (status) {
	        			location.href = "http://localhost:8065/COVID-DASHBOARD/dashboard.jsp";
	        		},
					error: function () {
						console.log("error");
	        			$("p").html("<b>Wrong otp!!!</b>");
	        	 		$("input:text").val("");
	  				},
	      		});
	  		});
		});
</script>			
			
   
    
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EPASS PERMISSION</title>
   
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" 
    crossorigin="anonymous">

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" 
    integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" 
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
<body style="background-color:orange">
<nav class="navbar navbar-light bg-success"> <!-- light-font color=black, dark-font color=white -->
      <a class="navbar-brand" href="#"> <!-- navbar brand is used to denote our company ,project name -->
       <b>EPASS PERMISSION</b>
      </a>
</nav>
<form class="was-validated"> <!-- was-validated indicates that the form is empty before the submission -->
  <div class="form-group">
    <label for="name">NAME:</label>
    <input type="text" class="form-control" id="name" placeholder="Enter name"required>
    <div class="invalid-feedback">value required</div>
  </div><br>
  <div class="form-group">
    <label for="age">AGE:</label>
    <input type="text" class="form-control" id="age" placeholder="Enter age"required>
    <div class="invalid-feedback">value required</div>
  </div><br>
  <div class="form-group">
  <label for="phone">PHONE NUMBER</label>
  <input type="text" class="form-control" id="phone" required>
  <div class="invalid-feedback">value required</div>
  </div><br>
  <div class="form-group">
    <label>Gender:</label>
    <div class="form-check-inline">
    <label class="form-check-label">
    <input type="radio" class="form-check-input" name="radio" id="gender">Male
    </label>
    </div>
    <div class="form-check-inline">
    <label class="form-check-label">
    <input type="radio" class="form-check-input" name="radio" id="gender">Female
    </label>
    </div>
  </div><br> 
  <div class="form-group">
    <label for="noofpassengers">NUMBER OF PASSENGERS[EXCLUDING THE APPLICANT]:</label>
      <input class="form-control" type="text" id="noofpassenger" required>
      <div class="invalid-feedback">value required</div>
  </div><br>
  <!-- <div class="form-group">
  <label><b>PASSENGER 1</b></label><br>
  <form>
  <div class="form-group">
  <label for="pass1name">NAME:</label>
    <input type="text" class="form-control" id="pass1name" placeholder="Enter name">
  </div><br>
  <div class="form-group">
    <label for="pass1age">AGE:</label>
    <input type="text" class="form-control" id="pass1age" placeholder="Enter age">
  </div><br>
  <div class="form-group">
    <label>Gender:</label>
    <div class="form-check-inline">
    <label class="form-check-label">
    <input type="radio" class="form-check-input" name="radio" id="pass1gender">Male
    </label>
    </div>
    <div class="form-check-inline">
    <label class="form-check-label">
    <input type="radio" class="form-check-input" name="radio" id="pass1gender">Female
    </label>
    </div>
  </div><br>
  <div class="form-group">
    <label for="phone">PHONE NUMBER:
      <input class="form-control" type="text" id="pass2phone">
    </label>
  </div>
  </form>
  </div><br>
  <div class="form-group">
  <label><b>PASSENGER2</b></label><br>
  <form>
  <div class="form-group">
  <label for="pass2name">NAME:</label>
    <input type="text" class="form-control" id="pass2name" placeholder="Enter name">
  </div><br>
  <div class="form-group">
    <label for="pass2age">AGE:</label>
    <input type="text" class="form-control" id="pass2age" placeholder="Enter age">
    
  </div><br>
  <div class="form-group">
    <label>Gender:</label>
    <div class="form-check-inline">
    <label class="form-check-label">
    <input type="radio" class="form-check-input" name="radio" id="pass2gender">Male
    </label>
    </div>
    <div class="form-check-inline">
    <label class="form-check-label">
    <input type="radio" class="form-check-input" name="radio" id="pass2gender">Female
    </label>
    </div>
  </div><br>
  <div class="form-group">
    <label for="phone">PHONE NUMBER:
      <input class="form-control" type="text" id="pass2phone">
    </label>
  </div></div><br>-->
  <div class="form-group">
  <label for="transport">MODE OF TRANSPORT</label>
  <select class="custom-select mr-sm-2" id="transport">
  <option value="1">Bike</option>
  <option value="2">Car</option>
  <div class="invalid-feedback">value required</div>
  </select></div>
  <br>
  <div class="form-group">
  <label for="source">SOURCE:</label>
  <select class="custom-select mr-sm-2" id="source">
                    <option value="1">Ariyalur</option>
                    <option value="2">Chengalpattu</option>
                    <option value="3">Chennai</option>
                    <option value="4">Coimbatore</option>
                    <option value="5">Cuddalore</option>
                    <option value="6">Dharmapuri</option>
                    <option value="7">Dindigul</option>
                    <option value="8">Erode</option>
                    <option value="9">Kallakurichi</option>
                    <option value="10">Kanchipuram</option>
                    <option value="11">Kanyakumari</option>
                    <option value="12">Karur</option>
                    <option value="13">Krishnagiri</option>
                    <option value="14">Madurai</option>
                    <option value="15">Mayiladuthurai</option>
                    <option value="16">Nagapattinam</option>
                    <option value="17">Namakkal</option>
                    <option value="18">Nilgiris</option>
                    <option value="19">Perambalur</option>
                    <option value="20">Pudukkottai</option>
                    <option value="21">Ramanathapuram</option>
                    <option value="22">Ranipet</option>
                    <option value="23">Salem</option>
                    <option value="24">Sivagangai</option>
                    <option value="25">Tenkasi</option>
                    <option value="26">Thanjavur</option>
                    <option value="27">Theni</option>
                    <option value="28">Thoothukudi</option>
                    <option value="29">Tiruchirapalli</option>
                    <option value="30">Tirunelveli</option>
                    <option value="31">Tirupattur</option>
                    <option value="32">Tirupur</option>
                    <option value="33">Tiruvallur</option>
                    <option value="34">Tiruvannamalai</option>
                    <option value="35">Tiruvarur</option>
                    <option value="36">Vellore</option>
                    <option value="37">Viluppuram</option>
                    <option value="38">Virudhunagar</option>
                    <div class="invalid-feedback">value required</div>
                </select></div><br>
  <div class="form-group">
  <label for="destination">DESTINATION:</label>
  <select class="custom-select mr-sm-2" id="destination">
                    <option value="1">Ariyalur</option>
                    <option value="2">Chengalpattu</option>
                    <option value="3">Chennai</option>
                    <option value="4">Coimbatore</option>
                    <option value="5">Cuddalore</option>
                    <option value="6">Dharmapuri</option>
                    <option value="7">Dindigul</option>
                    <option value="8">Erode</option>
                    <option value="9">Kallakurichi</option>
                    <option value="10">Kanchipuram</option>
                    <option value="11">Kanyakumari</option>
                    <option value="12">Karur</option>
                    <option value="13">Krishnagiri</option>
                    <option value="14">Madurai</option>
                    <option value="15">Mayiladuthurai</option>
                    <option value="16">Nagapattinam</option>
                    <option value="17">Namakkal</option>
                    <option value="18">Nilgiris</option>
                    <option value="19">Perambalur</option>
                    <option value="20">Pudukkottai</option>
                    <option value="21">Ramanathapuram</option>
                    <option value="22">Ranipet</option>
                    <option value="23">Salem</option>
                    <option value="24">Sivagangai</option>
                    <option value="25">Tenkasi</option>
                    <option value="26">Thanjavur</option>
                    <option value="27">Theni</option>
                    <option value="28">Thoothukudi</option>
                    <option value="29">Tiruchirapalli</option>
                    <option value="30">Tirunelveli</option>
                    <option value="31">Tirupattur</option>
                    <option value="32">Tirupur</option>
                    <option value="33">Tiruvallur</option>
                    <option value="34">Tiruvannamalai</option>
                    <option value="35">Tiruvarur</option>
                    <option value="36">Vellore</option>
                    <option value="37">Viluppuram</option>
                    <option value="38">Virudhunagar</option>
                    <div class="invalid-feedback">value required</div>
                </select>
  </div>
  			<p>
   				<button type="button" class="btn btn-outline-danger" id="submit">SUBMIT</button>
   			</p>
  

 </form>
 <script>
 $(function(){
		$("#submit").on("click", function(){
		var $sourcename=$("#source");
		var $destinationname=$("#destination");
		var $passengers=$("#noofpassengers");
		console.log($sourcename.val());
		console.log($destinationname.val());
			$.ajax({
				url :"http://localhost:8065/COVID-DASHBOARD/epasspermitprocess",
				type : "POST",
				data : 
				{ 
					source: $sourcename.val(),
					//passengers : $passengers.val(),
					destination : $destinationname.val(),
				},
				success : function (status) {
	      			
						console.log("YESSS");
	        			$("p").html("<h1><b>YES, YOU CAN GO !!!!</b></h1>");
	        	 		$("input:text").val("");
	
	      		},
	      		error: function() {
	      			console.log("NOOOO");
        			$("p").html("<h1><b>NO, YOU CAN NOT GO BECAUSE THE SOURCE OR DESTINATION IS UNDER ZONE WITH MORE THAN 1500 ACTIVE CASES !!!!</b></h1>");
        	 		$("input:text").val("");
		        	},
				
			});
		
		});
		
		});

 </script> 
</body>
</html>
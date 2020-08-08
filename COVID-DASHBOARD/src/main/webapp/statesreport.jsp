<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>state-report</title>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
</head>
<body id="staterep">
    <div class="container text-center">
    <h1 >STATE-WISE REPORTS</h1><br> <!-- to add the color we can use class and text-with color  -->
    </div>
    <div class="container my-5"><!-- space between the above container and this one -->
    <div class="row text-center">
    <div class="col-3 text-warning">
     <h4>CONFIRMED</h4>
     <p id="confirmed" ></p>
    </div>
    <div class="col-3 text-info">
     <h4>ACTIVE</h4>
     <p id="active" ></p>
    </div>
    <div class="col-3 text-success">
     <h4>RECOVERED</h4>
     <p id="recovered" ></p>
    </div>
    <div class="col-3 text-danger">
     <h4>DEATH</h4>
     <p id="death" ></p>
    </div></div>
    <canvas id="chart"></canvas>
    </div>
    <!-- AddToAny BEGIN -->
<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
<a class="a2a_dd" href="https://www.addtoany.com/share"></a>
<a class="a2a_button_facebook"></a>
<a class="a2a_button_twitter"></a>
<a class="a2a_button_email"></a>
</div>
<script async src="https://static.addtoany.com/menu/page.js"></script>
<!-- AddToAny END -->
<a href="http://localhost:8065/COVID-DASHBOARD/statesreport.jsp" role="button" class="btn btn-primary float-right" id="download" download="statesreport" type="pdf">DOWNLOAD</a>
</body>

<script>
$(document).ready(function(){					//jquery
	var url="https://api.covid19india.org/data.json"
	$.getJSON(url,function(data){
		console.log(data)
		var t_active,t_confirm,t_death,t_recover
		var states=[]
		var confirmed=[]
		var recovered=[]
		var deaths=[]
		$.each(data.statewise,function(id,obj)
				{
		           states.push(obj.state)
		           confirmed.push(obj.confirmed)
		           recovered.push(obj.recovered)
		           deaths.push(obj.deaths)
				})	
				states.shift()
				confirmed.shift()
				recovered.shift()
				deaths.shift()
				console.log(states)
				
		t_active=data.statewise[0].active
		t_confirm=data.statewise[0].confirmed
		t_death=data.statewise[0].deaths
		t_recover=data.statewise[0].recovered
		$("#active").append(t_active)
		$("#confirmed").append(t_confirm)
		$("#death").append(t_death)
		$("#recovered").append(t_recover)
		var chart=document.getElementById("chart").getContext('2d')
		var chart=new Chart(chart,{
			type:'line',
			data:{
					labels:states,
					datasets:[{
						label:"Confirm cases",
						data:confirmed,
					    backgroundColor:"yellow",
					    minBarLength: 100
					},
					{
						label:"recover cases",
						data:recovered,
						backgroundColor:"green",
						minBarLength: 100
					},
					{
						label:"deaths",
						data:deaths,
						backgroundColor:"red",
						minBarLength: 100
					},
			],//states array
					
			},
			//options:{}
		});
	});
});</script>

</html>

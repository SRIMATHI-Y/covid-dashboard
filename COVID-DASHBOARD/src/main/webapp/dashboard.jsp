<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--index title-->
    <title>index</title>
    <meta charset="utf-8">
    <!--inclusion of css js and bootstrap CDNs-->
    <!-- <script src="js/index.js"></script> -->
    <!-- <link rel="stylesheet" href="css/index.css"> -->

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
 <center><h1 style="background-color:green";> COVID-19 </h1></center>
 <div class="text-center">
 <br>
 <br>
 <a href="http://localhost:8065/COVID-DASHBOARD/districtreports.jsp" class="btn btn-primary btn-lg" id="district" role="button">DISTRICT-WISE REPORTS</a><br><br><br>
 <a href="http://localhost:8065/COVID-DASHBOARD/statesreport.jsp" class="btn btn-secondary btn-lg" id="state" role="button">STATE-REPORT</a><br><br><br>
  <a href="http://localhost:8065/COVID-DASHBOARD/epasspermission.jsp" class="btn btn-warning btn-lg" id="epass" role="button">EPASS-REPORT</a><br><br><br>
 </div>
 
</body>
</html>
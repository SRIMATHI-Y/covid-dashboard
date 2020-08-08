<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>district sample</title>
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
</head>
<body>
<div class="container text-center">
    <h1 >DISTRICT-WISE REPORTS</h1><br> <!-- to add the color we can use class and text-with color  -->
</div>
<div class="container my-5">
<div class="row text-center">
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Ariyalur.jsp" id="ariyalur" class="btn btn-primary" role="button">ARIYALUR</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Chengalpattu.jsp" id="chengal" class="btn btn-primary" role="button">CHENGALPATTU</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Chennai.jsp" id="chennai" class="btn btn-primary" role="button">CHENNAI</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Coimbatore.jsp" id="coimbatore" class="btn btn-primary" role="button">COIMBATORE</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Cuddalore.jsp" id="cuddalore" class="btn btn-primary" role="button">CUDDALORE</a>
</div></div></div>
<div class="container my-5">
<div class="row text-center">
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Dharmapuri.jsp" id="dharmapuri" class="btn btn-primary" role="button">DHARMAPURI</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Dindigul.jsp" id="dindigul" class="btn btn-primary" role="button">DINDIGUL</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Erode.jsp" id="erode" class="btn btn-primary" role="button">ERODE</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Kallakurichi.jsp" id="kallakurichi" class="btn btn-primary" role="button">KALLAKURICHI</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Kanchipuram.jsp" id="kanchipuram" class="btn btn-primary" role="button">KANCHIPURAM</a>
</div></div></div>
<div class="container my-5">
<div class="row text-center">
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Kanyakumari.jsp" id="kanyakumari" class="btn btn-primary" role="button">KANYAKUMARI</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Karur.jsp" id="karur" class="btn btn-primary" role="button">KARUR</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Krishnagiri.jsp" id="krishnagiri" class="btn btn-primary" role="button">KRISHNAGIRI</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Madurai.jsp" id="madurai" class="btn btn-primary" role="button">MADURAI</a></div>
<div class="col-2">
<a href="" id="mayiladuthurai" class="btn btn-primary" role="button">MAYILADUTHURAI</a>
</div></div></div>
<div class="container my-5">
<div class="row text-center"><div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Nagapattinam.jsp" id="nagapattinam" class="btn btn-primary" role="button">NAGAPATTINAM</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Namakkal.jsp" id="namakkal" class="btn btn-primary" role="button">NAMAKKAL</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Nilgiris.jsp" id="nilgiris" class="btn btn-primary" role="button">NILGIRIS</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Perambalur.jsp" id="perambalur" class="btn btn-primary" role="button">PERAMBALUR</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Pudukkottai.jsp" id="pudukkottai" class="btn btn-primary" role="button">PUDUKKOTTAI</a></div>
</div></div>
<div class="container my-5">
<div class="row text-center">
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Ramnad.jsp" id="ramanathapuram" class="btn btn-primary" role="button">RAMANATHAPURAM</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Ranipet.jsp" id="ranipet" class="btn btn-primary" role="button">RANIPET</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Salem.jsp" id="salem" class="btn btn-primary" role="button">SALEM</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Sivagangai.jsp" id="sivagangai" class="btn btn-primary" role="button">SIVAGANGAI</a></div>
<div class="col-2">
<a href="" id="tenkasi" class="btn btn-primary" role="button">TENKASI</a>
</div></div></div><div class="container my-5">
<div class="row text-center">
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Thanjavur.jsp" id="thanjavur" class="btn btn-primary" role="button">THANJAVUR</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Theni.jsp" id="theni" class="btn btn-primary" role="button">THENI</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Thoothukudi.jsp" id="thoothukudi" class="btn btn-primary" role="button">THOOTHUKUDI</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Trichy.jsp" id="trichy" class="btn btn-primary" role="button">TRICHY</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Tirunelveli.jsp" id="tirunelveli" class="btn btn-primary" role="button">TIRUNELVELI</a></div>
</div></div><div class="container my-5">
<div class="row text-center">
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Tirupattur.jsp" id="tirupattur" class="btn btn-primary" role="button">TIRUPATTUR</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Tiruppur.jsp" id="tiruppur" class="btn btn-primary" role="button">TIRUPPUR</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Tiruvallur.jsp" id="tiruvallur" class="btn btn-primary" role="button">TIRUVALLUR</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Tiruvannamalai.jsp" id="tiruvannamalai" class="btn btn-primary" role="button">TIRUVANNAMALAI</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Tiruvarur.jsp" id="tiruvarur" class="btn btn-primary" role="button">TIRUVARUR</a></div>
</div></div>
<div class="container my-5">
<div class="row text-center">
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Vellore.jsp" id="vellore" class="btn btn-primary" role="button">VELLORE</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Viluppuram.jsp" id="viluppuram" class="btn btn-primary" role="button">VILUPPURAM</a></div>
<div class="col-2">
<a href="http://localhost:8065/COVID-DASHBOARD/Virudhunagar.jsp" id="virudhunagar" class="btn btn-primary" role="button">VIRUDHUNAGAR</a></div></div></div>
</body>
</html>
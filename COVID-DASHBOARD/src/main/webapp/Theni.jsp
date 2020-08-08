<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.mysql.jdbc.Driver"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <!--index title-->
    <title>THENI</title>
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
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
</head>
<body>
<h1 align="center"><b>THENI REPORT</b></h1><br><br>
<figure class="highcharts-figure">
<div id = "container"></div>
<table align="center" cellpadding="15" cellspacing="10" border="3" id="datatable">
<tr>
</tr>
<tr bgcolor="black">
<td bgcolor="lightcoral"><b>CONFIRMED</b></td>
<td bgcolor="aqua"><b>ACTIVE</b></td>
<td bgcolor="olive"><b>RECOVERED</b></td>
<td bgcolor="indianred"><b>DEATH</b></td>
</tr> <%

String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "covid";
String userId = "root";
String password = "Srimathi@20";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
//String district="Ariyalur";
//System.out.println(district);
//String sql ="SELECT confirmed,active,recovered,death FROM dashboard";//+"where district="\Ariyalur"\;
String sql="SELECT confirmed,active,recovered,death FROM covdashboard"
        + " WHERE id=26";;
resultSet = statement.executeQuery(sql);
String confirmed=null;
String death=null;
String recovered=null;

while(resultSet.next()){
%>
<tr>
<td bgcolor="lightcoral"><%=resultSet.getString("confirmed") %></td>
<td bgcolor="aqua"><%=resultSet.getString("active") %></td>
<td bgcolor="olive"><%=resultSet.getString("recovered") %></td>
<td bgcolor="indianred"><%=resultSet.getString("death")%></td>
</tr></table></figure>
 <canvas id="mychart"></canvas>
 <!-- AddToAny BEGIN -->
<div class="a2a_kit a2a_kit_size_32 a2a_default_style">
<a class="a2a_dd" href="https://www.addtoany.com/share"></a>
<a class="a2a_button_facebook"></a>
<a class="a2a_button_twitter"></a>
<a class="a2a_button_email"></a>
</div>
<script async src="https://static.addtoany.com/menu/page.js"></script>
<!-- AddToAny END -->
<a href="http://localhost:8065/COVID-DASHBOARD/Theni.jsp" role="button" class="btn btn-primary float-right" id="download" download="districtreport">DOWNLOAD</a>
<% 
confirmed=resultSet.getString("confirmed");
recovered=resultSet.getString("recovered");
death=resultSet.getString("death");
System.out.println(recovered);
}
%> 
<script>
$(document).ready(function(){	
var stage=["STAGES"]
var confirmed=[<%=confirmed%>]
var recovered=[<%=recovered%>]
var death=[<%=death%>]
var mychart=document.getElementById("mychart").getContext('2d')
var chart=new Chart(mychart,{
	type:'bar',
	data:{
			labels:stage,
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
				label:"death cases",
				data:death,
			    backgroundColor:"red",
			    minBarLength: 100
			},
			 ],
			//states array
			
	},
	//options:{}
});
});
</script>  
<%
} catch (Exception e) {
e.printStackTrace();
}%>
 </body>
</html>
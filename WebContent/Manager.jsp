<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manager Page</title>
<!-- Css styles -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/ihover.css" rel="stylesheet">
<link rel="stylesheet" href="css/manager.css" />
<link rel="stylesheet" href="fancybox/jquery.fancybox-1.3.4.css" />
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Signika:400,600,700,300" />
<!-- JavaScript lib -->
<script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
<script src="js/jquery.easytabs.min.js" type="text/javascript"></script>
<script src="js/jquery.quicksand.js" type="text/javascript"></script>
<script src="js/jquery.easing.1.3.js" type="text/javascript"></script>
<script src="js/jquery.poshytip.min.js" type="text/javascript"></script>
<script src="js/jquery.fancybox-1.3.4.js" type="text/javascript"></script>
<script src="js/jquery.mousewheel-3.0.4.pack.js" type="text/javascript"></script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script src="js/jquery.gmap.min.js" type="text/javascript"></script>
<script src="js/jquery.validate.js" type="text/javascript"></script>
<script src="js/custom.js" type="text/javascript"></script>
<script src="js/Ajax.js" type="text/javascript"></script>

<!--[if lt IE 9]>
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->



<!--[if lt IE 8]>
<style>
/* For IE < 8 (trigger hasLayout) */
.clearfix {
    zoom:1;
}
</style>
<![endif]-->  
</head>
<body onload="showData('temp')">

	<!--Page Wrraper-->
	<div id="wrapper" class="clearfix">

<!--Page Header-->
<header id="header" class="clearfix">
<div class="col-sm-6">
 
    <!-- normal -->
    <div class="ih-item circle effect1"><a href="#">
        <div class="spinner"></div>
        <div class="img"><img src="images/img.png" alt="img"></div>
        <div class="info">
          <div class="info-back">
            <h3>Bay-Flower</h3>
            <p>Manager System</p>
          </div>
        </div></a></div>
    <!-- end normal -->
 
  </div>
	<nav id="mainNav">
			<ul class="tabs clearfix">
				<li><a class="tab" href="#employee" onclick="showData('temp')">Employees</a></li>
				<li><a class="tab" href="#customers" onclick="showData('tcus')">Customers</a></li>
				<li><a class="tab" href="#reservation" onclick="showData('trev')">Reservations</a></li>
				<li><a class="tab" href="#bill" onclick="showData('tbill')">Bills</a></li>
				<li><a class="tab" href="#bl" onclick="showData('tbl')">Black List</a></li>
			</ul>
		</nav>	
</header>
<!--End Page Header-->



<!-- Tabs Container-->
<section id="tabsContainer" class="clearfix">
	<!--Inner-->
	<div id="innerBg">  
		
			<!--Employee Tab-->
		<article id="employee" class="clearfix">
			<table class="table table-hover" >
              <thead>
                <tr>
                  <th>Employee ID</th>
                  <th>Name</th>
                  <th>Gender</th>
                  <th>Street</th>
                  <th>City</th>
                  <th>Phone</th>
                </tr>
              </thead>
              <tbody id="temp">
			</tbody>
            </table>
			</article>
			<!--Customers Tab-->
			<article id="customers" class="clearfix">
			<table class="table table-hover" >
              <thead>
                <tr>
                  <th>Customer ID</th>
                  <th>Name</th>
                  <th>Gender</th>
                  <th>Email</th>
                  <th>Phone</th>
                  <th>Street</th>
                  <th>City</th>
                </tr>
              </thead>
              <tbody id="tcus">
			</tbody>
            </table>
			</article>
			<!--Reservation Tab-->
		<article id="reservation" class="clearfix">
			<!-- Introduction -->
				<table class="table table-hover" >
              <thead>
                <tr>
                  <th>Employee ID</th>
                  <th>Name</th>
                  <th>Gender</th>
                  <th>Street</th>
                  <th>City</th>
                  <th>Phone</th>
                </tr>
              </thead>
              <tbody id="trev">
			</tbody>
            </table>
			</article>
			<!--bill Tab-->
		<article id="bill" class="clearfix">
			<!-- Introduction -->
				<table class="table table-hover" >
              <thead>
                <tr>
                  <th>Bill ID</th>
                  <th>Customer Name</th>
                  <th>Room Number</th>
                  <th>Amount</th>
                  <th>Time</th>
                </tr>
              </thead>
              <tbody id="tbill">
			</tbody>
            </table>
			</article>
			<!--Black list Tab-->
		<article id="bl" class="clearfix">
				<table class="table table-hover" >
              <thead>
                <tr>
                  <th>Customer ID</th>
                  <th>Reason</th>
                </tr>
              </thead>
              <tbody id="tbl">
			</tbody>
            </table>
			</article>
						
</section>
<!-- End tabs Container-->

<!--End Tabs Container-->
</div>
<!--End Page Wrapper--> 



</body>
</html>

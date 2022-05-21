<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@page import="java.sql.*"%>

<html lang="en">

<head>

	<meta charset="UTF-8">
	<meta name="description" content="E-flight WebApp">
	<meta name="author" content="raktimhalder241">
	<meta name="keywords" content="jsp, html, css, js">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> WELCOME TO E-FLIGHT </title>
	<link rel="stylesheet" type="text/css" href="product.css">

	<script>

	</script>

</head>

<body>

	<table class="heading">
		<tr>
			<td>E-FLIGHT
			</td>
		</tr>
	</table>

	<table class="searchbar" style="height: 75%">
		<tr>

			<td style="width: 50%; padding-top: 10px;">
				<center>
				<form  action="home.jsp" method="post" style="width: 40%; height: 60%; background-color: #000066; border:1px solid black;">
				<div style="line-height:50%;"><br></div>
				
				<table>
					<tr>
						<td style="color: white">FROM</td>
				<td>
				<select name="deptcity">
				  <option value="">Select</option>
				  <option value="chennai">Chennai</option>
				  <option value="kolkata">Kolkata</option>
				  <option value="mumbai">Mumbai</option>
				</select>
				</td></tr>

				<tr>
					<td style="color: white">TO</td>
				<td>
				<select name="arrvcity">
				  <option value="">Select</option>
				  <option value="chennai">Chennai</option>
				  <option value="kolkata">Kolkata</option>
				  <option value="mumbai">Mumbai</option>
				</select>
				</td></tr>

				<tr>
					<td style="color: white">DATE</td>
				<td>
					<input type="date" name="dof">
				</td></tr>

				<tr>
					<td style="color: white">FROM</td>
				<td>
				<select name="lbound">
					<option value="0" selected>00:00</option>
					<option value="1">01:00</option>
					<option value="2">02:00</option>
					<option value="3">03:00</option>
					<option value="4">04:00</option>
					<option value="5">05:00</option>
					<option value="6">06:00</option>
					<option value="7">07:00</option>
					<option value="8">08:00</option>
					<option value="9">09:00</option>
					<option value="10">10:00</option>
					<option value="11">11:00</option>
					<option value="12">12:00</option>
					<option value="13">13:00</option>
					<option value="14">14:00</option>
					<option value="15">15:00</option>
					<option value="16">16:00</option>
					<option value="17">17:00</option>
					<option value="18">18:00</option>
					<option value="19">19:00</option>
					<option value="20">20:00</option>
					<option value="21">21:00</option>
					<option value="22">22:00</option>
					<option value="23">23:00</option>
				</select>
				</td></tr>

				<tr>
					<td style="color: white">TO</td>
				<td>
				<select name="ubound">
					<option value="0">00:00</option>
					<option value="1">01:00</option>
					<option value="2">02:00</option>
					<option value="3">03:00</option>
					<option value="4">04:00</option>
					<option value="5">05:00</option>
					<option value="6">06:00</option>
					<option value="7">07:00</option>
					<option value="8">08:00</option>
					<option value="9">09:00</option>
					<option value="10">10:00</option>
					<option value="11">11:00</option>
					<option value="12">12:00</option>
					<option value="13">13:00</option>
					<option value="14">14:00</option>
					<option value="15">15:00</option>
					<option value="16">16:00</option>
					<option value="17">17:00</option>
					<option value="18">18:00</option>
					<option value="19">19:00</option>
					<option value="20">20:00</option>
					<option value="21">21:00</option>
					<option value="22">22:00</option>
					<option value="23" selected>23:00</option>
				</select>
				</td></tr>

				<tr>
					<td style="color: white">AIRLINES</td>
				<td>
				<select name="airline">
					<option value="all">Any</option>
					<option value="airindia">airindia</option>
					<option value="airasia">airasia</option>
					<option value="indigo">indigo</option>
					<option value="spicejet">spicejet</option>
				</select>
				</td></tr>

				<tr>
					<td style="color: white">LEGS</td>
				<td>
				<select name="lc">
					<option value="all">Any</option>
					<option value="one">Single</option>
				</select>
				</td></tr>

		</table>

				<br>

				<input type="submit" value="Search Flights">
				<div style="line-height:50%;"><br></div>
				</form>
				</center>
			</td>
		</tr>
	</table>

	<table class="footing">
		<tr class="footing header">
			<th width="25%">About</th>
			<th width="25%">Connect</th>
			<th width="25%">Business</th>
			<th width="25%">Help</th>
		</tr>
		<tr>
			<td>About Us</td>
			<td>Facebook</td>
			<td>Reserve via E-flight</td>
			<td>Booking Centre</td>
		</tr>
		<tr>
			<td>Press Releases</td>
			<td>Twitter</td>
			<td>Become an Affiliate</td>
			<td>Help Desk</td>
		</tr>
		<tr>
			<td>Social Initiatives</td>
			<td>Instagram</td>
			<td>Advertise Your Offers</td>
			<td>Download E-flight App</td>
		</tr>
	</table>

</body>

</html>
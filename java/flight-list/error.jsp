<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html lang="en">

<head>

	<meta charset="UTF-8">
	<meta name="description" content="E-flight WebApp">
	<meta name="author" content="raktimhalder241">
	<meta name="keywords" content="jsp, html, css, js">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> ERROR!!!</title>
	<link rel="stylesheet" type="text/css" href="product.css">

  <script>
    function goback() 
    {
      window.history.back();
    }
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
        <form  style="width: 40%; height: 60%; background-color: #000066; border:1px solid black;">
        <div style="line-height:50%;"><br></div>
        Please Enter Each of <br>
        Source, Destination and Time Ranges to Search.
        <br><br>
        <button type="button" onclick="goback()">Go Back</button>
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
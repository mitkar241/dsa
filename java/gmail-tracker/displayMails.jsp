<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>
<%@ page import="mailReading.model.Model" %>

<html lang="en">

<head>

	<style>
		div.scroller {
		background-color: white;
		width: 75%;
		height: 80%;
		overflow: auto;
		}
	</style>

	<meta charset="UTF-8">
	<meta name="description" content="MailTracker WebApp">
	<meta name="author" content="raktimhalder241">
	<meta name="keywords" content="jsp, servlet, html, css, js">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> E-MAIL </title>

</head>


<body style="background-color: grey;">

	<table style="width : 100%; height : 5%; text-align: center; background-color: red;">
		<tr>
			<td style="width: 40%;">MAILTRACKER</td>
			<td style="width: 40%;">READ MAILS</td>
			<td style="width: 20%;">
<input type="button" value="go back"  style="width: 40%;" onclick="window.history.back();"></td>
		</tr>
	</table>

	<center>
	<div class="scroller">
		<center>
	<table style="width : 100%; height : 80%; background-color: white;">
		<tr>

			<td style="width: 50%; padding-top: 10px;">
				<center>
<br>
<%
ArrayList<Model> box = (ArrayList<Model>) request.getAttribute("mailList");
	    for(int i=0; i<box.size(); i++){%>
<form style="width: 40%; height: 60%; background-color: black; border:1px solid black;"><br><br>
			<div style="width: 80%; height: 60%; background-color: red; border:1px solid black;">
			<u><%= box.get(i).getPerson() %></u>
			</div>
			<div style="width: 80%; height: 60%; background-color: grey; border:1px solid black;">
			Subject :
			<%= box.get(i).getSubject() %>
			</div>
			<br><br>
</form>
<% } %>
				</center>
			</td>
		</tr>
	</table>
	</center>
</div>
</center>

	<table style="width : 100%; height : 15%; text-align: left; font-size: 15px; background-color: red;">
		<tr>
			<th width="25%">About</th>
			<th width="25%">Connect</th>
			<th width="25%">Business</th>
			<th width="25%">Help</th>
		</tr>
		<tr>
			<td>About Us</td>
			<td>Facebook</td>
			<td>Premium MailTracker</td>
			<td>Manual</td>
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
			<td>Advertise Your Products</td>
			<td>Download MailTracker App</td>
		</tr>
	</table>

</body>

</html>

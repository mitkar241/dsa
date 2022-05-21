<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="loginError.jsp"%>

<html lang="en">

<head>

	<meta charset="UTF-8">
	<meta name="description" content="MailTracker WebApp">
	<meta name="author" content="raktimhalder241">
	<meta name="keywords" content="jsp, servlet, html, css, js">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> Home </title>

</head>


<body style="background-color: grey;">

	<table style="width : 100%; height : 5%; text-align: center; background-color: red;">
		<tr>
			<td style="width: 40%;">MAILTRACKER</td>
			<td style="width: 40%;">Home:: raktimhalder241@gmail.com</td>
			<td style="width: 20%;">
				<input type="button" value="logout"  style="width: 40%;" onclick="window.location='logout.jsp'">
			</td>
		</tr>
	</table>

	<table style="width : 100%; height : 27%; text-align: center; background-color: grey;">
		<tr>
			<td style="width: 50%; padding-top: 10px;"><center>
				<form style="padding: 3%; width: 40%; height: 60%; background-color: red; border:1px solid black;">
				Lets send a mail
				<br>
				<input type="button" value="compose"  style="width: 40%;" onclick="window.location='compose.jsp'">
				<br>
				</form>
			</center></td>
		</tr>
	</table>

	<table style="width : 100%; height : 26%; text-align: center; background-color: grey;">
		<tr>
			<td style="width: 50%; padding-top: 10px;"><center>
				<form action="${pageContext.request.contextPath}/display" method="post" style="padding: 5%; width: 75%; height: 60%; background-color: red; border:1px solid black;">
				Read incoming mails
				<br>
				<input hidden type="text" name="content" value="inbox"  style="width: 40%;">
				<input type="submit" value="inbox"  style="width: 40%;">
				<br>
				</form>
			</center></td>

			<td style="width: 50%; padding-top: 10px;"><center>
				<form action="${pageContext.request.contextPath}/display" method="post" style="padding: 5%; width: 75%; height: 60%; background-color: red; border:1px solid black;">
				Read sent mails
				<br>
				<input hidden type="text" name="content" value="sentbox"  style="width: 40%;">
				<input type="submit" value="sentbox"  style="width: 40%;">
				<br>
				</form>
			</center></td>
		</tr>
	</table>

	<table style="width : 100%; height : 27%; text-align: center; background-color: grey;">
		<tr>
			<td style="width: 50%; padding-top: 10px;"><center>
				<form action="${pageContext.request.contextPath}/track" method="post" style="padding: 3%; width: 40%; height: 60%; background-color: red; border:1px solid black;">
				Track specified mails
				<br>
				<input type="submit" value="trackbox"  style="width: 40%;">
				<br>
				</form>
			</center></td>
		</tr>
	</table>

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

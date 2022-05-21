<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">

<head>

	<meta charset="UTF-8">
	<meta name="description" content="MailTracker WebApp">
	<meta name="author" content="raktimhalder241">
	<meta name="keywords" content="jsp, servlet, html, css, js">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> New Mail </title>

</head>


<body style="background-color: grey;">

	<table style="width : 100%; height : 5%; text-align: center; background-color: red;">
		<tr>
			<td style="width: 40%;">MAILTRACKER</td>
			<td style="width: 40%;">New Mail</td>
			<td style="width: 20%;">
					<input type="button" value="go back"  style="width: 40%;" onclick="window.history.back();"></td>
		</tr>
	</table>

	<table style="width : 100%; height : 80%; background-color: grey;">
		<tr>

			<td style="width: 50%; padding-top: 10px;">
				<center>
				
				<form action="${pageContext.request.contextPath}/sendMail" method="post" style="width: 40%; height: 60%; background-color: red; border:1px solid black;">
				<br>
				<table>
					<tr>
						<td>To :</td>
						<td><input type="text" name="recipient"  style="width: 100%;"></td>
					</tr>
					<tr>
						<td>Subject :</td>
						<td><input type="text" name="subject"  style="width: 100%;"></td>
					</tr>
					<tr>
						<td>Content :</td>
						<td><textarea name="message" style="width: 100%; height: 200px;"></textarea></td>
					</tr>
				</table>
			
				<br>
				<input type="submit" value="send"  style="width: 40%;">
				<br><br>

				</form>

				<br>
				</center>
			</td>
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

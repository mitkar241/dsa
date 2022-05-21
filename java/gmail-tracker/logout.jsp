<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">

<head>

	<meta charset="UTF-8">
	<meta name="description" content="MailTracker WebApp">
	<meta name="author" content="raktimhalder241">
	<meta name="keywords" content="jsp, servlet, html, css, js">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> Error!!! </title>

  <script>

    function login()
    {
        var r = confirm("Are You Sure You Want to Log In?");
        if (r == true)
        {
            window.location.href = "loginForm.jsp";
        }
    }

    window.location.hash="logged-out";
    window.onhashchange=function()
    {
      window.location.hash="logged-out";alert("You have Successfully Logged Out. Session Expired. Cannot Go Back !!!");
    }

  </script>

</head>


<body style="background-color: grey;">

  <%
    session.invalidate();
  %>

	<table style="width : 100%; height : 5%; text-align: center; background-color: red;">
		<tr>
			<td style="width: 40%;">MAILTRACKER</td>
			<td style="width: 40%;">Logged Out</td>
			<td style="width: 20%;"></td>
		</tr>
	</table>

	<table style="width : 100%; height : 80%; background-color: grey;">
		<tr>

			<td style="width: 50%; padding-top: 10px;">
				<center>
				
				<form method="post" style="width: 40%; height: 60%; background-color: red; border:1px solid black;">
				<br><br>You Have Logged Out
				<br><br>
        <button type="button" onclick="login()">Log In</button>
				<br><br>
				<div style="line-height:50%;"><br></div>
			
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

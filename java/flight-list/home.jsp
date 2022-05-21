<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@page import="java.sql.*"%>

<html lang="en">

<head>

	<meta charset="UTF-8">
	<meta name="description" content="E-flight WebApp">
	<meta name="author" content="raktimhalder241">
	<meta name="keywords" content="jsp, html, css, js">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title> E-FLIGHT </title>
	<link rel="stylesheet" type="text/css" href="product.css">

</head>

<body>

	<table class="heading">
		<tr>
			<td>E-FLIGHT
			</td>
		</tr>
	</table>

<%
String deptcity=request.getParameter("deptcity");
String arrvcity=request.getParameter("arrvcity");
int lbound = Integer.parseInt(request.getParameter("lbound"));
int ubound = Integer.parseInt(request.getParameter("ubound"));
String dof = request.getParameter("dof");
String dateforward = dof;
dof=dof.substring(8,10);
int fd = Integer.parseInt(dof);
String airline=request.getParameter("airline");
String lc = request.getParameter("lc");


String loc = " WHERE DEPT = '"+deptcity+"' AND ARRV = '"+arrvcity+"'";
String tim = " ";
if(lbound <= ubound)
	tim = " AND (LBOUND >= "+lbound+" AND LBOUND <= "+ubound+")";
else
	{tim = " AND (LBOUND <= "+lbound+" OR LBOUND >= "+ubound+")";fd++;}
String dsr = " AND FLIGHTDATE = "+fd;
String arl = " ";
if(airline.equals("all")==false)
	arl = " AND AIRLINE = '"+airline+"'";
String leg = " ";
if(lc.equals("all")==false)
	leg = " AND LEG = 1";

String dept = deptcity.substring(0,1).toUpperCase() + deptcity.substring(1);
String arrv = arrvcity.substring(0,1).toUpperCase() + arrvcity.substring(1);

String infomsg="List of Flights - From "+dept+" to "+arrv+" From "+lbound+":00 To "+ubound+":00";

String dchennai = " ", dkolkata = " ", dmumbai = " ", achennai = " ", akolkata = " ", amumbai = " ";
if(deptcity.equals("chennai"))	dchennai="selected";
else if(deptcity.equals("kolkata"))	dkolkata="selected";
else if(deptcity.equals("mumbai"))	dmumbai="selected";

if(arrvcity.equals("chennai"))	achennai="selected";
else if(arrvcity.equals("kolkata"))	akolkata="selected";
else if(arrvcity.equals("mumbai"))	amumbai="selected";

String[] lb= new String[24];
String[] ub= new String[24];
for(int i=0; i<24; i++)
{
	lb[i]=" ";
	ub[i]=" ";
}
lb[lbound]="selected";
ub[ubound]="selected";

String aall = " ", airindia = " ", airasia = " ", indigo = " ", spicejet = " ";
if(airline.equals("all"))	aall="selected";
else if(airline.equals("airindia"))	airindia="selected";
else if(airline.equals("airasia"))	airasia="selected";
else if(airline.equals("indigo"))	indigo="selected";
else if(airline.equals("spicejet"))	spicejet="selected";

String lall = " ", one = " ";
if(leg.equals("all"))	lall="selected";
else one="selected";
%>


	<form  action="home.jsp" style="width: 100%; height: 60%; border:1px solid black;">
		<table class="toolbar">
			<tr>
				<center>
				<td class="options"> Departure City </td>
				<td class="options"> Arrival City </td>
				<td class="options"> Flight Date </td>
				<td class="options"> Lower Bound </td>
				<td class="options"> Upper Bound </td>
				<td class="options"> Airlines </td>
				<td class="options"> Legs </td>
				<td class="options"> Click Here </td>
				</center>
			</tr>

			<tr>

					<center>
					<td class="options">
						<select name="deptcity" class="selecters">
						  <option value="">Select</option>
						  <option value="chennai" <%= dchennai%>>Chennai</option>
						  <option value="kolkata" <%= dkolkata%>>Kolkata</option>
						  <option value="mumbai" <%= dmumbai%>>Mumbai</option>
						</select>
					</td>

					<td class="options">
						<select name="arrvcity" class="selecters">
						  <option value="">Select</option>
						  <option value="chennai" <%= achennai%>>Chennai</option>
						  <option value="kolkata" <%= akolkata%>>Kolkata</option>
						  <option value="mumbai" <%= amumbai%>>Mumbai</option>
						</select>
					</td>

					<td class="options">
						  <input type="date" name="dof" value="<%= dateforward%>" class="selecters">
					</td>

					<td class="options">
						<select name="lbound" class="selecters">
							<option value="0" <%= lb[0]%>>00:00</option>
							<option value="1" <%= lb[1]%>>01:00</option>
							<option value="2" <%= lb[2]%>>02:00</option>
							<option value="3" <%= lb[3]%>>03:00</option>
							<option value="4" <%= lb[4]%>>04:00</option>
							<option value="5" <%= lb[5]%>>05:00</option>
							<option value="6" <%= lb[6]%>>06:00</option>
							<option value="7" <%= lb[7]%>>07:00</option>
							<option value="8" <%= lb[8]%>>08:00</option>
							<option value="9" <%= lb[9]%>>09:00</option>
							<option value="10" <%= lb[10]%>>10:00</option>
							<option value="11" <%= lb[11]%>>11:00</option>
							<option value="12" <%= lb[12]%>>12:00</option>
							<option value="13" <%= lb[13]%>>13:00</option>
							<option value="14" <%= lb[14]%>>14:00</option>
							<option value="15" <%= lb[15]%>>15:00</option>
							<option value="16" <%= lb[16]%>>16:00</option>
							<option value="17" <%= lb[17]%>>17:00</option>
							<option value="18" <%= lb[18]%>>18:00</option>
							<option value="19" <%= lb[19]%>>19:00</option>
							<option value="20" <%= lb[20]%>>20:00</option>
							<option value="21" <%= lb[21]%>>21:00</option>
							<option value="22" <%= lb[22]%>>22:00</option>
							<option value="23" <%= lb[23]%>>23:00</option>
						</select>
					</td>

					<td class="options">
						<select name="ubound" class="selecters">
							<option value="0" <%= ub[0]%>>00:00</option>
							<option value="1" <%= ub[1]%>>01:00</option>
							<option value="2" <%= ub[2]%>>02:00</option>
							<option value="3" <%= ub[3]%>>03:00</option>
							<option value="4" <%= ub[4]%>>04:00</option>
							<option value="5" <%= ub[5]%>>05:00</option>
							<option value="6" <%= ub[6]%>>06:00</option>
							<option value="7" <%= ub[7]%>>07:00</option>
							<option value="8" <%= ub[8]%>>08:00</option>
							<option value="9" <%= ub[9]%>>09:00</option>
							<option value="10" <%= ub[10]%>>10:00</option>
							<option value="11" <%= ub[11]%>>11:00</option>
							<option value="12" <%= ub[12]%>>12:00</option>
							<option value="13" <%= ub[13]%>>13:00</option>
							<option value="14" <%= ub[14]%>>14:00</option>
							<option value="15" <%= ub[15]%>>15:00</option>
							<option value="16" <%= ub[16]%>>16:00</option>
							<option value="17" <%= ub[17]%>>17:00</option>
							<option value="18" <%= ub[18]%>>18:00</option>
							<option value="19" <%= ub[19]%>>19:00</option>
							<option value="20" <%= ub[20]%>>20:00</option>
							<option value="21" <%= ub[21]%>>21:00</option>
							<option value="22" <%= ub[22]%>>22:00</option>
							<option value="23" <%= ub[23]%>>23:00</option>
						</select>
					</td>

					<td class="options">
						<select name="airline" class="selecters">
							<option value="all" <%= aall%>>Any</option>
							<option value="airindia" <%= airindia%>>airindia</option>
							<option value="airasia" <%= airasia%>>airasia</option>
							<option value="indigo" <%= indigo%>>indigo</option>
							<option value="spicejet" <%= spicejet%>>spicejet</option>
						</select>
					</td>

					<td class="options">
						<select name="lc" class="selecters">
							<option value="all" <%= lall%>>Any</option>
							<option value="one" <%= one%>>Single</option>
						</select>
					</td>

					<td class="options">
						<input type="submit" value="Search Flights" class="selecters">
					</td>
					</center>

			</tr>
		</table>

<table style="width:100% ; height: 10%; font-size: 20px; background-color: #000066; color: white;">
<tr><td>
	<center>
		<%= infomsg %>
	</center>
</td></tr>
</table>

	<table class="workspace">
		<tr style="background-color: grey;">
			<th class="products">Airline</th>
			<th class="products">Dept. Time</th>
			<th class="products">Arrv. Time</th>
			<th class="products">Date</th>
			<th class="products">Legs</th>
			<th class="products">Cost (INR)</th>
		</tr>



<%
Connection conn=null;
Statement st=null;
ResultSet rs=null;
String image=null;


try
{
     String driver = "com.mysql.jdbc.Driver";
     String hostname = "localhost";
     String dbName = "EFN";
     String url = "jdbc:mysql://" + hostname + ":3306/" + dbName;
     String uname = "Raktim";
     String password = "241";
     Class.forName(driver);

conn = DriverManager.getConnection(url, uname, password);
st=conn.createStatement();

String qry="SELECT * FROM EFFLIT"+loc+tim+dsr+arl+leg+" ORDER BY LBOUND";
rs=st.executeQuery(qry);


while(rs.next())
{
%>
					<tr>
						<td class="products">
							<img src="src/<%= rs.getString(1) %>" style="width: 30%;height:50px;">
						</td>
						<td class="products"><%= rs.getString(6) %>:00</td>
						<td class="products"><%= rs.getString(7) %>:00</td>
						<td class="products"><%= rs.getString(5) %>/11/2019</td>
						<td class="products"><%= rs.getString(9) %></td>
						<td class="products"><%= rs.getString(8) %></td>
					</tr>
					<%
					}
					}catch(Exception e){System.out.println(e);}
					%>

				</table>
			</td>

		</tr>
	</table>

	<table class="advertisement">
<%

conn=null;
st=null;
rs=null;
image=null;


try
{
     String driver = "com.mysql.jdbc.Driver";
     String hostname = "localhost";
     String dbName = "EFN";
     String url = "jdbc:mysql://" + hostname + ":3306/" + dbName;
     String uname = "Raktim";
     String password = "241";
     Class.forName(driver);

conn = DriverManager.getConnection(url, uname, password);
st=conn.createStatement();

String qry="SELECT * FROM EFOFFR";
rs=st.executeQuery(qry);
int i=0;
while(rs.next())
{
%>
		<tr class="advertisement">
			<td style="width: 25%"><center>
				<img src="src/<%= rs.getString(1) %>" style="width: 100%;height:100%;">
			</td></center>
			<td style="font-family: Georgia, serif; text-align: center; color: black">
				<div style="font-size: 50px;"><%= rs.getString(2) %> - <%= rs.getString(3) %> </div><br>
				<div style="font-size: 20px; background-color: yellow;">
				Price : Rs. <%= rs.getString(4) %> : Discount : <%= rs.getString(5) %>%</div><br>

<script>
var countDownDate = new Date("<%= rs.getString(6) %>").getTime();
var x = setInterval(function() {
  var now = new Date().getTime();
  var distance = countDownDate - now;
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
  document.getElementById("expiry0").innerHTML ="Validity: "+days + "d " + hours+"h "+ minutes + "m " + seconds + "s ";
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("expiry0").innerHTML = "EXPIRED";
  }
}, 1000);
x = setInterval(function() {
  var now = new Date().getTime();
  var distance = countDownDate - now;
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
  document.getElementById("expiry1").innerHTML ="Validity: "+days + "d " + hours+"h "+ minutes + "m " + seconds + "s ";
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("expiry1").innerHTML = "EXPIRED";
  }
}, 1000);
x = setInterval(function() {
  var now = new Date().getTime();
  var distance = countDownDate - now;
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
  document.getElementById("expiry2").innerHTML ="Validity: "+days + "d " + hours+"h "+ minutes + "m " + seconds + "s ";
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("expiry2").innerHTML = "EXPIRED";
  }
}, 1000);
x = setInterval(function() {
  var now = new Date().getTime();
  var distance = countDownDate - now;
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);
  document.getElementById("expiry3").innerHTML ="Validity: "+days + "d " + hours+"h "+ minutes + "m " + seconds + "s ";
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("expiry3").innerHTML = "EXPIRED";
  }
}, 1000);
</script>
				<div id="expiry<%= i%>" style="font-size: 20px; background-color: yellow;"></div>
			</td>
		</tr>
<%
i++;
}
}catch(Exception e){System.out.println(e);}
%>
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
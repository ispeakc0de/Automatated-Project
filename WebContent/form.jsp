	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
    history.forward(); 
    history.backward();    
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Visitor's details </title>
<link rel="stylesheet" type="text/css" href="/BILVisiterForm/CSS/b.css">
<link rel=stylesheet href="/BILVisiterForm/CSS/cs.css">
<style>
.yoyo
{border-radius: 13px 13px 13px 13px;
-moz-border-radius: 13px 13px 13px 13px;
-webkit-border-radius: 13px 13px 13px 13px;
border: 9px double #490da3;
}</style></head>
<%
response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.addHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<script language="JavaScript">
						function open() {
							Webcam.attach('#my_camera');
						}
						function preview_snapshot() {
							// freeze camera so user can preview pic
							Webcam.freeze();

							// swap button sets
							document.getElementById('pre_take_buttons').style.display = 'none';
							document.getElementById('post_take_buttons').style.display = '';
						}
						function cancel_preview() {
							// cancel preview freeze and return to live camera feed
							Webcam.unfreeze();

							// swap buttons back
							document.getElementById('pre_take_buttons').style.display = '';
							document.getElementById('post_take_buttons').style.display = 'none';
						}
						

						function saveimage() {
						
							Webcam.snap(function(data_uri) {
								downloadURI(data_uri,"shubh.jpg"); 
							});
								
				
						}
						function logout()
						{
							window.location="index.jsp";
							session.removeAttribute("User");
							
							
						}
						
						
						
						function downloadURI(uri, name) {
							  var link = document.createElement("a");
							  link.download = name;
							  link.href = uri;
							  document.body.appendChild(link);
							  link.click();
							  document.body.removeChild(link);
							  delete link;
							}
						
						
						
						
						
					</script>

<body><script src="/BILVisiterForm/JS/webcam.js"></script>

	<marquee scrollamount=20 direction=left height=46.2	behavior=alternate bgcolor=orange>
		<font color=blue face="aeril" size=7 > <b> WELCOME TO BHARTI INFRATEL</b>
		</font>
	</marquee>
		<div class=shubh>
				
				<form name="searchform" action="SearchServlet" method="get">
				<center>
					<input type="text" name="search" id="search"  tabindex="1" required autofocus placeholder="Enter Visitor Id" style="border: 2px solid black;background:white;">
					<button type=submit style="color:white;  background-color:red; width: 80px; height: 30px;" name="submit" type="submit">
					Search </button> 
		</center>	</form>
		</div>
		
		<div >
		<table  width=100% height=100px>
		<tr>
		<td>
		<form action="CounterServlet" method=post>
		<input type=hidden value="shubham" name=hidden>
		<button type=submit style="color: white; background-color:red; width: 100px; height: 30px;">New Visitor</button>
			</form>
			</td>	
			
							<td>
							<center>
							<font color=pink size=5><b>Visitor Out</b></font>
							<br><br>
							<form action="OutServlet" method=post>
		<input type=text  placeholder="Enter Visitor ID " name=sid id=sid >
		<button type=submit style="color: white; background-color:red; width: 100px; height: 30px;">Out</button>
			</form></center>
			</td>
			<td align=right><a href="javascript:void(logout())"><button 
							style="color: white; background-color:red; width: 80px; height: 30px;">Log Out</button></a>
							</td></tr></table>
						</div>	
				
				<hr>
				<div>
				<center>
				<font color=yellow size=7><b> Print Report </b></font> <br><br><br><br><br><br>
				
				<form action="ReportServlet" method=post>
				<font color=red size=3><b>TO</b> </font>: <input type=date placeholder"select date" name=todate id=todate>
				&nbsp;&nbsp;&nbsp;<font color=red size=3><b>FROM</b></font> <input type=date placeholder="select date" name=fromdate id=fromdate >
				<button type=submit style="color: white;margin-left:2%; background-color:red; width: 100px; height: 35	px;">Generate Report</button>
				</form>
				</center>
				</div>
	

</body>
</html>
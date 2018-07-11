	
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
							window.location="form.jsp";
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
	<form name="searchform" action="PhoneSearchServlet" method="post">
				<center>
					<input type="text" name="search" id="search"  tabindex="1" required autofocus placeholder="Enter Contact No." style="border: 2px solid black;background:white;">
					<button type=submit style="color:white;  background-color:red; width: 80px; height: 30px;" name="submit" type="submit">
					Search </button> 
		</center>	</form>		
		<div bgcolor=white>
		
				<a href="javascript:void(logout
				())"><button 
							style="color: white;margin-left:94%; background-color:red; width: 80px; height: 30px;">Home</button></a>
						</div>	
					
				<hr>
				<div class="container">
<center>
	<h1 style="color:red;background:white">
	Visitor Id : ${myid}
	</h1></center>
					<form name=myform id="contact" action="DataServlet" method="post">

						<fieldset>
							<font color=white>
								<center>
									<h3 style="height:10px;align:top;margin-bottom:0px;margin: 0px 0 0px;margin-top:0px;">
										<b>VISITOR FORM</b>
									</h3>
								</center>
							</font>
						
</fieldset>

				<fieldset>
				<legend>
						
						<font color=black "> <b>Name</b> </font>  <font color=red>*</font> :</legend>	
						
						<input placeholder="your name" type="text" name=name tabindex="1" required style="width:95%;height:10px; border: 1px solid black;background:#FFFF99;">
						
				
						
							<legend>
							<font color=black ">
								<b> Contact No. </b></font> <font color=red>*</font> :
							</legend>
							<input placeholder="your contact number" type="text" name=phone tabindex="2" required style="width:95%;height:10px; border: 1px solid black;background:#FFFF99;">


							<legend>
							<font color=black ">
								<b> Email Id </b> </font>:
							</legend>
							<input placeholder="Your Email Address" type="email" name=email tabindex="3" style="width:95%;height:10px; border: 1px solid black;background:#FFFF99;">
							


						
							<legend>
							<font color=black ">
								<b> Address</b> </font>
								<font color=red>*</font> :
							</legend>
							<input type=text placeholder="your Address" tabindex="5" required name=address style="width:95%;height:20px; border: 1px solid black;background:#FFFF99;">
					
						<font color=black ">
							<b> Contact Person </b> </font> <font color=red>*</font> : <input
								placeholder="Contact Person" type=text tabindex="6" name=cperson required style="width:95%;height:10px; border: 1px solid black;background:#FFFF99;">


							<font color=black ">	<b>Purpose</b></font> <font color=red>*</font> :
							<input type=text placeholder="Purpose " tabindex="7" required name=purpose style="width:95%;height:12px; border: 1px solid black;background:#FFFF99;">
					
						
						
						
						</fieldset>
						
							<center>
							<input type=hidden value="${myid}" name="myid" id="myid">
								<input type=submit style="color: white; background-color: green; width: 80px; height: 30px;" name="submit" type="submit"> 
								<input type=reset  style="color: white; background-color: green; width: 80px; height: 30px;" name="reset" type="reset">
							</center>
							
							
</form>



				
				</div>
	

</body>
</html>
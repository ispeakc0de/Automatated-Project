	
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
.image
{background-image:url("/BILVisiterForm/shubh.jpeg");
}
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
						
						function logout()
						{
							window.location="form.jsp";
						}
						
						
						
					</script>

<body class=image>
	
	<form name="searchform" action="PhoneSearchServlet" method="post">
				<center>
					<input type="text" name="search" id="search"  tabindex="1" required autofocus placeholder="Enter Contact No." style="border: 2px solid black;background:white;height:35px;width:180px;">
					<button type=submit style="color:white;  background-color:green; width: 80px; height: 35px;" name="submit" type="submit">
					Search </button> 
		</center>	</form>		<br><br>
		<div bgcolor=white>
		<font color=red size=4><center>
		<b>Record Not Found</b></center> </font>
				<a href="javascript:void(logout
				())"><button 
							style="color: white;margin-left:94%; background-color:red; width: 80px; height: 30px;">Home</button></a>
						</div>	
					
				<hr>
				<div class="container">

					<form name=myform id="contact" action="DataServlet" method="post">

							<center>
	<h2 style="color:red;">
	<b>Visitor Id : ${myid}</b>
	</h2></center>
							<font color=white>
								<center>
									<h3 style="height:10px;align:top;margin-bottom:0px;margin: 0px 0 0px;margin-top:0px;">
										<b>VISITOR FORM</b>
									</h3>
								</center>
							</font>
						

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
							
							
</form>	</div>
	

</body>
</html>
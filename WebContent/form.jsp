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
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<style>
table td, table td * {
    vertical-align: top;
}
.btn {
    background-color: DodgerBlue; /* Blue background */
    border:2px	; /* Remove borders */
    color:yellow; /* White text */
    padding: 10px 15px; /* Some padding */
    font-size: 45px; /* Set a font size */
    cursor: pointer; /* Mouse pointer on hover */
}
.btn1 {
    background-color: DodgerBlue; /* Blue background */
    border:2px	; /* Remove borders */
    color:yellow; /* White text */
    padding: 9px 15px; /* Some padding */
    font-size: 25px; /* Set a font size */
    cursor: pointer; /* Mouse pointer on hover */
}

.yoyo
{border-radius: 13px 13px 13px 13px;
-moz-border-radius: 13px 13px 13px 13px;
-webkit-border-radius: 13px 13px 13px 13px;
border: 9px double #490da3;
}
.image
{background-color:white;
}
.white
{background-color:green;
}
.yellow
{background-color:yellow;
margin:10px;
padding:10px	;
}
</style></head>
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

<body class=image><script src="/BILVisiterForm/JS/webcam.js"></script>
<div align=right class=white>
<br>
<a href="javascript:void(logout())"><button type="button"   class="btn"> 
      <i class="fa fa-home"></i>
    </button>
</a>
							</div>
	
		<div class=white>
		<br><br><br><br>
				
				<form name="searchform" action="SearchServlet" method="get">
				
				
				<font color=blue size=20 class=yellow> <b>Welcome Shubham !</b> </font>
					<input type="text" name="search" id="search"  tabindex="1" required autofocus placeholder="Enter Visitor Id" style="margin-left:200px;border: 2px solid black;background:white;height:40px;width:200px;">
					<button type=submit  name="submit" type="submit" class=btn1>
					<i class="fa fa-search"></i> </button> 
					
			</form>
		<br><br>
		</div>
	<table border=2 height=520px width=100%>
	<tr>
	<td  class=white>

			
		
		<div valign=top>
		
		
		<form action="CounterServlet" method=post>
		<input type=hidden value="shubham" name=hidden>
		<button type=submit style="color:yellow; background-color:green; width: 100px; height: 35px;">New Visitor</button>
			</form>
			<br>	
			<a href=printpage.jsp><button  style="color:yellow; background-color:green; width: 100px; height:40px;">Generate Report</button></a>
		
			
				</div>
				</td>
				<td>
							<div >
							<center>
							<br><br><br><br><br><br>
							
						<font color=blue size=6 class=yellow> <b>VISITOR OUT </b> </font>
							<br><br><br>
							<br>
							<form action="OutServlet" method=post>
		<input type=text  placeholder="Enter Visitor ID " name=sid id=sid style="border: 2px solid black;background:white;height:35px;width:200px;">
		<button type=submit style="color:yellow; background-color:green; width:70px; height: 36px;">Out</button>
			</form></center>
			
						</div>	
						</td>
						</tr>
						
				</table>
	

</body>
</html>
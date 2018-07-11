<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
    history.forward(); 
    history.backward();    
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Visitor's details </title>
<style>
.yoyo
{border-radius: 13px 13px 13px 13px;
-moz-border-radius: 13px 13px 13px 13px;
-webkit-border-radius: 13px 13px 13px 13px;
border: 9px double #490da3;
}
.yo{
width:70px;
height:30px;
background:green;
color:white;
}
</style></head>
<%
response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.addHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>
<script language="JavaScript">
						function load()
						{
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
						
function home()
{
	window.location="form.jsp";}
						function saveimage() {
						
							Webcam.snap(function(data_uri) {
								downloadURI(data_uri,"${myid}.jpg"); 
								document.getElementById('my_result').innerHTML = '<img src="'+data_uri+'"/>';
							//	window.location="success.jsp"
							});
								
				
						}

						function printDiv(divName) {

						 var printContents = document.getElementById(divName).innerHTML;
						 w=window.open();
						 w.document.write(printContents);
						 w.print();
						 w.close();
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
					<body> <script src="/BILVisiterForm/JS/webcam.js"></script>


							<a href="javascript:void(home
				())"><button 
							style="color: white;margin-left:94%;align:top; background-color:red; width: 80px; height: 40px;">Home Page</button></a>
							
<table border=2 width=100% height=500px>
<tr>
<td>

				<div>
					<script src="/BILVisitorForm/JS/webcam.js"></script>
					<div id="my_camera" style="width: 150px; height: 180px;"></div>
					
					<a href="javascript:void(load())"><button
							style="color: white; background-color:red; width: 80px; height: 40px;">Open
							Camera</button></a>
					<div id="pre_take_buttons">
					<a href="javascript:void(preview_snapshot())">
						<button style="color: white; background-color:blue; width: 110px; height: 40px;">Take Photo</button></a>
					</div>
					<div id="post_take_buttons" style="display: none">
					<a href="javascript:void(cancel_preview())">
						<button style="color: white; background-color: blue; width: 110px; height: 30px;">Retake </button> </a> 
					<a href="javascript:void(saveimage())">
						<button style="color: white; background-color:blue; width: 110px; height: 30px;">save </button> </a> 
				</div>
		
		</div>	
	
		</td>
		<td align=center>
<div id="print-content"  >
<table name=mytable style="border: 3px solid black;">
<tr>
<td colspan=2 >
<b><font size=4>
Bharti Infratel Limited &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ${mydate} </font></b>
</td>
</tr>
<tr>
<td style="border:none;"><h2>Visitor Pass ${myid} </h2>

</td>
<td style="border:none;" rowspan=4>
<div id="my_result" ></div>
</td>
</tr>
<tr>
<td style="border:none;">

<font size=4> <b> 
${myname}</b> </font>
</td>
</tr>
<tr>
<td style="border:none;"><b> Contact Person : 
${cperson} </b> </td></tr>
<tr>
<td colsan=2 style="border:none;">
<font size=2>
<b>
 This Card is only Valid for Current Date </b> </font>
 </b>
 </td></tr>



</table>
</div>
 <br>	

<input type="button" class=yo onclick="printDiv('print-content')" value="print"> 
</td>
		</tr>
		</table>

</body>
</html>
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
#my_camera { float:right; margin:10px; padding:10px; border:2px solid black; background:#ccc; }
.yoyo
{border-radius: 13px 13px 13px 13px;
-moz-border-radius: 13px 13px 13px 13px;
-webkit-border-radius: 13px 13px 13px 13px;
border: 9px double #490da3;
}
.image
{background-image:url("/BILVisiterForm/shubh.jpeg");
}
.white
{background-color:white;
margin-left:500px;
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

					<body class=image>
					<input type="button" class=yo onclick="Home()" value="Home" style="margin-left:1450px;height:35px;">
	

							
<table width=100% height=500px>
<tr>
<td>
<div id="my_camera"></div>



	<div id="pre_take_buttons">	

			<input type=button value="Take Snapshot" onClick="preview_snapshot()" style="width:110px;margin-left:100px;height:35px;color:white;background:green;">
		</div>
		<div id="post_take_buttons" style="display:none">
		
			<input type=button value="Take Another" onClick="cancel_preview()" style="width:110px;margin-left:50px;height:35px;color:white;background:green;">
			<input type=button value="Save Photo " onClick="save_photo()"  style="width:100px;height:35px;color:white;background:green;">
			
		</div>
	
		</td>
		<td align=center>
<div id="print-content"  >
<table name=mytable style="border: 3px solid black;" class=white>
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
<div id="results" style="width:150px;height:180px;margin:5px;"> </div>
 
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

<input type="button" class=yo onclick="printDiv('print-content')" value="print" style="margin-left:500px;">
</td>

		</tr>
		</table>
		<script type="text/javascript" src="/BILVisiterForm/JS/webcam.min.js"></script>
					<script language="JavaScript">
					
							Webcam.set({
		dest_width:150,
		dest_height:180,
	width: 220,
	height: 220,
	image_format: 'jpeg',
	
});
Webcam.attach( '#my_camera' );
</script>
		<script language="JavaScript">


						

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
						function preview_snapshot() {
							// freeze camera so user can preview pic
							Webcam.freeze();
							
							// swa button sets
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
						
						function save_photo() {
							// actually snap photo (from preview freeze) and display it
							Webcam.snap( function(data_uri) {
								// display results in page
								downloadURI(data_uri,${myid}); 
								document.getElementById('results').innerHTML = 
							'<img src="'+data_uri+'"/>';
								
								// swap buttons back
								document.getElementById('pre_take_buttons').style.display = '';
								document.getElementById('post_take_buttons').style.display = 'none';
								
							} );
						}
						function Home()
						{
							window.location="index.jsp";
						}
						
						
						
					</script>

		

</body>
</html>





	
	
	
	
	
	
	
	
	


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<link rel=stylesheet href="c.css">

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<html>
  <head>
   
 
  <script>
    history.forward(); 
    history.backward();    
</script>

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
 <style>
table td, table td * {
    vertical-align: top;
}
.btn {
    background-color: DodgerBlue; /* Blue background */
    border:2px	; /* Remove borders */
    color:yellow; /* White text */
    padding: 10px 15px; /* Some padding */
    font-size:40px;
     /* Set a font size */
    cursor: pointer; /* Mouse pointer on hover */
}
.btn1 {
    background-color: DodgerBlue; /* Blue background */
    border:2px	; /* Remove borders */
    color:yellow; /* White text */
    padding: 10px 15px; /* Some padding */
    font-size: 20px; /* Set a font size */
    cursor: pointer; /* Mouse pointer on hover */
}
</style>
  </head>
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
<body id="LoginForm">
<table width=100% height=100%>
<tr>
<td >
    <div class="container">
<div class="login-form">
<div class="main-div">
    <form id="Login" action="DataServlet" method="post">
<center>
	<h3 style="color:red;">
	<b>Visitor Id : ${myid}</b>
	</h3></center>
	<br>
        <div class="form-group">
        
	

       <input type="text" name=name class="form-control" id="inputEmail" value="Name : ${myname}" placeholder="Enter Name" required>

        </div>
         <div class="form-group">
        
	

            <input type="text" name=phone class="form-control" id="inputEmail" placeholder="Enter Phone No" value="Phone : ${myphone}" required>

        </div>
         <div class="form-group">
        
	

            <input type="email" name=email class="form-control" id="inputEmail" placeholder="Enter Emai Id" value="Email : ${myemail}" required>

        </div>
         <div class="form-group">
        
	

            <input type="text" name=address class="form-control" id="inputEmail" placeholder="Enter Address" value="Address : ${myaddress}" required>

        </div>
         <div class="form-group">
        
	

            <input type="text" name=cperson class="form-control" id="inputEmail" placeholder="Contact Person" value="CPerson : ${cperson}" required>

        </div>
         <div class="form-group">
        
	

            <input type="text" name=purpose class="form-control" id="inputEmail" placeholder="Enter Purpose"  value="Purpose : ${purpose}" required>

        </div>
        
       <div class="form-group">
        
	

            <input type="text" name=purpose class="form-control" id="inputEmail"   value="In Time : ${intime}" required>

        </div>
        <div class="form-group">
        
	

            <input type="text" name=purpose class="form-control" id="inputEmail"  value="Out Time : ${outtime}" required>

        </div>
        
        
    </form>
    
    </div>
</div></div>

</td>
    <td>
<div align=right>
<a href="javascript:void(logout())"><button type="button"   class="btn"> 
      <i class="fa fa-home"></i>
    </button>
</a>

</div>
</td>

</tr></table>
</body>
</html>



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
<td>
<form name="searchform" action="PhoneSearchServlet" method="post">
				<center>         
					<input type="text" name="search" id="search"  tabindex="1" required autofocus placeholder="Enter Contact No." style="margin-left:180px;height:35px;width:180px;">
					<button type=submit name="submit" type="submit" class=btn1>
					<i class="fa fa-search"></i>  </button> 
		</center>	</form>		
    </td>
    <td>
<div align=right>
<a href="javascript:void(logout())"><button type="button"   class="btn"> 
      <i class="fa fa-home"></i>
    </button>
</a>

</div>
</td>
</tr>
<tr>
<td colspan=2>
    <div class="container">
<h1 class="form-heading"><center>Visitor Form </center></h1>
<div class="login-form">
<div class="main-div">
    <form id="Login" action="DataServlet" method="post">
<center>
	<h3 style="color:red;">
	<b>Visitor Id : ${myid}</b>
	</h3></center>
	<br>
        <div class="form-group">
        
	

            <input type="text" name=name class="form-control" id="inputEmail" placeholder="Enter Name" required>

        </div>
         <div class="form-group">
        
	

            <input type="text" name=phone class="form-control" id="inputEmail" placeholder="Enter Phone No" required>

        </div>
         <div class="form-group">
        
	

            <input type="text" name=email class="form-control" id="inputEmail" placeholder="Enter Emai Id" required>

        </div>
         <div class="form-group">
        
	

            <input type="text" name=address class="form-control" id="inputEmail" placeholder="Enter Address" required>

        </div>
         <div class="form-group">
        
	

            <input type="text" name=cperson class="form-control" id="inputEmail" placeholder="Contact Person" required>

        </div>
         <div class="form-group">
        
	

            <input type="text" name=purpose class="form-control" id="inputEmail" placeholder="Enter Purpose" required>

        </div>
        
        <button type="submit" class="btn btn-primary">Submit</button>
        <input type=hidden value="${myid}" name="myid" id="myid">

    </form>
    
    </div>
</div></div>

</td></tr></table>
</body>
</html>

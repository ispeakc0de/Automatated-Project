<%@page import="mypack.*" %>
<html>
<head>
<title> Login Page </title><script>
    history.forward();
    history.backward();
</script>

<style>

.yoyo
{border-radius: 13px 13px 13px 13px;
-moz-border-radius: 13px 13px 13px 13px;
-webkit-border-radius: 13px 13px 13px 13px;
border: 9px double white;
background:green;
}

</style>

</head><%
response.addHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.addHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
%>

<body  class=yoyo ><script src="/BILVisiterForm/JS/webcam.js"></script>

<div border=2 >
<div align=left>
 
<img src="/BILVisiterForm/a.jpeg" align=left height=94% width=40% border=1 \>
</div>
<center>
<font color=pink size=20><br>

<b> Welcome To BIL </b> 
<br><br>
<b>
 Visitor's Login Page </b> </font>
<br><br><br>

<font size=5 color=yellow>
<b> Enter Username and Password </b></font><br><br>
<form name=login action="login" method="post">
<label for="username"><font color=yellow> <b>Username</b></font>	 </label><font color=red> * </font>
<input type=text name=username required id=username placeholder="Username" style=" border: 1px solid black;background:#FFFF99;height:25px;"	><br><br><font color=yellow><b>
Password</b> </font><font color=red> * </font>&nbsp;
<input type=password name=password placeholder="Password" id=password required style=" border: 1px solid black;background:#FFFF99;height:25px;"> <br><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type=submit name=submit style="background:red;color:white;height:30px;width:70px">&nbsp;&nbsp;
</form> </center>
</div></body></form>
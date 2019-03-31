<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
				<center>
				<font color=blue size=7><b> Print Report </b></font> <br><br><br><br><br><br>
				
				<form action="ReportServlet" method=post>
				<font color=red size=3><b>TO</b> </font>: <input type=date placeholder"select date" name=todate id=todate style="height:30px;width:150px;border:1px solid black;">
				&nbsp;&nbsp;&nbsp;<font color=red size=3><b>FROM</b></font> <input type=date placeholder="select date" name=fromdate id=fromdate style="height:30px;width:150px;border:1px solid black;">
				<button type=submit style="color: white;margin-left:2%; background-color:green; width: 120px; height: 40px;">Generate Report</button>
				</form>
				</center>
				
				</div>
</body>
</html>
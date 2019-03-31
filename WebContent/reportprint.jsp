<html>
<head>
</head>
<style>
.image
{background-image:url("/BILVisiterForm/shubh.jpeg");
}
.white
{background-color:white;
}
</style>
<script type="text/javascript">


function printDiv(divName) {

 var printContents = document.getElementById(divName).innerHTML;
 w=window.open();
 w.document.write(printContents);
 w.print();
 w.close();
}
function home()
{
	window.location="form.jsp";
}

</script>
	<%@ page import="java.io.*" %>
	<%@ page import="java.awt.image.BufferedImage" %>
	<%@ page import="java.text.SimpleDateFormat" %>
	<%@ page import="java.util.Date" %>
	<%@ page import="java.sql.*" %>
	<%@ page import="javax.servlet.RequestDispatcher" %>
	<%@ page import="javax.servlet.ServletException" %>
	<%@ page import="javax.servlet.http.*" %>
	<%@ page import="java.io.IOException" %>
	<%@ page import="java.util.*" %>
	<%@ page import="javax.servlet.ServletException" %>
	<%@ page import="javax.servlet.annotation.WebServlet" %>
	<%@ page import=" java.io.File" %>
	
	<body class=image>
	<a href="javascript:void(home
				())"><button 
							style="color: white;margin-left:94%;align:top; background-color:red; width: 80px; height: 40px;">Home Page</button></a>
	<% 
	String todate=(String)request.getAttribute("todate");
	String fromdate=(String)request.getAttribute("fromdate");
	try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		//	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pubdb", "root", "root");

			PreparedStatement ps = con.prepareStatement("select * from visitor where indate between ? and ? ");
			ps.setString(1,todate);
			ps.setString(2,fromdate);
		//	ps.setString(1, formatter.format(date));
			//out.print(mydata);
			//sessiooutn.setAttribute("image",image);
			out.print("<div id=print class=white>");
		
			 out.print("<table border=1 cellpadding=5>");  
			out.print("<caption><b>Visitor's List </b></caption>");  
			  
			ResultSet rs=ps.executeQuery();  
			              
			/* Printing column names */  
			ResultSetMetaData rsmd=rs.getMetaData();  
			int total=rsmd.getColumnCount();  
			out.print("<tr>");  
			for(int i=1;i<=total;i++)  
			{  
			out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
			}  
			  
			out.print("</tr>");  
			              
			/* Printing result */  
			  
			while(rs.next())  
			{  
			out.print("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td></tr>");  
			                  
			}  
			  
			out.print("</table>");  
			out.print("</div>");
			
			}
	catch (Exception e2) {
		System.out.println(e2);
	}
			%>
			<CENTER>
			<input type="button" class=yo onclick="printDiv('print')" value="print" style="background:red;COLOR:WHITE;WIDTH:70;HEIGHT:30;"> </CENTER>
			</body>
			</html>
package mypack;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.catalina.Valve;

public class SearchServlet extends HttpServlet {
	String myname, myphone, myemail, myaddress, cperson, purpose,intime,outtime;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		HttpSession session = request.getSession(true);
		PrintWriter out = response.getWriter();
		//Visitor v = new Visitor();

		String id = request.getParameter("search");

		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pubdb", "root", "root");
			PreparedStatement ps = con.prepareStatement("select * from visitor where id=?");
			ps.setString(1,id);

			// .print("<table width=50% border=1>");
			// out.print("<caption>Result:</caption>");

			ResultSet rs1 = ps.executeQuery();

			/* Printing column names */
			// ResultSetMetaData rsmd=rs.getMetaData();
			int total = 0;
			while (rs1.next()) {
				total++;
			}
			if (total == 0) {
				RequestDispatcher rd = request.getRequestDispatcher("record-not-found.jsp");
				rd.forward(request, response);
			} else {

				
				ResultSet rs = ps.executeQuery();

				while (rs.next()) {	
					myname = rs.getString(3);
					myphone = rs.getString(4);
					myemail = rs.getString(5);
					myaddress = rs.getString(6);
					cperson = rs.getString(7);
					purpose = rs.getString(8);
					intime=rs.getString(2);
					outtime=rs.getString(10);

				}
				//out.println("myname : " + v.myname + "   purpose   " + v.purpose);
				
				 session.setAttribute("myname",myname);
				  session.setAttribute("myphone",myphone);
				 session.setAttribute("myemail",myemail);
				  session.setAttribute("myaddress",myaddress);
				  session.setAttribute("cperson",cperson);
				  session.setAttribute("purpose",purpose);
				  session.setAttribute("intime",intime);
				  session.setAttribute("outtime",outtime);

				  
				// out.println("myname : "+myname+"   purpose   "+purpose);
		
				//session.setAttribute("v",v);
				
				request.getRequestDispatcher("edit.jsp").forward(request, response);
				// out.print("</table>");
			}

		} catch (Exception e2) {
			e2.printStackTrace();
		}

		finally {
			out.close();
		}

	}
}
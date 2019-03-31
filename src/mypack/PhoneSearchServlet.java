package mypack;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.catalina.Valve;

public class PhoneSearchServlet extends HttpServlet {
	String myname, myphone, myemail, myaddress, cperson, purpose;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		HttpSession session = request.getSession(true);
		PrintWriter out = response.getWriter();
		Visitor v = new Visitor();

		String phone = request.getParameter("search");

		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pubdb", "root", "root");
			PreparedStatement ps = con.prepareStatement("select * from visitor where phone=?");
			ps.setString(1, phone);

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
				RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
				rd.forward(request, response);
			} else {

				
				ResultSet rs = ps.executeQuery();

				while (rs.next()) {
					myname = rs.getString(2);
					myphone = rs.getString(3);
					myemail = rs.getString(4);
					myaddress = rs.getString(5);
                  cperson=rs.getString(6);
                   purpose=rs.getString(7);
				}
				//out.println("myname : " + v.myname + "   purpose   " + v.purpose);
				
				 session.setAttribute("myname",myname);
				  session.setAttribute("myphone",myphone);
				 session.setAttribute("myemail",myemail);
				  session.setAttribute("myaddress",myaddress);
				  session.setAttribute("cperson",cperson);
				  session.setAttribute("purpose",purpose);
				//out.println("myname : "+myname+" );
		
				//session.setAttribute("v",v);
				
				request.getRequestDispatcher("newedit.jsp").forward(request, response);
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
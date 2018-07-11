package mypack;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.catalina.Valve;

public class CounterServlet extends HttpServlet {
	int myid;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);

	response.setContentType("text/html");
	PrintWriter out = response.getWriter();

		//String phone = request.getParameter("search");

		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pubdb", "root", "root");
			PreparedStatement ps = con.prepareStatement("select max(id) from visitor");
			//ps.setString(1, phone);

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
					myid = rs.getInt(1);
					myid++;

				}
				//out.println("myname : " + v.myname + "   purpose   " + v.purpose);
				
				// session.setAttribute("myname",myname);
				  //session.setAttribute("myphone",myphone);
				 //session.setAttribute("myemail",myemail);
				  //session.setAttribute("myaddress",myaddress);
				  //session.setAttribute("cperson",cperson);
				  session.setAttribute("myid",myid);
				// out.println("myname : "+myname+"   purpose   "+purpose);
		
				//session.setAttribute("v",v);
				
				//request.getRequestDispatcher("NewRecord.jsp").forward(request, response);
				// out.print("myid : "+myid);
				request.getRequestDispatcher("NewRecord.jsp").forward(request, response);
			}

		} catch (Exception e2) {
			e2.printStackTrace();
		}

		finally {
			out.close();
		}

	}
}
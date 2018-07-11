package mypack;

import java.io.*;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;

import org.apache.catalina.Valve;

public class UpdateServlet extends HttpServlet {
	

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);

	response.setContentType("text/html");
	PrintWriter out = response.getWriter();

		String outtime = request.getParameter("outtime");
	String sid= request.getParameter("sid");

		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pubdb", "root", "root");
			PreparedStatement ps = con.prepareStatement("update visitor set Out_Time = ? where id = ?");
			ps.setString(1,outtime);
			ps.setString(2,sid);
			 ps.executeUpdate();
			 ps.close();

			// .print("<table width=50% border=1>");
			 out.print("outtime : "+outtime);
			 out.print("sid : "+sid);
			
		//	ResultSet rs1 = ps.executeQuery();

			/* Printing column names */
			// ResultSetMetaData rsmd=rs.getMetaData();
		//	int total = 0;
		//	while (rs1.next()) {
		//		total++;
			//}
		//	if (total == 0) {
				
			//} else {

				
			//	ResultSet rs = ps.executeQuery();

			//	while (rs.next()) {
				//	myid = rs.getInt(1);
					

			//	}
				////out.println("myname : " + v.myname + "   purpose   " + v.purpose);
				
				// session.setAttribute("myname",myname);
				  //session.setAttribute("myphone",myphone);
				 //session.setAttribute("myemail",myemail);
				  //session.setAttribute("myaddress",myaddress);
				  //session.setAttribute("cperson",cperson);
				 // session.setAttribute("myid",myid);
				// out.println("myname : "+myname+"   purpose   "+purpose);
		
				//session.setAttribute("v",v);
				
				//request.getRequestDispatcher("NewRecord.jsp").forward(request, response);
				// out.print("myid : "+myid);
				request.getRequestDispatcher("form.jsp").forward(request, response);
			

		} catch (Exception e2) {
			RequestDispatcher rd = request.getRequestDispatcher("record-not-found.jsp");
			rd.forward(request, response);
		}

		finally {
			out.close();
		}

	}
}
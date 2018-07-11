package mypack;

import java.io.*;

import java.awt.image.BufferedImage;
import java.text.SimpleDateFormat;  
import java.util.Date;  
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import sun.misc.BASE64Decoder;

import java.io.File;
import javax.imageio.ImageIO;
public class DataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession(true);

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		//Save s = new Save();
		//s.set();
		//out.println("hello");
        String myid=request.getParameter("myid");
		String name = request.getParameter("name");
	//	String image ="C:\\Users\\Administrator\\workspace\\VisitorForm\\photos\\"+name+".png";
		
		//out.println("name == " +name);
		String phone = request.getParameter("phone");
		//out.println("phone == " +phone );
		String email = request.getParameter("email");
		//out.println("email :" +email);
		String address = request.getParameter("address");
		//out.println("address : "+address);
		String cperson = request.getParameter("cperson");
		//out.println("cperson : "+cperson);
		String purpose = request.getParameter("purpose");
		String outtime="";
	//	out.println("purpose : "+purpose);
	//	String mydata = request.getParameter("mydata");
		//out.println("mydata : "+mydata);
		 SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
		Date date = new Date();  
		String dd=formatter.format(date);
		String image=myid+".png";
		session.setAttribute("myname",name);
		session.setAttribute("cperson",cperson);
		session.setAttribute("mydate",dd);
		//Date today = new Date(); 
		java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
		//PrepStmt.setDate(1, sqlDate);
		

		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		//	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver").newInstance();
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pubdb", "root", "root");

			PreparedStatement ps = con.prepareStatement("insert into visitor values(?,?,?,?,?,?,?,?,?,?,?)");
			ps.setNull(1,java.sql.Types.INTEGER);
			ps.setString(2, dd);
			ps.setString(3, name);
			ps.setString(4, phone);
			ps.setString(5, email);
			ps.setString(6, address);
			ps.setString(7, cperson);
			ps.setString(8, purpose);
			
			ps.setString(9,image);
			ps.setString(10,outtime);
			ps.setDate(11,sqlDate);
		//	ps.setString(1, formatter.format(date));
			int i = ps.executeUpdate();
			//out.print(mydata);
			session.setAttribute("image",image);
			
			if (i > 0)
			{ RequestDispatcher rd=request.getRequestDispatcher("print.jsp");  
		     rd.forward(request, response); 
			}
			else
				out.print("there is some error");
			
				
			

		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}
	}

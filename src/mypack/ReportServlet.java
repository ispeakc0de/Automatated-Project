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

public class ReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
		public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session = request.getSession(true);

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String todate = request.getParameter("todate");
		String fromdate = request.getParameter("fromdate");
	
		request.setAttribute("todate",todate);
		request.setAttribute("fromdate",fromdate);
		RequestDispatcher rd=request.getRequestDispatcher("reportprint.jsp");  
	     rd.forward(request, response);
			

		out.close();
	}
	}

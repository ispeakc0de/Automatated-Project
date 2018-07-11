package mypack;

import java.io.IOException;
import java.io.PrintWriter;  
import javax.servlet.RequestDispatcher;  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  response.setContentType("text/html");  
		  HttpSession session = request.getSession(true);
	        PrintWriter out=response.getWriter();  
	          
	        String username=request.getParameter("username");  
	        String password=request.getParameter("password");  
	          
	        LoginBean bean=new LoginBean();  
	        bean.setName(username);  
	        bean.setPassword(password);  
	        session.setAttribute("load",username);  
	          
	        boolean status=bean.validate();  
	          
	        if(status){  
	        	if (bean != null ) {
	            RequestDispatcher rd=request.getRequestDispatcher("form.jsp");  
	            rd.forward(request, response);  }
	        	else
	        	{
	        		 RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
	 	            rd.forward(request, response);
	        	}
	        }  
	        else{  if(bean!=null)
	        {
	            RequestDispatcher rd=request.getRequestDispatcher("login-error.jsp");  
	            rd.forward(request, response);  
	        }  
	       
	        	else
	        	{
	        		 RequestDispatcher rd=request.getRequestDispatcher("index.jsp");  
	 	            rd.forward(request, response);
	        	}}}  
	
	@Override  
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)  
            throws ServletException, IOException {  
            doPost(req, resp);  
    }  
	}



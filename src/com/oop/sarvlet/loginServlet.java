package com.oop.sarvlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oop.model.User;
import com.oop.util.UseraccountDButil;



/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		 
		
		
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
	        User user=UseraccountDButil.validat(email, password);
				
				
				
			if(user!= null) {
					
				
				    
					
					
					  HttpSession session=request.getSession();  
				      session.setAttribute("user",user);  
					
					
					RequestDispatcher dispatcher=request.getRequestDispatcher("index.jsp");
					
					dispatcher.forward(request, response);
				
			}
			else {
					
					request.setAttribute("message", "*The email address or Password you entered isn't connected to an account");
					RequestDispatcher dispatcher=request.getRequestDispatcher("login.jsp");
					dispatcher.forward(request, response);
					
			}
				
			
			
			
			
	}

}

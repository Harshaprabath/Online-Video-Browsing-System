package com.oop.sarvlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.util.RegisterDButil;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		try {
			
			boolean isTrue=RegisterDButil.register(firstName,lastName,address,city,country,email,password);
			
			if(isTrue==true) {
				
				RequestDispatcher dispatcher=request.getRequestDispatcher("Register.jsp");
				dispatcher.forward(request, response);
				
			}
			
			else {
				
				RequestDispatcher dispather=request.getRequestDispatcher("Register.jsp");
				dispather.forward(request,response);
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		
	}

}

package com.oop.sarvlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.util.UseraccountDButil;


/**
 * Servlet implementation class UserAccontUpdateServlet
 */
@WebServlet("/UserAccontUpdateServlet")
public class UserAccontUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAccontUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int userID = Integer.parseInt(request.getParameter("userID"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String address = request.getParameter("address");
		String city = request.getParameter("city");
		String country = request.getParameter("country");
		String email = request.getParameter("email");
		
		
		try {
			
			boolean isTrue= UseraccountDButil.updateUser(userID, firstName,lastName, address , city , country, email );
			
			if(isTrue==true) {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("Useraccount.jsp");
				dispatcher.forward(request, response);
				
			}
			else {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("Useraccount.jsp");
				dispatcher.forward(request, response);
			}
			
		}catch(Exception e) {
			
			e.printStackTrace();
			
			
		}
		
	}

}

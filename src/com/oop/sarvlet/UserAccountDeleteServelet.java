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
 * Servlet implementation class UserAccountDeleteServelet
 */
@WebServlet("/UserAccountDeleteServelet")
public class UserAccountDeleteServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAccountDeleteServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		int userID = Integer.parseInt(request.getParameter("userID"));
		
		
		try {
			
			boolean isTrue= UseraccountDButil.deleteUser(userID);
			
			if(isTrue==true) {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
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

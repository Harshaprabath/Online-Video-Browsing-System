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
 * Servlet implementation class UserAccChengePassword
 */
@WebServlet("/UserAccChengePassword")
public class UserAccChengePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAccChengePassword() {
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int UserId = Integer.parseInt(request.getParameter("UserId"));
		String password = request.getParameter("password");
		
		boolean isTrue=UseraccountDButil.ChengePassword(UserId, password);
		
		if(isTrue==true) {
			
			RequestDispatcher dispatcher=request.getRequestDispatcher("Useraccount.jsp");
			dispatcher.forward(request, response);
			
		}
		
		else {
			
			RequestDispatcher dispather=request.getRequestDispatcher("Useraccount.jsp");
			dispather.forward(request,response);
		}
	}

}

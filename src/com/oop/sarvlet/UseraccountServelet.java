package com.oop.sarvlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oop.model.User;
import com.oop.util.UseraccountDButil;

/**
 * Servlet implementation class UseraccountServelet
 */
@WebServlet("/UseraccountServelet")
public class UseraccountServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UseraccountServelet() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	
    	String userId = request.getParameter("userID");
    	
    	UseraccountDButil userdb=new UseraccountDButil();
    	List<User>userDetails= userdb.useraccountDetails(userId);
    	
    	if(userDetails != null) {
    		
    		request.setAttribute("user", userDetails);
        	request.getRequestDispatcher("Useraccount.jsp").forward(request, response);
        	
    	}
    	
    	
		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
	}

}

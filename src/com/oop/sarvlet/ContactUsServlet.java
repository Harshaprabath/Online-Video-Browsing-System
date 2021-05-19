package com.oop.sarvlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oop.util.ContactUsDButil;

/**
 * Servlet implementation class ContactUsDButil
 */
@WebServlet("/ContactUsServlet")
public class ContactUsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactUsServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//collect data from message foam
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");
		String Inquiry = request.getParameter("inquiry");
		String Message = request.getParameter("message");
		
		//calling contact us db util and verify data added successfully
		try {
			//initialize resulting messages
			String Success_msg = "Your message get recorded. We will contact you via Email";
			String UnSuccess_msg = "Error occured. Please try againg!";
			
			boolean isTrue = ContactUsDButil.addTo_messages(Name, Email, Inquiry, Message);
			
			if (isTrue == true) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("contact.jsp");
				request.setAttribute("message", Success_msg);	
				dispatcher.forward(request, response);
			}
			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("contact.jsp");
				request.setAttribute("message", UnSuccess_msg);
				dispatcher.forward(request, response);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}









package com.oop.sarvlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oop.util.requestSongDButil;

/**
 * Servlet implementation class requestSongServlet
 */
@WebServlet("/requestSongServlet")
public class requestSongServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public requestSongServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	  /* Request_songs ruqSong=new Request_songs();
		
		ruqSong.setSongName(request.getParameter("songName")) ;
		ruqSong.setSingerName(request.getParameter("singerName"));
		ruqSong.setEmail(request.getParameter("email"));			*/
		
		
	    String songName=request.getParameter("songName");
		String singerName= request.getParameter("singerName");
		String email=request.getParameter("email"); 
		
		try {
			boolean isTrue= requestSongDButil.requestSong(songName,singerName,email);
			
			if(isTrue==true) {
			
				RequestDispatcher dispatcher = request.getRequestDispatcher("RequestSong.jsp");
				dispatcher.forward(request, response);
			
			}
			else {
				
				RequestDispatcher dispatcher = request.getRequestDispatcher("RequestSong.jsp");
				dispatcher.forward(request, response);
			}
			
		}catch(Exception e) {
			 
			e.printStackTrace();
		}
        
		
       
  }

}

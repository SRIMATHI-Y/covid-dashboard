package com.covid.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class epasspermitprocess
 */
public class epasspermitprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String source=request.getParameter("source").toString();
		System.out.println(source);
		String destination=request.getParameter("destination").toString();
		System.out.println(destination);
		if(source.equals("3") || source.equals("2") || source.equals("4") || source.equals("10") || source.equals("11") || source.equals("14") || source.equals("22") || 
				source.equals("27") || source.equals("33") || source.equals("29") || source.equals("28") || source.equals("30") || source.equals("34") || source.equals("38") || 
				destination.equals("3") || destination.equals("2") || destination.equals("4") || destination.equals("10") || destination.equals("11") || destination.equals("14") || destination.equals("22") || destination.equals("27") || 
				destination.equals("33") || destination.equals("29") || source.equals("28") || destination.equals("30") || destination.equals("34") || destination.equals("38"))
		{
			System.out.println("nope");
			response.setStatus(403);
		}
		else
		{
			System.out.println("yessss");
			response.setStatus(200);
		}
		
	}

}

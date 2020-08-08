package com.covid.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Adminlogin
 */
public class Adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello");
		// getting userName and password
		String adminName = request.getParameter("username");
		String adminPassword = request.getParameter("password");
		System.out.println(adminName + " " + adminPassword);
		// validation of inputs
		if (adminName.equals("Srimathi") && adminPassword.equals("2002")) {
			// input values matched
			// Session object to maintain for user
			HttpSession session = request.getSession();
			// setting the session values
			session.setAttribute("Name", adminName);
			session.setAttribute("aPass", adminPassword);
			// redirect to next page
			response.setStatus(200);
		} else {
			// input values mismatch
			// reload same page
			response.setStatus(403);
		}
	}

}

package com.covid.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class verifyotp
 */
public class verifyotp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		System.out.println("verification part");
		String sentOtp =  session.getAttribute("generatedOTP").toString();
		if(sentOtp.equals(null))
			response.setStatus(403);
		String receivedOtp = request.getParameter("otp");
		System.out.println(sentOtp+" "+receivedOtp);
		if(sentOtp.equals(receivedOtp)) {
			response.setStatus(200);
		}
		else
			response.setStatus(403);
	}

}

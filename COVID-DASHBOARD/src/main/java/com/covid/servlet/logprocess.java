package com.covid.servlet;
import com.covid.model.sendmes;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class logprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mobnum=request.getParameter("number");
		System.out.println(mobnum);
		if(mobnum.length() == 10) {
			//object instatntiation for sendSMS class
			sendmes sms = new sendmes();
			//Generating password using generateOTP method
			String otpgen = sms.generateOTP(5);
			System.out.println("gen");//call sendOTP method to send generated otp to user
			sms.sendOTP(otpgen, mobnum);
			System.out.println("otp done");//Session object created
			HttpSession session = request.getSession();
			//Setting the mobileNumber and generatedOTP
			session.setAttribute("mobileNumber", mobnum);
			session.setAttribute("generatedOTP", otpgen);
			
		}
		else // else condn
			response.sendRedirect("loginpage.jsp");
	}

}

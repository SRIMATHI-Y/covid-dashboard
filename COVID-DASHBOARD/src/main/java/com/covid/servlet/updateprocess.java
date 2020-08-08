package com.covid.servlet;
 import java.sql.*;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateprocess
 */
public class updateprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String driverName = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/covid";
		String userid = "root";
		String password = "Srimathi@20";
		
			int id =Integer.parseInt(request.getParameter("id"));
			String recovered = request.getParameter("recovered");
			String confirmed = request.getParameter("confirmed");
			String death = request.getParameter("death");
			String active = request.getParameter("active");
			if(id != 0){
				Connection con = null;
				PreparedStatement ps = null;
				try{
					Class.forName(driverName);
					con = DriverManager.getConnection(url, userid, password);
					String sql = "UPDATE covdashboard SET confirmed = ?, recovered = ?, death = ?,active = ? WHERE id = " + id;
					ps = con.prepareStatement(sql);
					ps.setString(1, confirmed);
					ps.setString(2, active);
					ps.setString(3, recovered);
					ps.setString(4, active);
					int i = ps.executeUpdate();
					if(i != 0){
						System.out.print("Record Updated Successfully");
					    //String redirectURL = "http://localhost:8080/SalesandInventory/System/profiletest.jsp";
						response.setStatus(200);
					}
					else{
						System.out.println("There is a problem in updating Record.");
						response.setStatus(403);
					}
				}
			catch(SQLException sql){
				request.setAttribute("error", sql);
				System.out.println(sql);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}

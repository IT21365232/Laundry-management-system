package com.customer;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Customerinsert")
public class Customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String email =  request.getParameter("email");
		String username = request.getParameter("uid");
		String password = request.getParameter("pass");
		
		boolean isTrue;
		isTrue = customerDBUtil.insertcustomer(name, address, phone, email, username, password);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request,response);
		}
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request,response);
		}
		
	}

}
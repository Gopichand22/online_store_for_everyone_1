package com.onlinestore.matters.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlinestore.matters.services.RegisterService;
import com.onlinestore.matters.services.impl.RegisterServiceImpl;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String userName = request.getParameter("uname");
		String email = request.getParameter("emailme");
		String password = request.getParameter("pass");
		String storeName=request.getParameter("storename");
		String gender=request.getParameter("gender");
		String dob=request.getParameter("dob");
		String address=request.getParameter("add1")+" | "+request.getParameter("add2");
		String city=request.getParameter("city");
		String state=request.getParameter("state");
		String country=request.getParameter("country");
		
//		System.out.println(firstName);
//		System.out.println(lastName);
//		System.out.println(userName);
//		System.out.println(email);
//		System.out.println(password);
//		System.out.println(storeName);
		System.out.println("Servelt 1");
		System.out.println(address);
		System.out.println(gender);
		System.out.println(city);
		System.out.println(state);
		System.out.println(country);
		RegisterService registerService = new RegisterServiceImpl();
		if(registerService.registerDetails(firstName, lastName, userName, email, password,storeName,gender,dob,address,city,state,country)) {
				request.getRequestDispatcher("/login.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("/register.jsp").forward(request, response);
			request.setAttribute("error1", "An account with this Email Already exists,Try with another email account");
		}

	}
}

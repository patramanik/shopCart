package com.demo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.io.IOException;

import com.demo.daoimpl.AuthDaoImpl;
import com.demo.entity.Users;


@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {
	
	private AuthDaoImpl authimpl;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		String phone = req.getParameter("phone");
		String password = req.getParameter("password");
		String role = "2";
		
		Users user = new Users();
		user.setName(name);
		user.setEmail(email);
		user.setPhone(phone);
		user.setPassword(password);
		user.setRole(role);
		
		
		
		authimpl = new AuthDaoImpl();
		
		authimpl.registerUser(user);
		
		System.out.println("add user");
		
		
		
		resp.sendRedirect("index.jsp");
		
	}

}

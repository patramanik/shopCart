package com.demo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.demo.daoimpl.AuthDaoImpl;
import com.demo.entity.Users;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	private AuthDaoImpl authimpl;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		
		authimpl = new AuthDaoImpl();
		
		Users user = authimpl.getUserByEmail(email, password);
		
		int role = Integer.parseInt(user.getRole());
		
		 if (role == 2) {
		    // You can also set session attributes here if needed
			req.getSession().setAttribute("user", user);
   
		    resp.sendRedirect("index.jsp");
		} else {
			req.getSession().setAttribute("user", user);
			resp.sendRedirect("dashboard.jsp");
		}
		
		
	}

}

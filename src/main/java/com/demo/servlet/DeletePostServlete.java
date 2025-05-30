package com.demo.servlet;

import java.io.IOException;

import com.demo.daoimpl.ProductDaoImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/DeletePostServlete")
public class DeletePostServlete extends HttpServlet{
	
	private ProductDaoImpl pimpl;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		System.out.println(id);
		
		pimpl = new ProductDaoImpl();
		
		pimpl.deleteProduct(id);
		
		resp.sendRedirect("AdminProductServlet");
	}
	

}

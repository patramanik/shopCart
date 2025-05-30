package com.demo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.demo.daoimpl.CategoryDaoImpl;


@WebServlet("/deleteCategoryServlet")
public class DeleteCategoryServlet extends HttpServlet {


	private CategoryDaoImpl cimpl;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		System.out.println(id);
		
		cimpl = new CategoryDaoImpl();
		
		cimpl.deleteCategory(id);
		
		resp.sendRedirect("AdminCategory");
	}

}

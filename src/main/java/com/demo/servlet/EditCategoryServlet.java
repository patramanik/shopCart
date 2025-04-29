package com.demo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.demo.daoimpl.CategoryDaoImpl;
import com.demo.entity.Category;


@WebServlet("/EditCategoryServlet")
public class EditCategoryServlet extends HttpServlet {

	private CategoryDaoImpl cimpl;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String description = req.getParameter("description");
		
		
		Category c = new Category();
		
		c.setId(id);
		c.setName(name);
		c.setDescription(description);
		
		cimpl = new CategoryDaoImpl();
		
		cimpl.updateCategory(c);
		
		resp.sendRedirect("AdminCategory");
		
	}

}

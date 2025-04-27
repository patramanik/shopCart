package com.demo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.demo.daoimpl.CategoryDaoImpl;
import com.demo.entity.Category;


@WebServlet("/addCategoryServlet")
public class AddCategoryServlet extends HttpServlet {
	
	private CategoryDaoImpl cimpl;
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name = req.getParameter("name");
		String description = req.getParameter("description");
		
		if(name !=null) {
			
			System.out.println("name is not null");
			
			Category c = new Category();
			
			c.setName(name);
			c.setDescription(description);
			
			cimpl = new CategoryDaoImpl();
			
			cimpl.addCategory(c);
			
		}else {
			
			req.setAttribute("massege", "Name is not be null");
			
		}
		
		res.sendRedirect("AdminCategory");
		
		
		
	}

}

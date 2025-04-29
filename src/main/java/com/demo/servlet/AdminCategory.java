package com.demo.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.demo.daoimpl.CategoryDaoImpl;
import com.demo.entity.Category;


@WebServlet("/AdminCategory")
public class AdminCategory extends HttpServlet {
	
	private CategoryDaoImpl cimpl;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		cimpl = new CategoryDaoImpl();
		
		List<Category> categoryList = cimpl.showAllCategory();
		
		req.setAttribute("cateList", categoryList);
		
//		System.out.println(categoryList);
		
		
		RequestDispatcher rd = req.getRequestDispatcher("admin-category.jsp");
		
		rd.forward(req, resp);
		
	}

}

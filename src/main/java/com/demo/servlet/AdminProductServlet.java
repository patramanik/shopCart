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
import com.demo.daoimpl.ProductDaoImpl;
import com.demo.entity.Category;
import com.demo.entity.Product;


@WebServlet("/AdminProductServlet")
public class AdminProductServlet extends HttpServlet {
	
	private ProductDaoImpl pimpl;
	private CategoryDaoImpl cimpl;
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		pimpl = new ProductDaoImpl();
		
		List<Product> productList =  pimpl.showAllProduct();
		
		req.setAttribute("productList", productList);
		
		cimpl = new CategoryDaoImpl();
		
		List<Category> categoryList = cimpl.showAllCategory();
		System.out.println("form AdminProduct: "+categoryList);
		
		req.setAttribute("cateList", categoryList);
		
		RequestDispatcher rd = req.getRequestDispatcher("admin-product.jsp");
		
		rd.forward(req, resp);
	}

}

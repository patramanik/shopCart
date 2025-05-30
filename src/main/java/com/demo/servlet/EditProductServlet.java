package com.demo.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Base64;

import com.demo.daoimpl.ProductDaoImpl;
import com.demo.entity.Product;


@WebServlet("/EditProductServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
					maxFileSize = 1024 * 1024 * 10,       // 10MB
					maxRequestSize = 1024 * 1024 * 50)    // 50MB
public class EditProductServlet extends HttpServlet {
	
	private ProductDaoImpl pimpl;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	    	
	        int id = Integer.parseInt(request.getParameter("id"));
	        String name = request.getParameter("name");
	        double price = Double.parseDouble(request.getParameter("price"));
	        double sellingPrice = Double.parseDouble(request.getParameter("sellingPrice"));
	        int stock = Integer.parseInt(request.getParameter("stock"));
	        String type = request.getParameter("type");
	        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
	        boolean status = Boolean.parseBoolean(request.getParameter("status"));
	        String description = request.getParameter("description");
	        String imageBase64 = request.getParameter("imageBase64");
	        
	        byte[] imageBytes = null;
	        if (imageBase64 != null && !imageBase64.isEmpty()) {
	            try {
	                // In case the base64 string contains a data URL prefix like "data:image/png;base64,..."
	                if (imageBase64.contains(",")) {
	                    imageBase64 = imageBase64.split(",")[1];
	                }
	                imageBytes = Base64.getDecoder().decode(imageBase64);
	                System.out.println("Image bytes length: " + imageBytes.length);
	            } catch (IllegalArgumentException e) {
	                e.printStackTrace();
	                response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid base64 image data");
	                return;
	            }
	        }
	        
	        System.out.println(imageBytes);

	        Product p = new Product();
	        p.setId(id);
	        p.setName(name);
	        p.setPrice(price);
	        p.setSellingPrice(sellingPrice);
	        p.setStock(stock);
	        p.setType(type);
	        p.setDescription(description);
	        p.setStatus(status);
            p.setImage(imageBytes);
            
            pimpl = new ProductDaoImpl();
            
            pimpl.updateProduct(p,categoryId);
	        

	        response.sendRedirect("AdminProductServlet");

	    } catch (NumberFormatException | NullPointerException e) {
	        e.printStackTrace();
	        response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Required numeric fields are missing");
	    }
	}

}

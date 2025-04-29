package com.demo.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import com.demo.daoimpl.ProductDaoImpl;
import com.demo.entity.Category;
import com.demo.entity.Product;

@WebServlet("/AddProductServlet")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,  // 2MB
                 maxFileSize = 1024 * 1024 * 10,       // 10MB
                 maxRequestSize = 1024 * 1024 * 50)    // 50MB
public class AddProductServlet extends HttpServlet {
    


    private ProductDaoImpl pimpl ;// DAO object

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    	
            // Getting form data
            String name = req.getParameter("name");
            System.out.println(name);
            double price = Double.parseDouble(req.getParameter("price"));
            System.out.println(price);
            double sellingPrice = Double.parseDouble(req.getParameter("sellingPrice"));
            System.out.println(sellingPrice);
            int stock = Integer.parseInt(req.getParameter("stock"));
            System.out.println(stock);
            String type = req.getParameter("type");
            System.out.println(type);
            int categoryId = Integer.parseInt(req.getParameter("categoryId"));
            System.out.println(categoryId);
            boolean status = Boolean.parseBoolean(req.getParameter("status"));
            System.out.println(status);
            String description = req.getParameter("description");
            System.out.println(description);

            // Handle image upload (convert to byte[])
            Part filePart = req.getPart("imageFile");
            System.out.println("image: "+filePart);
            byte[] imageBytes = null;
            
            if (filePart != null && filePart.getSize() > 0) {
                InputStream inputStream = filePart.getInputStream();
                imageBytes = inputStream.readAllBytes(); // read all bytes of image
            }

            System.out.println("imageByte:"+imageBytes);
            
            
            
            // Create product object
            Product p = new Product();
            p.setName(name);
            p.setPrice(price);
            p.setSellingPrice(sellingPrice);
            p.setStock(stock);
            p.setType(type);
            p.setStatus(status);
            p.setDescription(description);
            p.setImage(imageBytes); // Set image bytes
            
            
            pimpl = new ProductDaoImpl();
            
            // Insert product into database
            pimpl.addProduct(p, categoryId);

            
            
            resp.sendRedirect("AdminProductServlet");

        
    }
    
   
}

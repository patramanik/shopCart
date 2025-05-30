package com.demo.dao;

import java.util.List;


import com.demo.entity.Product;

public interface ProductDao {
	
	public List<Product> showAllProduct();
	
	public void addProduct(Product p, int cId);
	
	public void updateProduct(Product p, int cId);
	
	public void deleteProduct(int id);
	
	

}

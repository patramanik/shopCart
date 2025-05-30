package com.demo.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.dao.ProductDao;
import com.demo.entity.Category;
import com.demo.entity.Product;

public class ProductDaoImpl implements ProductDao{
	
	Session s;

	public ProductDaoImpl() {
		
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory sf = cfg.buildSessionFactory();
		s = sf.openSession();
		
	}

	@Override
	public List<Product> showAllProduct() {
		
		Transaction t = s.beginTransaction();
		
		  Query query = s.createQuery("from Product");
		
		  List<Product> list = query.list();
		  
		return list;
	}

	@Override
	public void addProduct(Product p, int cId) {
		Transaction t = s.beginTransaction();
	    
	    Category c = (Category) s.get(Category.class, cId);
	    
	    p.setCategory(c);  // Set the category into the product
	    
	    s.save(p);         // Save the PRODUCT, not category
	    
	    t.commit();
	}

	@Override
	public void updateProduct(Product p, int cId) {
		Transaction t = s.beginTransaction();
		
		Category c = (Category) s.get(Category.class, cId);
		
		p.setCategory(c);
		
		s.update(p);
		
		t.commit();
		
	}

	@Override
	public void deleteProduct(int id) {
		Transaction t = s.beginTransaction();
		
		Product product = (Product) s.get(Product.class, id);
		
		if(product != null) s.delete(product);
		
		t.commit();
	}

}

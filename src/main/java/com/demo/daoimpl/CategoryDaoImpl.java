package com.demo.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.dao.CategoryDao;
import com.demo.entity.Category;


public class CategoryDaoImpl implements CategoryDao{
	
	Session s;

	public CategoryDaoImpl() {
		Configuration  cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory sf = cfg.buildSessionFactory();
		s= sf.openSession();
	}

	@Override
	public void addCategory(Category c) {
		
		Transaction t = s.beginTransaction();
		
		s.save(c);
		t.commit();
		
	}

	@Override
	public void updateCategory(Category c) {
		Transaction t = s.beginTransaction();
		
		System.out.println(c);
		
		s.update(c);
		t.commit();
		
	}

	@Override
	public List<Category> showAllCategory() {
		Transaction t =s.beginTransaction();
		
		 Query query = s.createQuery("from Category");
		
		 List<Category> list = query.list();
		 
		return list;
	}

	@Override
	public void deleteCategory(int id) {
		
		Transaction t = s.beginTransaction();
		
		Category category = (Category) s.get(Category.class, id);
		
		if(category != null) s.delete(category);
		
		t.commit();

		
	}

}

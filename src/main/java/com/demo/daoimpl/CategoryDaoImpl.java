package com.demo.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateCategory(Category c) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Category> showAllCategory() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteCategory(int id) {
		// TODO Auto-generated method stub
		
	}

}

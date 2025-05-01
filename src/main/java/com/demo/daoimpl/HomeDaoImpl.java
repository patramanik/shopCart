package com.demo.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.demo.dao.HomeDao;
import com.demo.entity.Product;

public class HomeDaoImpl implements HomeDao{

	Session s;
	
	public HomeDaoImpl() {
		
		Configuration  cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory sf = cfg.buildSessionFactory();
		s= sf.openSession();
		
	}

	@Override
	public List<Product> getAllProducts() {
		
		  Query query = s.createQuery("from Product");
		
		  List<Product> list = query.list();
		  
		return list;
	}


}

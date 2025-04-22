package com.demo.daoimpl;

import java.util.List;
import java.util.Queue;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.demo.dao.AuthDao;
import com.demo.entity.Users;

public class AuthDaoImpl implements AuthDao{
	
	Session s;

	public AuthDaoImpl() {
		Configuration  cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");
		
		SessionFactory sf = cfg.buildSessionFactory();
		s= sf.openSession();
		
	}

	@Override
	public void registerUser(Users u) {
		Transaction t = s.beginTransaction();
		s.save(u);
		
		t.commit();
		
	}

	@Override
	public Users getUserByEmail(String email, String password) {
		
		Transaction t = s.beginTransaction();
		
		Users user = (Users) s.createQuery("FROM Users WHERE email = :email AND password = :password")
                .setParameter("email", email)
                .setParameter("password", password)
                .uniqueResult();
		
		System.out.println(user);
		
		return user;
	}

	

}

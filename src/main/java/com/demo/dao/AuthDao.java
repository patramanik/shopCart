package com.demo.dao;

import java.util.List;

import com.demo.entity.Users;

public interface AuthDao {
	
	public void registerUser(Users u);
	
//	public void updateUser(Users user);
	
//    public void deleteUser(Users user);
	
//    public Users getUserById(int id);
	
    public Users getUserByEmail(String email, String password);
    
//    List<Users> getAllUsers();

}

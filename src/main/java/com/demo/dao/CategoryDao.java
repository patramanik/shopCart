package com.demo.dao;

import java.util.List;

import com.demo.entity.Category;

public interface CategoryDao {
	
	public void addCategory(Category c);
	
	public void updateCategory(Category c);
	
	public List<Category> showAllCategory();
	
	public void deleteCategory(int id);
	

}

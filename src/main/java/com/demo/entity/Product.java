package com.demo.entity;
import java.util.Arrays;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "products")
public class Product {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;
    private String description;
    private double price;
    
    @Column(name = "selling_price")
    private double sellingPrice;
    private int stock;
    
    @Lob
    private byte[] image;
    
    private String type;
    private boolean status;
    

    @ManyToOne
    @JoinColumn(name = "category_id")
    private Category category;

    @OneToMany(mappedBy = "product")
    private List<OrderItem> orderItems;

    @OneToMany(mappedBy = "product")
    private List<Review> reviews;

    @OneToMany(mappedBy = "product")
    private List<Cart> cartItems;

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(int id, String name, String description, double price, double sellingPrice, int stock, byte[] image,
			String type, boolean status, Category category, List<OrderItem> orderItems, List<Review> reviews,
			List<Cart> cartItems) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.price = price;
		this.sellingPrice = sellingPrice;
		this.stock = stock;
		this.image = image;
		this.type = type;
		this.status = status;
		this.category = category;
		this.orderItems = orderItems;
		this.reviews = reviews;
		this.cartItems = cartItems;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getSellingPrice() {
		return sellingPrice;
	}

	public void setSellingPrice(double sellingPrice) {
		this.sellingPrice = sellingPrice;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public byte[] getImage() {
		return image;
	}

	public void setImage(byte[] image) {
		this.image = image;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<OrderItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}

	public List<Review> getReviews() {
		return reviews;
	}

	public void setReviews(List<Review> reviews) {
		this.reviews = reviews;
	}

	public List<Cart> getCartItems() {
		return cartItems;
	}

	public void setCartItems(List<Cart> cartItems) {
		this.cartItems = cartItems;
	}
	
	@Override
	public String toString() {
	    return "Product [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price
	            + ", sellingPrice=" + sellingPrice + ", stock=" + stock 
	            + ", type=" + type + ", status=" + status 
	            + ", categoryId=" + (category != null ? category.getId() : null) + "]";
	}

//	@Override
//	public String toString() {
//		return "Product [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price
//				+ ", sellingPrice=" + sellingPrice + ", stock=" + stock + ", image=" + Arrays.toString(image)
//				+ ", type=" + type + ", status=" + status + ", category=" + category + ", orderItems=" + orderItems
//				+ ", reviews=" + reviews + ", cartItems=" + cartItems + "]";
//	}

	
	
    
    
}


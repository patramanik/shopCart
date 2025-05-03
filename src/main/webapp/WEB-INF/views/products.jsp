
<%@page import="com.demo.daoimpl.HomeDaoImpl"%>
<%@ page import="java.util.*" %>
<%@ page import="com.demo.entity.Product" %>

<%
    HomeDaoImpl himpl = new HomeDaoImpl();
    List<Product> allproducts = himpl.getAllProducts();

    String[][] products = {
        {"Wireless Headphones", "199.99", "299.99", "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=300&h=200&fit=crop"},
        {"Smart Watch Pro", "159.99", "199.99", "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=300&h=200&fit=crop"},
        {"Bluetooth Speaker", "89.99", "129.99", "https://images.unsplash.com/photo-1572569511254-d8f925fe2cbb?w=300&h=200&fit=crop"},
        {"4K Camera", "599.99", "799.99", "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=300&h=200&fit=crop"},
        {"Samsung Laptop", "1299.99", "1499.99", "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?w=300&h=200&fit=crop"}
    };
%>

<!-- Products Grid -->
<div class="max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:px-8">
  <h2 class="text-2xl font-bold mb-6">Trending Now</h2>

  <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-6">

    <% if (allproducts != null && !allproducts.isEmpty()) { %>
      <% for(Product product : allproducts) { %>
     <a href="ProductDetailServlet" >
      <div class="bg-white rounded-lg shadow-md hover:shadow-lg transition-shadow duration-300 overflow-hidden border border-gray-100">
        <div class="relative">
          <%
              byte[] imageBytes = product.getImage();
              String base64Image = "";
              if (imageBytes != null) {
                  base64Image = java.util.Base64.getEncoder().encodeToString(imageBytes);
              }
          %>
          <img src="data:image/jpeg;base64,<%= base64Image %>" 
               alt="<%= product.getName() %>" 
               class="w-full h-48 object-cover" 
               width="300" height="200" loading="lazy">
               
           <!-- Wishlist Button (Top-Left) -->
        <button class="absolute top-2 left-2 bg-white/80 hover:bg-white p-2 rounded-full shadow-sm transition-colors">
          <svg xmlns="http://www.w3.org/2000/svg" 
               class="h-5 w-5 text-gray-600 hover:text-red-500" 
               fill="none" 
               viewBox="0 0 24 24" 
               stroke="currentColor">
            <path stroke-linecap="round" 
                  stroke-linejoin="round" 
                  stroke-width="2" 
                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
          </svg>
        </button>

          <div class="absolute top-2 right-2 bg-red-500 text-white text-xs font-bold px-2 py-1 rounded-full">SALE</div>
        </div>

        <div class="p-4">
          <h3 class="font-semibold text-lg mb-1"><%= product.getName() %></h3>
          <div class="flex items-center justify-between mb-3">
            <span class="text-lg font-bold text-blue-600">$<%= product.getSellingPrice() %></span>
            <span class="text-sm text-gray-400 line-through">$<%= product.getPrice() %></span>
          </div>

          <div class="grid grid-cols-2 gap-2">
            <button class="bg-blue-600 hover:bg-blue-700 text-white py-2 px-3 rounded text-sm font-medium transition-colors flex items-center justify-center">Add</button>
            <button class="bg-gray-800 hover:bg-gray-700 text-white py-2 px-3 rounded text-sm font-medium transition-colors flex items-center justify-center">Buy</button>
          </div>
        </div>
      </div>
      </a>
      <% } %>

    <% } else { %>
      <% for (String[] p : products) { %>
      <div class="bg-white rounded-lg shadow-md hover:shadow-lg transition-shadow duration-300 overflow-hidden border border-gray-100">
        <div class="relative">
          <img src="<%= p[3] %>" 
               alt="<%= p[0] %>" 
               class="w-full h-48 object-cover" 
               width="300" height="200" loading="lazy">
               
            <!-- Wishlist Button (Top-Left) -->
        <button class="absolute top-2 left-2 bg-white/80 hover:bg-white p-2 rounded-full shadow-sm transition-colors">
          <svg xmlns="http://www.w3.org/2000/svg" 
               class="h-5 w-5 text-gray-600 hover:text-red-500" 
               fill="none" 
               viewBox="0 0 24 24" 
               stroke="currentColor">
            <path stroke-linecap="round" 
                  stroke-linejoin="round" 
                  stroke-width="2" 
                  d="M4.318 6.318a4.5 4.5 0 000 6.364L12 20.364l7.682-7.682a4.5 4.5 0 00-6.364-6.364L12 7.636l-1.318-1.318a4.5 4.5 0 00-6.364 0z" />
          </svg>
        </button>

          <div class="absolute top-2 right-2 bg-red-500 text-white text-xs font-bold px-2 py-1 rounded-full">SALE</div>
        </div>

        <div class="p-4">
          <h3 class="font-semibold text-lg mb-1"><%= p[0] %></h3>
          <div class="flex items-center justify-between mb-3">
            <span class="text-lg font-bold text-blue-600">$<%= p[1] %></span>
            <span class="text-sm text-gray-400 line-through">$<%= p[2] %></span>
          </div>

          <div class="grid grid-cols-2 gap-2">
            <button class="bg-blue-600 hover:bg-blue-700 text-white py-2 px-3 rounded text-sm font-medium transition-colors flex items-center justify-center">Add</button>
            <button class="bg-gray-800 hover:bg-gray-700 text-white py-2 px-3 rounded text-sm font-medium transition-colors flex items-center justify-center">Buy</button>
          </div>
        </div>
      </div>
      <% } %>
    <% } %>

  </div>

  <div class="text-center mt-10">
    <a href="#" class="inline-block bg-blue-600 hover:bg-blue-700 text-white font-medium py-2 px-6 rounded-lg transition-colors duration-200 shadow hover:shadow-md">View All Products</a>
  </div>
</div>

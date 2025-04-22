<%-- <%@ page import="java.util.*" %>

<%
  List<Map<String, String>> userList = new ArrayList<>();

  String[][] products = {
    {"Wireless Headphones", "199.99", "299.99", "2", "128", "1"},
    {"Smart Watch Pro", "159.99", "199.99", "3", "94", "4"},
    {"Bluetooth Speaker", "89.99", "129.99", "4", "201", "3"},
    {"4K Camera", "599.99", "799.99", "5", "45", "4"},
    {"Gaming Laptop", "1299.99", "1499.99", "6", "78", "2"}
  };

  for (String[] p : products) {
    Map<String, String> product = new HashMap<>();
    product.put("name", p[0]);
    product.put("price", p[1]);
    product.put("oldPrice", p[2]);
    product.put("imageId", p[3]);
    product.put("reviews", p[4]);
    product.put("stars", p[5]);
    userList.add(product);
  }
%>
<!-- Products Grid -->
<div class="max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:px-8">
  <h2 class="text-2xl font-bold mb-6">Trending Now</h2>
  
  <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
    <%
      for (Map<String, String> product : userList) {
    %>
    <div class="bg-white rounded-lg shadow-sm hover:shadow-md transition-shadow duration-200">
      <div class="relative group">
        <img src="https://picsum.photos/300/200?random=<%= product.get("imageId") %>" 
             alt="<%= product.get("name") %>" 
             class="w-full h-32 object-cover rounded-t-lg">
        <div class="absolute top-1 right-1 bg-yellow-500 text-white px-2 py-0.5 rounded-full text-xs">
          Sale
        </div>
      </div>
      <div class="p-3">
        <h3 class="font-semibold text-base mb-1"><%= product.get("name") %></h3>
        <div class="flex items-center mb-1">
          <div class="flex text-yellow-400 text-sm">
            <%
              int stars = Integer.parseInt(product.get("stars"));
              for (int i = 0; i < stars; i++) {
            %>
            <i class="fa-solid fa-star"></i>
            <% } %>
          </div>
          <span class="text-gray-500 text-xs ml-1">(<%= product.get("reviews") %>)</span>
        </div>
        <div class="flex justify-between items-center">
          <p class="text-lg font-bold text-indigo-600">$<%= product.get("price") %></p>
          <del class="text-gray-400 text-sm">$<%= product.get("oldPrice") %></del>
        </div>
        <div class="grid grid-cols-2 gap-2 mt-2">
          <button class="bg-indigo-600 text-white p-1.5 text-sm rounded-md hover:bg-indigo-700 flex items-center justify-center">
            <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                    d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
            </svg>
            Add
          </button>
          <button class="bg-gray-800 text-white p-1.5 text-sm rounded-md hover:bg-gray-700 flex items-center justify-center">
            <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                    d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z" />
            </svg>
            Buy
          </button>
        </div>
      </div>
    </div>
    <%
      }
    %>
  </div>
</div>
</div>
 --%>
 
 
 <%@ page import="java.util.*" %>

<%
  List<Map<String, String>> userList = new ArrayList<>();

  String[][] products = {
    {"Wireless Headphones", "199.99", "299.99", "2", "128", "1"},
    {"Smart Watch Pro", "159.99", "199.99", "3", "94", "4"},
    {"Bluetooth Speaker", "89.99", "129.99", "4", "201", "3"},
    {"4K Camera", "599.99", "799.99", "5", "45", "4"},
    {"Gaming Laptop", "1299.99", "1499.99", "6", "78", "2"}
  };

  for (String[] p : products) {
    Map<String, String> product = new HashMap<>();
    product.put("name", p[0]);
    product.put("price", p[1]);
    product.put("oldPrice", p[2]);
    product.put("imageId", p[3]);
    product.put("reviews", p[4]);
    product.put("stars", p[5]);
    userList.add(product);
  }
%>

<!-- Products Grid -->
<div class="max-w-7xl mx-auto py-8 px-4 sm:px-6 lg:px-8">
  <h2 class="text-2xl font-bold mb-6">Trending Now</h2>
  
  <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
    <%
      for (Map<String, String> product : userList) {
    %>
    <div class="bg-white rounded-lg shadow-sm hover:shadow-md transition-shadow duration-200">
      <div class="relative group">
        <img src="https://picsum.photos/300/200?random=<%= product.get("imageId") %>" 
             alt="<%= product.get("name") %>" 
             class="w-full h-32 object-cover rounded-t-lg">
        <div class="absolute top-1 right-1 bg-yellow-500 text-white px-2 py-0.5 rounded-full text-xs">
          Sale
        </div>
      </div>
      <div class="p-3">
        <h3 class="font-semibold text-base mb-1"><%= product.get("name") %></h3>
        <div class="flex items-center mb-1">
          <div class="flex text-yellow-400 text-sm">
            <%
              int stars = Integer.parseInt(product.get("stars"));
              for (int i = 0; i < stars; i++) {
            %>
            <i class="fa-solid fa-star"></i>
            <% } %>
          </div>
          <span class="text-gray-500 text-xs ml-1">(<%= product.get("reviews") %>)</span>
        </div>
        <div class="flex justify-between items-center">
          <p class="text-lg font-bold text-indigo-600">$<%= product.get("price") %></p>
          <del class="text-gray-400 text-sm">$<%= product.get("oldPrice") %></del>
        </div>
        <div class="grid grid-cols-2 gap-2 mt-2">
          <button class="bg-indigo-600 text-white p-1.5 text-sm rounded-md hover:bg-indigo-700 flex items-center justify-center">
            <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                    d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z" />
            </svg>
            Add
          </button>
          <button class="bg-gray-800 text-white p-1.5 text-sm rounded-md hover:bg-gray-700 flex items-center justify-center">
            <svg class="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                    d="M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z" />
            </svg>
            Buy
          </button>
        </div>
      </div>
    </div>
    <%
      }
    %>
  </div>

  <!-- View All Button -->
  <div class="text-center mt-8">
    <a href="allProducts.jsp" class="inline-block bg-indigo-600 hover:bg-indigo-700 text-white font-semibold py-2 px-6 rounded-lg transition">
      View All Products
    </a>
  </div>
</div>
 
<!-- Navigation Bar -->
<nav class="bg-white shadow-lg sticky top-0 z-50">
  <div class="max-w-7xl mx-auto px-4">
    <div class="flex justify-between items-center h-16">
      <!-- Logo -->
      <div class="flex-shrink-0">
        <span class="text-2xl font-bold bg-gradient-to-r from-purple-600 to-indigo-600 bg-clip-text text-transparent">
          ShopCart
        </span>
      </div>

      <!-- Search Bar with Icon and Popular Tags -->
      <div class="relative w-full max-w-lg mx-4">
        <div class="relative">
          <!-- Search Icon -->
          <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
            <svg class="w-5 h-5 text-gray-500" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
            </svg>
          </div>

          <!-- Input Field -->
          <input type="text"
                 placeholder="Try Headphones, Watch or Search by Product Code"
                 class="w-full border border-gray-300 rounded-md py-2 pl-10 pr-4 focus:outline-none focus:ring-2 focus:ring-indigo-500"
                 onfocus="document.getElementById('searchSuggestions').classList.remove('hidden')"
                 onblur="setTimeout(() => document.getElementById('searchSuggestions').classList.add('hidden'), 200)" />
        </div>

        <!-- Suggestions -->
        <div id="searchSuggestions"
             class="absolute z-10 bg-white shadow-lg rounded-md mt-2 w-full p-4 hidden">
          <h4 class="text-sm text-gray-600 mb-2">Popular Searches</h4>
          <div class="flex flex-wrap gap-2">
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full cursor-pointer hover:bg-indigo-100">headphones</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full cursor-pointer hover:bg-indigo-100">smartwatch</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full cursor-pointer hover:bg-indigo-100">laptop</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full cursor-pointer hover:bg-indigo-100">speaker</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full cursor-pointer hover:bg-indigo-100">camera</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full cursor-pointer hover:bg-indigo-100">gaming mouse</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full cursor-pointer hover:bg-indigo-100">tablet</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full cursor-pointer hover:bg-indigo-100">earbuds</span>
            <span class="bg-gray-100 text-gray-700 text-sm px-3 py-1 rounded-full cursor-pointer hover:bg-indigo-100">monitor</span>
          </div>
        </div>
      </div>

      <!-- Right Side Icons -->
      <div class="flex items-center space-x-6">
        <!-- Cart -->
        <a href="#" class="text-gray-600 hover:text-indigo-600 relative">
          <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
              d="M3 3h2l.4 2M7 13h10l4-8H5.4M7 13L5.4 5M7 13l-2.293 2.293c-.63.63-.184 1.707.707 1.707H17m0 0a2 2 0 100 4 2 2 0 000-4zm-8 2a2 2 0 11-4 0 2 2 0 014 0z"/>
          </svg>
          <span class="absolute -top-1 -right-2 bg-red-500 text-white text-xs px-2 rounded-full">3</span>
        </a>

  		<!-- Profile -->
		<div class="relative inline-block text-left">
		  <!-- Profile Button -->
		  <button onclick="toggleDropdown()" class="text-gray-600 hover:text-indigo-600 flex items-center focus:outline-none">
		    <svg class="w-6 h-6 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
		      <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
		        d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"/>
		    </svg>
		    Profile
		  </button>
		
		<%@ page session="true" %>
		<%@page import="com.demo.entity.Users"%>
		<%
		    Users loggedInUser = (Users) session.getAttribute("user");
		%>
		
		<!-- Dropdown Menu -->
		<div id="dropdownMenu" class="hidden absolute right-0 mt-2 w-56 bg-white border rounded-md shadow-lg z-10">
		
		  <!-- Profile -->
		  <a href="#" class="flex items-center px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 transition-colors duration-150">
		    <i class="fas fa-user mr-2 text-gray-500"></i> Profile
		  </a>
		
		  <!-- Change Password -->
		  <a href="#" class="flex items-center px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 transition-colors duration-150">
		    <i class="fas fa-key mr-2 text-gray-500"></i> Change Password
		  </a>
		
		  <!-- Settings -->
		  <a href="#" class="flex items-center px-4 py-2 text-sm text-gray-700 hover:bg-gray-100 transition-colors duration-150">
		    <i class="fas fa-cog mr-2 text-gray-500"></i> Settings
		  </a>
		
		  <!-- Divider -->
		  <div class="border-t my-2"></div>
		
		  <!-- Auth Button -->
		  <div class="px-4 pb-3">
		    <% if (loggedInUser != null) { %>
		      <a href="LogoutServlet"
		         class="block w-full text-center bg-red-600 hover:bg-red-700 text-white font-semibold py-2 px-4 rounded-md shadow-md transition duration-300 ease-in-out">
		        Logout
		      </a>
		    <% } else { %>
		      <a href="signIn.jsp"
		         class="block w-full text-center bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded-md shadow-md transition duration-300 ease-in-out">
		        Sign In
		      </a>
		    <% } %>
		  </div>
		</div>
		</div>
		        
      </div>
    </div>
  </div>
</nav>

<!-- JS to toggle dropdown -->
<script>
  function toggleDropdown() {
    document.getElementById("dropdownMenu").classList.toggle("hidden");
  }
</script>

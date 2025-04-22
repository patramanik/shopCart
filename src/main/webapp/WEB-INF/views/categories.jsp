<div class="max-w-7xl mx-auto py-16 px-4 sm:px-6 lg:px-8">
  <h2 class="text-3xl font-bold mb-8">Shop by Category</h2>
  <div class="grid grid-cols-2 md:grid-cols-4 gap-6">
    <%
      String[] categoryItems = {
        "Electronics|M12 16v5m-4-5v5m8-5v5M6 8V4m12 4V4m-9 4h6m-3 0v4",
        "Fashion|M16 11V7a4 4 0 00-8 0v4M5 9h14l1 12H4L5 9z",
        "Home Decor|M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6",
        "Beauty|M9 19c-5 1.5-5-2.5-7-3m14 6v-3.87a3.37 3.37 0 00-.94-2.61c3.14-.35 6.44-1.54 6.44-7A5.44 5.44 0 0020 4.77 5.07 5.07 0 0019.91 1S18.73.65 16 2.48a13.38 13.38 0 00-7 0C6.27.65 5.09 1 5.09 1A5.07 5.07 0 005 4.77a5.44 5.44 0 00-1.5 3.78c0 5.42 3.3 6.61 6.44 7A3.37 3.37 0 009 18.13V22"
      };
      
      for(String category : categoryItems) {
        String[] parts = category.split("\\|");
    %>
    
    
      <div class="bg-white p-6 rounded-xl shadow-md hover:shadow-lg transition-shadow duration-300 group">
        <div class="w-16 h-16 bg-indigo-100 rounded-full flex items-center justify-center mb-4 mx-auto transition-all duration-300 group-hover:bg-indigo-600">
          <svg class="w-8 h-8 text-indigo-600 group-hover:text-white" 
               fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="<%= parts[1] %>" />
          </svg>
        </div>
        <h3 class="text-lg font-semibold text-center"><%= parts[0] %></h3>
      </div>
    <% } %>
  </div>
</div>
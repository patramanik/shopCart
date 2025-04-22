<div class="flex items-center space-x-6 px-6 py-3 bg-white text-sm font-medium">
  <%
    String[][] categories = {
      {"Home & Kitchen", "home"},
      {"Women", "shirt"},
      {"Men", "user"},
      {"Kids", "baby"},
      {"Beauty & Health", "heart-pulse"},
      {"Electronics", "tv"},
      {"Jewellery", "gem"}
    };
    
    for(String[] category : categories) {
  %>
    <span class="hover:text-purple-700 cursor-pointer flex items-center gap-1">
      <i data-lucide="<%= category[1] %>" class="w-4 h-4"></i> 
      <%= category[0] %>
    </span>
  <% } %>
</div>
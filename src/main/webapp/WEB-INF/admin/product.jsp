<%@ page import="com.demo.entity.Product" %>
<%@ page import="com.demo.entity.Category" %>
<%@ page import="java.util.List" %>

<!-- Page Container -->
<div class="flex justify-center p-4 md:p-6 lg:p-8">
  <div class="bg-white shadow-md rounded-xl w-full max-w-7xl p-4 md:p-6">


    <!-- Header with Add Button -->
    <div class="flex justify-between items-center mb-4">
      <h2 class="text-2xl font-bold text-slate-800">Products</h2>
      <button onclick="openModal()" class="flex items-center gap-2 bg-blue-600 hover:bg-blue-700 text-white px-5 py-2 rounded-md font-semibold shadow-md transition duration-300">
        <i class="fas fa-plus"></i> Add
      </button>
    </div>

    <!-- Table -->
    <div class="overflow-x-auto">
      <table class="min-w-full bg-white rounded-xl overflow-hidden">
        <thead class="bg-slate-900 text-white">
          <tr>
            <th class="text-left px-3 py-2  font-semibold">ID</th>
            <th class="text-left px-3 py-2  font-semibold">Name</th>
            <th class="text-left px-3 py-2  font-semibold">Image</th>
            <th class="text-left px-3 py-2  font-semibold">Description</th>
            <th class="text-left px-3 py-2  font-semibold">Price</th>
            <th class="text-left px-3 py-2  font-semibold">Selling Price</th>
            <th class="text-left px-3 py-2  font-semibold">Stock</th>
            <th class="text-left px-3 py-2  font-semibold">Type</th>
            <th class="text-left px-3 py-2  font-semibold">Category</th>            
            <th class="text-left px-3 py-2  font-semibold">Status</th>
            <th class="text-center px-3 py-2  font-semibold">Actions</th>
          </tr>
        </thead>
        <tbody class="divide-y divide-gray-200">
		  <%
		    List<Product> productList = (List<Product>) request.getAttribute("productList");
		    System.out.println(productList);
		    if (productList != null && !productList.isEmpty()) {
		      for (Product p : productList) {
		  %>
		  <tr class="hover:bg-gray-100 transition">
		    <td class="text-left px-3 py-2"><%= p.getId() %></td>
		    <td class="text-left px-3 py-2"><%= p.getName() %></td>
		    
			<td class="text-center px-3 py-2">
				<%
			    byte[] imageBytes = p.getImage();
			    String base64Image = "";
			    if (imageBytes != null) {
			        base64Image = java.util.Base64.getEncoder().encodeToString(imageBytes);
			    }
				%>
			    <img src="data:image/jpeg;base64,<%= base64Image %>" alt="Product Image" class="h-12 w-12 object-cover rounded" />
			</td>
		    <%-- <td class="px-3 py-2"><%= p.getDescription() %></td> --%>
		    <td class="text-center px-3 py-2">
		    <button 
		        class="bg-indigo-100 hover:bg-indigo-200 text-indigo-700 font-semibold px-3 py-1 rounded text-sm"
		        onclick="showDescription('<%= p.getDescription().replace("'", "\\'") %>')">
		        View
		      </button>
		    </td>
		    <td class="text-left px-3 py-2"><%= p.getPrice() %></td>
		    <td class="text-left px-3 py-2"><%= p.getSellingPrice() %></td>
		    <td class="text-left px-3 py-2"><%= p.getStock() %></td>
		    <td class="text-left px-3 py-2"><%= p.getType() %></td>
		    <td class="text-left px-3 py-2"><%=p.getCategory().getName() %></td>
		    <td class="text-left px-3 py-2">
		    	<span class="inline-block px-2 py-0.5 rounded text-xs font-semibold
                	<%= p.isStatus() ? "bg-green-100 text-green-700" : "bg-red-100 text-red-700" %>">
                	<%= p.isStatus() ? "Active" : "Inactive" %>
              	</span>
		    </td>
		    <td class="px-3 py-2 text-center ">
		      <a href="javascript:void(0);" onclick="" 
		         class="bg-blue-100 hover:bg-blue-200 text-blue-600 hover:text-blue-800 px-2 py-2 rounded mx-1 my-1" 
		         title="Edit">
		        <i class="fas fa-edit text-x"></i>
		      </a>
		      <a href="#" 
		         class="bg-red-100 hover:bg-red-200 text-red-600 hover:text-red-800 px-2 py-2 rounded mx-1 my-1" 
		         title="Delete">
		        <i class="fas fa-trash-alt text-x"></i>
		      </a>
		    </td>
		  </tr>
		  <%
		      }
		    } else {
		  %>
		  <tr>
		    <td colspan="10" class="text-center py-4 text-gray-500">No products found.</td>
		  </tr>
		  <% } %>
		</tbody>

      </table>

    </div>

  </div>
</div>


<!-- Description Modal -->
<div id="descriptionModal" class="fixed inset-0 z-50 hidden bg-black bg-opacity-50 flex items-center justify-center">
  <div class="bg-white w-full sm:w-96 md:w-1/2 lg:w-1/3 p-6 rounded-xl shadow-lg relative">
    <div class="flex justify-between items-center mb-4">
      <h2 class="text-xl font-bold text-gray-800">Product Description</h2>
      <button onclick="closeDescriptionModal()" class="text-gray-500 hover:text-gray-700 text-2xl">&times;</button>
    </div>
    <div id="descriptionContent" class="text-gray-700">
      <!-- Product description will be inserted here -->
    </div>
    
  </div>
</div>


<!-- Add Product Modal -->
<div id="addProductModal" class="fixed inset-0 z-50 hidden overflow-y-auto bg-black bg-opacity-50 flex items-center justify-center">
  <div class="bg-white w-full max-w-2xl p-8 rounded-2xl shadow-lg relative">

    <!-- Modal Header -->
    <div class="flex justify-between items-center mb-6">
      <h2 class="text-2xl font-bold text-slate-800">Add Product</h2>
      <button onclick="closeAddModal()" class="text-gray-500 hover:text-gray-700 text-2xl">&times;</button>
    </div>

    <!-- Modal Form -->
    <form id="addProductForm" action="AddProductServlet" method="post" enctype="multipart/form-data">
      <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
        
        <div>
          <label class="block text-gray-700 mb-1">Name</label>
          <input type="text" name="name" class="w-full border rounded-md p-2" required />
        </div>
        
        <div>
          <label class="block text-gray-700 mb-1">Price</label>
          <input type="number" step="0.01" name="price" class="w-full border rounded-md p-2" required />
        </div>
        
        <div>
          <label class="block text-gray-700 mb-1">Selling Price</label>
          <input type="number" step="0.01" name="sellingPrice" class="w-full border rounded-md p-2" required />
        </div>
        
        <div>
          <label class="block text-gray-700 mb-1">Stock</label>
          <input type="number" name="stock" class="w-full border rounded-md p-2" required />
        </div>

        <div>
          <label class="block text-gray-700 mb-1">Type</label>
          <select name="type" class="w-full border rounded-md p-2">
            <option value="New Arrivals">New Arrivals</option>
            <option value="Best Sellers">Best Sellers</option>
            <option value="Deals">Deals</option>
            <option value="Collections">Collections</option>
          </select>
        </div>

        <div>
          <label class="block text-gray-700 mb-1">Category</label>
          <select name="categoryId" class="w-full border rounded-md p-2">
            <%
            	List<Category> categoryList = (List<Category>) request.getAttribute("cateList");
            	System.out.println("form product page: "+categoryList);
              if (categoryList != null && !categoryList.isEmpty()) {
                for (Category c : categoryList) {
            %>
              <option value="<%= c.getId() %>"><%= c.getName() %></option>
            <%
                }
              } else {
            %>
              <option value="">No categories found</option>
            <% } %>
          </select>
        </div>

        <div>
          <label class="block text-gray-700 mb-1">Status</label>
          <select name="status" class="w-full border rounded-md p-2">
            <option value="true">Active</option>
            <option value="false">Inactive</option>
          </select>
        </div>
        
        <div>
          <label class="block text-gray-700 mb-1">Image</label>
          <input type="file" name="imageFile" class="w-full border rounded-md p-2" />
        </div>

        <div class="md:col-span-2">
          <label class="block text-gray-700 mb-1">Description</label>
          <textarea name="description" class="w-full border rounded-md p-2" rows="3"></textarea>
        </div>

      </div>

      <div class="mt-6 flex justify-end gap-4">
        <button type="reset" onclick="closeAddModal()" class="px-5 py-2 bg-gray-300 hover:bg-gray-400 rounded-md">Cancel</button>
        <button type="submit" class="px-5 py-2 bg-blue-600 hover:bg-blue-700 text-white rounded-md">Save</button>
      </div>

    </form>

  </div>
</div>


<script>
	function showDescription(desc) {
	  document.getElementById('descriptionContent').innerText = desc;
	  document.getElementById('descriptionModal').classList.remove('hidden');
	}

	function closeDescriptionModal() {
	  document.getElementById('descriptionModal').classList.add('hidden');
	}
	

	function openModal() {
	  document.getElementById('addProductModal').classList.remove('hidden');
	}
	
	function closeAddModal() {
	  document.getElementById('addProductModal').classList.add('hidden');
	}
</script>

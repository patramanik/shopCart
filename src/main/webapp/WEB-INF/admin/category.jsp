<!-- Page Container -->
<div class="flex justify-center px-4 md:px-8 lg:px-20 py-10">
  <div class="bg-white shadow-xl rounded-2xl w-full max-w-6xl p-8">

    <!-- Header with Add Button -->
    <div class="flex justify-between items-center mb-8">
      <h2 class="text-2xl font-bold text-slate-800">Categories</h2>
      <button onclick="openModal()" class="flex items-center gap-2 bg-blue-600 hover:bg-blue-700 text-white px-5 py-2 rounded-md font-semibold shadow-md transition duration-300">
        <i class="fas fa-plus"></i> Add Category
      </button>
    </div>
    
	<!-- Table -->
	<div class="overflow-x-auto">
	  <table class="min-w-full bg-white rounded-xl overflow-hidden">
	    <thead class="bg-slate-900 text-white">
	      <tr>
	        <th class="text-left px-6 py-4 text-sm font-semibold">ID</th>
	        <th class="text-left px-6 py-4 text-sm font-semibold">Name</th>
	        <th class="text-left px-6 py-4 text-sm font-semibold">Description</th>
	        <th class="text-center px-6 py-4 text-sm font-semibold">Actions</th>
	      </tr>
	    </thead>
	    <tbody class="divide-y divide-gray-200">
	      <tr class="hover:bg-gray-100 transition">
	        <td class="px-6 py-4 text-sm">1</td>
	        <td class="px-6 py-4 text-sm">Electronics</td>
	        <td class="px-6 py-4 text-sm">
	          This is Electronics Category
	        </td>
	        <td class="px-6 py-4 text-center text-sm">
	          <a href="#" class="bg-blue-100 hover:bg-blue-200 text-blue-600 hover:text-blue-800 px-3 py-2 rounded mx-1" title="Edit">
	            <i class="fas fa-edit text-xl"></i>
	          </a>
	          <a href="#" class="bg-red-100 hover:bg-red-200 text-red-600 hover:text-red-800 px-3 py-2 rounded mx-1" title="Delete">
	            <i class="fas fa-trash-alt text-xl"></i>
	          </a>
	        </td>
	      </tr>
	      <!-- Add more <tr> here for more rows -->
	    </tbody>
	  </table>
	
	  <!-- Pagination -->
	  <div class="flex justify-between items-center mt-6">
	    <div class="text-sm text-gray-600">
	      Showing <span class="font-semibold">1</span> to <span class="font-semibold">10</span> of <span class="font-semibold">50</span> results
	    </div>
	    <div class="flex items-center space-x-2">
	      <button class="px-3 py-1 bg-gray-200 hover:bg-gray-300 text-gray-600 rounded-md text-sm transition">
	        Previous
	      </button>
	      <button class="px-3 py-1 bg-blue-600 hover:bg-blue-700 text-white rounded-md text-sm font-semibold transition">
	        1
	      </button>
	      <button class="px-3 py-1 bg-gray-200 hover:bg-gray-300 text-gray-600 rounded-md text-sm transition">
	        2
	      </button>
	      <button class="px-3 py-1 bg-gray-200 hover:bg-gray-300 text-gray-600 rounded-md text-sm transition">
	        3
	      </button>
	      <button class="px-3 py-1 bg-gray-200 hover:bg-gray-300 text-gray-600 rounded-md text-sm transition">
	        Next
	      </button>
	    </div>
	  </div>
	</div>

  </div>
</div>

<!-- Modal Background -->
<div id="addCategoryModal" class="fixed inset-0 bg-black bg-opacity-50 hidden items-center justify-center z-50">
  <!-- Modal Box -->
  <div class="bg-white rounded-2xl w-full max-w-lg p-8 shadow-2xl relative transform transition-all">
    
    <!-- Close Button -->
    <button onclick="closeModal()" class="absolute top-4 right-4 text-gray-400 hover:text-red-500 transition">
      <i class="fas fa-times text-2xl"></i>
    </button>

    <!-- Modal Title -->
    <h3 class="text-2xl font-bold text-gray-800 mb-6 text-center">Add Category</h3>

    <!-- Form -->
    <form action="addCategoryServlet" method="post" class="space-y-5">

      <!-- Category Name -->
      <div>
        <label class="block text-sm font-medium text-gray-700 mb-1">Category Name <span class="text-red-500">*</span></label>
        <input 
          type="text" 
          name="name" 
          placeholder="Enter category name" 
          class="w-full border border-gray-300 rounded-lg px-4 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500"
          required />
      </div>

      <!-- Description -->
      <div>
        <label class="block text-sm font-medium text-gray-700 mb-1">Description</label>
        <input 
          type="text" 
          name="description" 
          placeholder="Enter description" 
          class="w-full border border-gray-300 rounded-lg px-4 py-2 text-sm focus:outline-none focus:ring-2 focus:ring-blue-500" />
      </div>

      <!-- Buttons -->
      <div class="flex justify-end gap-3 pt-4">
        <button 
          type="reset" 
          class="bg-gray-200 hover:bg-gray-300 text-gray-700 px-5 py-2 rounded-md font-medium transition">
          Reset
        </button>
        <button 
          type="submit" 
          class="bg-blue-600 hover:bg-blue-700 text-white px-5 py-2 rounded-md font-semibold transition">
          Save
        </button>
      </div>
    </form>
  </div>
</div>


<!-- Modal Script -->
<script>
  function openModal() {
    document.getElementById('addCategoryModal').classList.remove('hidden');
    document.getElementById('addCategoryModal').classList.add('flex');
  }

  function closeModal() {
    document.getElementById('addCategoryModal').classList.remove('flex');
    document.getElementById('addCategoryModal').classList.add('hidden');
  }
</script>

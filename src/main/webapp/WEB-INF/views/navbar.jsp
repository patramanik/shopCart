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
        <a href="#" class="text-gray-600 hover:text-indigo-600 flex items-center">
          <svg class="w-6 h-6 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
              d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z"/>
          </svg>
          Profile
        </a>

		<!-- SignIn -->
          <a href="signIn.jsp" class="inline-block bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-6 rounded-lg shadow-md transition duration-300 ease-in-out">
 			Sign In
			</a>
        
        <!-- Supplier -->
        <!-- <a href="#" class="text-gray-600 hover:text-indigo-600 flex items-center">
          <svg class="w-6 h-6 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
              d="M19 21V5a2 2 0 00-2-2H7a2 2 0 00-2 2v16m14 0h2m-2 0h-5m-9 0H3m2 0h5M9 7h1m-1 4h1m4-4h1m-1 4h1m-5 10v-5a1 1 0 011-1h2a1 1 0 011 1v5m-4 0h4"/>
          </svg>
          <a href="RegesterUser">Supplier</a>
        </a> -->
      </div>
    </div>
  </div>
</nav>

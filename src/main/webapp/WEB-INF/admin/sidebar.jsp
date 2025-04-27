<!-- Mobile Menu Button -->
<button id="mobileMenuButton" class="md:hidden fixed top-4 right-4 p-2 z-50 text-gray-600">
    <i class="fas fa-bars text-2xl"></i>
</button>

<!-- Sidebar -->
<aside id="sidebar" class="fixed top-0 left-0 h-full w-64 bg-slate-800 text-white p-4 transform -translate-x-full md:translate-x-0 transition-transform duration-300 z-40">
    <div class="flex items-center justify-between mb-8">
        <h2 class="text-2xl font-bold">Admin Panel</h2>
        <button id="closeSidebar" class="md:hidden p-2 hover:bg-slate-700 rounded">
            <i class="fas fa-times"></i>
        </button>
    </div>
    <nav>
        <ul class="space-y-2">

            <!-- Dashboard (no dropdown) -->
            <li>
                <a href="dashboard.jsp" class="flex items-center p-3 hover:bg-slate-700 rounded-lg transition-colors">
                    <i class="fas fa-home mr-3 text-blue-400"></i>
                    Dashboard
                </a>
            </li>

            <!-- Dropdown Item Template -->
            <li class="relative group">
                <button onclick="sidebarDropdown('categoryDropdown')" class="flex items-center p-3 hover:bg-slate-700 rounded-lg transition-colors w-full">
                    <i class="fa-solid fa-layer-group mr-3 text-red-400"></i>
                    Category
                    <svg class="ml-auto w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>
                <ul id="categoryDropdown" class="hidden ml-6 mt-1 space-y-1">
				  <li>
				    <a href="AdminCategory" class="block px-4 py-2 hover:bg-slate-700 rounded">All Categories</a>
				  </li>
				 <!--  <li>
				    <button onclick="openModal()" class="w-full text-left px-4 py-2 hover:bg-slate-700 rounded text-white">
				      Add Category
				    </button>
				  </li> -->
				</ul>

            </li>

            <li class="relative group">
                <button onclick="sidebarDropdown('productDropdown')" class="flex items-center p-3 hover:bg-slate-700 rounded-lg transition-colors w-full">
                    <i class="fa-solid fa-store mr-3 text-orange-400"></i>
                    Product
                    <svg class="ml-auto w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>
                <ul id="productDropdown" class="hidden ml-6 mt-1 space-y-1">
                    <li><a href="#" class="block px-4 py-2 hover:bg-slate-700 rounded">All Products</a></li>
                    <li><a href="#" class="block px-4 py-2 hover:bg-slate-700 rounded">Add Product</a></li>
                </ul>
            </li>

            <li class="relative group">
                <button onclick="sidebarDropdown('analyticsDropdown')" class="flex items-center p-3 hover:bg-slate-700 rounded-lg transition-colors w-full">
                    <i class="fas fa-chart-line mr-3 text-green-400"></i>
                    Analytics
                    <svg class="ml-auto w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>
                <ul id="analyticsDropdown" class="hidden ml-6 mt-1 space-y-1">
                    <li><a href="#" class="block px-4 py-2 hover:bg-slate-700 rounded">Overview</a></li>
                    <li><a href="#" class="block px-4 py-2 hover:bg-slate-700 rounded">Sales Report</a></li>
                </ul>
            </li>

            <li class="relative group">
                <button onclick="sidebarDropdown('usersDropdown')" class="flex items-center p-3 hover:bg-slate-700 rounded-lg transition-colors w-full">
                    <i class="fas fa-users mr-3 text-purple-400"></i>
                    Users
                    <svg class="ml-auto w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>
                <ul id="usersDropdown" class="hidden ml-6 mt-1 space-y-1">
                    <li><a href="#" class="block px-4 py-2 hover:bg-slate-700 rounded">All Users</a></li>
                    <li><a href="#" class="block px-4 py-2 hover:bg-slate-700 rounded">Add User</a></li>
                </ul>
            </li>

            <li class="relative group">
                <button onclick="sidebarDropdown('settingsDropdown')" class="flex items-center p-3 hover:bg-slate-700 rounded-lg transition-colors w-full">
                    <i class="fas fa-cog mr-3 text-yellow-400"></i>
                    Settings
                    <svg class="ml-auto w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7" />
                    </svg>
                </button>
                <ul id="settingsDropdown" class="hidden ml-6 mt-1 space-y-1">
                    <li><a href="#" class="block px-4 py-2 hover:bg-slate-700 rounded">General</a></li>
                    <li><a href="#" class="block px-4 py-2 hover:bg-slate-700 rounded">Security</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</aside>

<!-- JS for Dropdown Toggle -->
<script>
    function sidebarDropdown(id) {
        // Close all dropdowns and remove 'active' styling
        document.querySelectorAll("ul[id$='Dropdown']").forEach(drop => {
            if (drop.id !== id) drop.classList.add('hidden');
        });

        document.querySelectorAll("button[onclick^='sidebarDropdown']").forEach(btn => {
            btn.classList.remove('bg-slate-700');
            btn.querySelector('svg').classList.remove('rotate-180');
        });

        // Toggle selected dropdown
        const dropdown = document.getElementById(id);
        dropdown.classList.toggle('hidden');

        // Highlight the active button
        const button = dropdown.previousElementSibling;
        if (!dropdown.classList.contains('hidden')) {
            button.classList.add('bg-slate-700');
            button.querySelector('svg').classList.add('rotate-180');
        } else {
            button.classList.remove('bg-slate-700');
            button.querySelector('svg').classList.remove('rotate-180');
        }
    }

    // Highlight clicked dropdown link
    document.addEventListener('DOMContentLoaded', () => {
        const dropdownLinks = document.querySelectorAll("ul[id$='Dropdown'] a");

        dropdownLinks.forEach(link => {
            link.addEventListener('click', function () {
                // Remove active from all links
                dropdownLinks.forEach(l => l.classList.remove('bg-slate-700'));

                // Add active to clicked link
                this.classList.add('bg-slate-700');
            });
        });
    });

    // Close dropdowns if clicked outside
    document.addEventListener('click', function (e) {
        const dropdowns = document.querySelectorAll("ul[id$='Dropdown']");
        let clickedInside = false;

        dropdowns.forEach(dropdown => {
            const button = dropdown.previousElementSibling;
            if (dropdown.contains(e.target) || button.contains(e.target)) {
                clickedInside = true;
            }
        });

        if (!clickedInside) {
            dropdowns.forEach(dropdown => {
                dropdown.classList.add('hidden');
                const button = dropdown.previousElementSibling;
                button.classList.remove('bg-slate-700');
                button.querySelector('svg').classList.remove('rotate-180');
            });
        }
    });
</script>


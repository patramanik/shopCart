<!-- Mobile Menu Button -->
        <button id="mobileMenuButton" class="md:hidden fixed top-4 right-4 p-2 z-50 text-gray-600">
            <i class="fas fa-bars text-2xl"></i>
        </button>

        <!-- Sidebar -->
        <aside id="sidebar" class="fixed h-screen bg-slate-800 text-white w-64 p-4 transform -translate-x-full md:translate-x-0 transition-transform duration-300 z-40">
            <div class="flex items-center justify-between mb-8">
                <h2 class="text-2xl font-bold">Admin Panel</h2>
                <button id="closeSidebar" class="md:hidden p-2 hover:bg-slate-700 rounded">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <nav>
                <ul class="space-y-2">
                    <li>
                        <a href="#" class="flex items-center p-3 hover:bg-slate-700 rounded-lg transition-colors">
                            <i class="fas fa-home mr-3 text-blue-400"></i>
                            Dashboard
                        </a>
                    </li>
                    <li>
                        <a href="#" class="flex items-center p-3 hover:bg-slate-700 rounded-lg transition-colors">
                            <i class="fas fa-chart-line mr-3 text-green-400"></i>
                            Analytics
                        </a>
                    </li>
                    <li>
                        <a href="#" class="flex items-center p-3 hover:bg-slate-700 rounded-lg transition-colors">
                            <i class="fas fa-users mr-3 text-purple-400"></i>
                            Users
                        </a>
                    </li>
                    <li>
                        <a href="#" class="flex items-center p-3 hover:bg-slate-700 rounded-lg transition-colors">
                            <i class="fas fa-cog mr-3 text-yellow-400"></i>
                            Settings
                        </a>
                    </li>
                </ul>
            </nav>
        </aside>

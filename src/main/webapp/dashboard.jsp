<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="bg-gray-50">
    <div class="flex">
          <%@include file="WEB-INF/admin/navbar.jsp" %>
        <!-- Main Content -->
        <main class="flex-1 min-h-screen md:ml-64 p-4 md:p-8 transition-all duration-300">
            <!-- Header -->
            <div class="flex flex-col md:flex-row justify-between items-center mb-8 gap-4">
                <h1 class="text-2xl font-bold text-gray-800">Dashboard Overview</h1>
                <div class="flex items-center gap-4 w-full md:w-auto">
                    <input type="search" placeholder="Search..." class="w-full md:w-64 px-4 py-2 rounded-lg border focus:outline-none focus:ring-2 focus:ring-blue-400">
                    <div class="flex items-center gap-2">
                        <!-- <img src="https://via.placeholder.com/40" alt="Profile" class="rounded-full w-10 h-10"> -->
                        <i class="fa-regular fa-circle-user text-blue-600 text-xl"></i>
                        <span class="hidden md:block text-gray-700">John Doe</span>
                    </div>
                </div>
            </div>

            <!-- Stats Cards -->
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4 mb-8">
                <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100">
                    <div class="flex justify-between items-center">
                        <div>
                            <p class="text-gray-500 text-sm">Total Users</p>
                            <p class="text-2xl font-bold text-gray-800">1,234</p>
                        </div>
                        <div class="p-3 bg-blue-50 rounded-full">
                            <i class="fas fa-users text-blue-600 text-xl"></i>
                        </div>
                    </div>
                    <div class="mt-4 text-sm text-green-600">
                        <i class="fas fa-arrow-up"></i> 12% from last month
                    </div>
                </div>
                <!-- Repeat similar structure for other cards -->
            </div>

            <!-- Charts Section -->
            <div class="grid lg:grid-cols-3 gap-6">
                <div class="lg:col-span-2 bg-white p-6 rounded-xl shadow-sm border border-gray-100">
                    <h3 class="font-bold mb-4 text-gray-800">Sales Overview</h3>
                    <div class="h-64 bg-gray-50 rounded-lg"></div>
                </div>

                <!-- Recent Activity -->
                <div class="bg-white p-6 rounded-xl shadow-sm border border-gray-100">
                    <h3 class="font-bold mb-4 text-gray-800">Recent Activity</h3>
                    <ul class="space-y-4">
                        <li class="flex items-center p-3 hover:bg-gray-50 rounded-lg">
                            <div class="bg-green-100 p-2 rounded-full mr-3">
                                <i class="fas fa-check text-green-600"></i>
                            </div>
                            <div>
                                <p class="text-sm font-medium">New order received</p>
                                <p class="text-xs text-gray-500">2 hours ago</p>
                            </div>
                        </li>
                        <!-- Repeat similar structure for other activities -->
                    </ul>
                </div>
            </div>
        </main>
    </div>

    <script>
        // Mobile sidebar toggle
        const sidebar = document.getElementById('sidebar');
        const mobileMenuButton = document.getElementById('mobileMenuButton');
        const closeSidebar = document.getElementById('closeSidebar');

        mobileMenuButton.addEventListener('click', () => {
            sidebar.classList.toggle('-translate-x-full');
        });

        closeSidebar.addEventListener('click', () => {
            sidebar.classList.add('-translate-x-full');
        });

        // Close sidebar when clicking outside on mobile
        document.addEventListener('click', (event) => {
            if (window.innerWidth < 768 && 
                !sidebar.contains(event.target) && 
                !mobileMenuButton.contains(event.target)) {
                sidebar.classList.add('-translate-x-full');
            }
        });
    </script>
</body>
</html>
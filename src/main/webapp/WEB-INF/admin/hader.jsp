<%@ page import="com.demo.entity.Users" %>
<%@ page session="true" %>

<%
    Users loggedInUser = (Users) session.getAttribute("user");
    String username = (loggedInUser != null) ? loggedInUser.getName() : "Guest";
%>

<!-- Header -->
<div class="flex flex-col md:flex-row justify-between items-center mb-8 gap-4 relative z-40">
    <h1 class="text-2xl font-bold text-gray-800">Dashboard</h1>

    <div class="flex items-center gap-4 w-full md:w-auto">
        <input type="search" placeholder="Search..." class="w-full md:w-64 px-4 py-2 rounded-lg border focus:outline-none focus:ring-2 focus:ring-blue-400">

        <!-- Profile with Dropdown -->
        <div class="relative inline-block text-left">
            <!-- Profile Button -->
            <button onclick="toggleDropdown()" class="flex items-center gap-2 text-gray-700 hover:text-blue-600 focus:outline-none">
                <i class="fa-regular fa-circle-user text-blue-600 text-xl"></i>
                <span class="hidden md:block"><%= username %></span>
                <svg class="w-4 h-4" fill="currentColor" viewBox="0 0 20 20">
                    <path fill-rule="evenodd" d="M5.23 7.21a.75.75 0 011.06.02L10 11.086l3.71-3.856a.75.75 0 111.08 1.04l-4.25 4.41a.75.75 0 01-1.08 0l-4.25-4.41a.75.75 0 01.02-1.06z" clip-rule="evenodd" />
                </svg>
            </button>

            <!-- Dropdown -->
            <div id="profileDropdown" class="hidden absolute right-0 mt-2 w-48 bg-white rounded-md shadow-lg border z-50">
                <a href="profile.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Profile</a>
                <a href="changePassword.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Change Password</a>
                <a href="settings.jsp" class="block px-4 py-2 text-sm text-gray-700 hover:bg-gray-100">Settings</a>
                <div class="border-t my-1"></div>
                <a href="logout" class="block px-4 py-2 text-sm text-red-600 hover:bg-red-50 font-medium">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- JavaScript for dropdown toggle -->
<script>
    function toggleDropdown() {
        const dropdown = document.getElementById("profileDropdown");
        dropdown.classList.toggle("hidden");
    }

    // Optional: close dropdown on outside click
    document.addEventListener('click', function (event) {
        const dropdown = document.getElementById("profileDropdown");
        const button = event.target.closest("button");
        if (!dropdown.contains(event.target) && !button) {
            dropdown.classList.add("hidden");
        }
    });
</script>

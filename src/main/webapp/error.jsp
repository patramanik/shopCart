<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>404 - Page Not Found</title>
  <script src="https://cdn.tailwindcss.com"></script>
  <style>
    @keyframes gradient {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }

    .gradient-bg {
      background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
      background-size: 400% 400%;
      animation: gradient 15s ease infinite;
    }

    .float {
      animation: float 3s ease-in-out infinite;
    }

    @keyframes float {
      0%, 100% { transform: translateY(0); }
      50% { transform: translateY(-20px); }
    }

    .shake {
      animation: shake 2s ease-in-out infinite;
    }

    @keyframes shake {
      0%, 100% { transform: rotate(0deg); }
      25% { transform: rotate(5deg); }
      75% { transform: rotate(-5deg); }
    }
  </style>
</head>
<body class="gradient-bg flex items-center justify-center min-h-screen">
  <div class="text-center px-4">
    <div class="max-w-lg mx-auto">
      
      <!-- Animated 404 Number -->
      <h1 class="text-9xl font-bold text-white mb-4 float opacity-90">
        <span class="bg-clip-text text-transparent bg-gradient-to-r from-pink-400 to-purple-600">
          404
        </span>
      </h1>

      <!-- Animated SVG Icon -->
      <div class="shake inline-block mb-8">
        <svg class="w-32 h-32 text-white opacity-90" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                d="M12 9v2m0 4h.01m-6.938 4h13.856c1.54 0 2.502-1.667 1.732-3L13.732 4c-.77-1.333-2.694-1.333-3.464 0L3.34 16c-.77 1.333.192 3 1.732 3z"/>
        </svg>
      </div>

      <!-- Error Message -->
      <div class="space-y-6">
        <h2 class="text-4xl font-semibold text-white mb-4 animate-pulse">
          Oops! Page Not Found
        </h2>
        
        <%
          // Correct variable name should be 'error'
          String error = (String) session.getAttribute("error");
        
          if (error != null && !error.isEmpty()) {
        %>
          <p class="text-xl text-white opacity-90 mb-8"><%= error %></p>
        <% 
          } else { 
        %>
          <p class="text-xl text-white opacity-90 mb-8">
            The page you're looking for might have been moved, renamed,<br>
            or might never have existed.
          </p>
        <% 
          } 
        %>

        <!-- Animated Button -->
        <a href="index.jsp" 
           class="inline-block px-8 py-4 text-lg font-semibold text-white transition-all 
                  bg-gradient-to-r from-pink-500 to-purple-600 rounded-full 
                  hover:scale-110 hover:shadow-lg hover:shadow-pink-500/30 
                  focus:outline-none focus:ring-2 focus:ring-purple-600 
                  focus:ring-opacity-50 duration-300">
          Return to Homepage
        </a>
      </div>
      
    </div>
  </div>
</body>
</html>

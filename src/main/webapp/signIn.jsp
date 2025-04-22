<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Sign In</title>
  <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">

  <div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-md">
    <h2 class="text-2xl font-bold text-center text-gray-800 mb-6">Sign In</h2>

    <form action="LoginServlet" method="post" class="space-y-5">
      <!-- Email -->
      <div>
        <label for="email" class="block mb-1 text-sm font-medium text-gray-700">Email</label>
        <input type="email" id="email" name="email" required
               class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" />
      </div>

      <!-- Password -->
      <div>
        <label for="password" class="block mb-1 text-sm font-medium text-gray-700">Password</label>
        <input type="password" id="password" name="password" required
               class="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500" />
      </div>

      <!-- Sign In Button -->
      <div>
        <button type="submit"
                class="w-full bg-blue-600 hover:bg-blue-700 text-white font-semibold py-2 px-4 rounded-lg transition duration-300">
          Sign In
        </button>
      </div>
    </form>

    <!-- Extra Links -->
    <div class="mt-4 text-center text-sm text-gray-600">
      <p>
        Don't have an account? 
        <a href="signUp.jsp" class="text-blue-600 hover:underline">Sign Up</a>
      </p>
      <p class="mt-1">
        <a href="forgotpassword.jsp" class="text-blue-600 hover:underline">Forgot password?</a>
      </p>
    </div>
  </div>

</body>
</html>
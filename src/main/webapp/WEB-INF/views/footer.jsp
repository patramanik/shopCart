<%@ page import="java.util.Calendar" %>

<!-- Footer -->
<footer class="bg-gray-900 text-white mt-20">
  <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 grid grid-cols-1 md:grid-cols-4 gap-8">
    
    <!-- Logo and description -->
    <div>
      <h3 class="text-2xl font-bold mb-4">ShopCart</h3>
      <p class="text-gray-400">Your one-stop shop for trending tech gadgets. Quality products at unbeatable prices.</p>
    </div>

    <!-- Quick Links -->
    <div>
      <h4 class="text-xl font-semibold mb-4">Quick Links</h4>
      <ul class="space-y-2 text-gray-400">
        <li><a href="#" class="hover:text-white transition">Home</a></li>
        <li><a href="#" class="hover:text-white transition">Shop</a></li>
        <li><a href="#" class="hover:text-white transition">About</a></li>
        <li><a href="#" class="hover:text-white transition">Contact</a></li>
      </ul>
    </div>

    <!-- Support -->
    <div>
      <h4 class="text-xl font-semibold mb-4">Support</h4>
      <ul class="space-y-2 text-gray-400">
        <li><a href="#" class="hover:text-white transition">FAQs</a></li>
        <li><a href="#" class="hover:text-white transition">Returns</a></li>
        <li><a href="#" class="hover:text-white transition">Shipping</a></li>
        <li><a href="#" class="hover:text-white transition">Help Center</a></li>
      </ul>
    </div>

    <!-- Newsletter -->
    <div>
      <h4 class="text-xl font-semibold mb-4">Newsletter</h4>
      <p class="text-gray-400 mb-4">Subscribe for updates, offers, and more.</p>
      <form class="flex">
        <input type="email" placeholder="Your email" class="w-full p-2 rounded-l bg-gray-800 text-white placeholder-gray-500 focus:outline-none" />
        <button type="submit" class="bg-indigo-600 hover:bg-indigo-700 p-2 rounded-r text-white">Subscribe</button>
      </form>
    </div>

  </div>

  <div class="border-t border-gray-700 text-center text-sm text-gray-500 py-4">
    &copy; <%= Calendar.getInstance().get(Calendar.YEAR) %> ShopCart. All rights reserved.
  </div>
</footer>

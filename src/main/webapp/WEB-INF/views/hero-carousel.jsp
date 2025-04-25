<div class="mx-auto px-4 sm:px-6 lg:px-8 py-8 h-[500px]">
  <div class="swiper hero-carousel rounded-2xl overflow-hidden shadow-xl h-full relative">
    <div class="swiper-wrapper h-full">
      <% 
        String[] slides = {
          "Summer Collection|Discover our latest arrivals|Shop Now|/summer-collection",
          "Winter Special|Stay warm in style|Explore Coats|/winter-special",
          "New Arrivals|Fresh styles just landed|View All|/new-arrivals",
          "Limited Offer|50% off selected items|Grab Deals|/sale"
        };
        
        // Using reliable image URLs that won't fail
        String[] imageUrls = {
          "https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&h=600",
          "https://images.unsplash.com/photo-1445205170230-053b83016050?ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&h=600",
          "https://images.unsplash.com/photo-1487412947147-5cebf100ffc2?ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&h=600",
          "https://images.unsplash.com/photo-1489987707025-afc232f7ea0f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1600&h=600"
        };
        
        for (int i = 0; i < slides.length; i++) { 
          String[] parts = slides[i].split("\\|");
      %>
        <div class="swiper-slide h-full">
          <div class="relative h-full">
            <!-- Using direct image URLs (no lazy loading for testing) -->
            <img src="<%= imageUrls[i] %>"
                 alt="<%= parts[0] %>"
                 class="w-full h-full object-cover"
                 width="1600"
                 height="600">
            
            <div class="absolute inset-0 bg-black/30"></div>
            <div class="absolute bottom-0 left-0 right-0 p-8 bg-gradient-to-t from-black/80 to-transparent">
              <h2 class="text-3xl md:text-4xl font-bold text-white mb-2"><%= parts[0] %></h2>
              <p class="text-base md:text-lg text-gray-200 mb-4"><%= parts[1] %></p>
              <a href="<%= parts[3] %>" class="inline-block bg-white text-black font-semibold py-2 px-6 rounded-lg hover:bg-gray-300 transition duration-300">
                <%= parts[2] %>
              </a>
            </div>
          </div>
        </div>
      <% } %>
    </div>

    <!-- Navigation buttons -->
    <div class="swiper-button-next !text-white !w-12 !h-12 after:!text-2xl"></div>
    <div class="swiper-button-prev !text-white !w-12 !h-12 after:!text-2xl"></div>

    <!-- Pagination -->
    <div class="swiper-pagination !bottom-4"></div>
  </div>
</div>

<!-- Make sure these are in your <head> -->
<link rel="stylesheet" href="https://unpkg.com/swiper@8/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper@8/swiper-bundle.min.js"></script>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    // Simple initialization with no fancy features
    new Swiper('.hero-carousel', {
      loop: true,
      autoplay: {
        delay: 5000,
      },
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  });
</script>
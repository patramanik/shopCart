<div class="mx-auto px-4 sm:px-6 lg:px-8 py-8 h-[400px]">
  <div class="swiper-container rounded-2xl overflow-hidden shadow-xl h-full">
    <div class="swiper-wrapper h-full">
      <%
        String[] slides = {
          "Summer Collection|Discover our latest arrivals",
          "Winter Special|Stay warm in style",
          "New Arrivals|Fresh styles just landed"
        };
        
        int slideCount = 0;
        for(String slide : slides) {
          String[] parts = slide.split("\\|");
          slideCount++;
      %>
        <div class="swiper-slide h-full">
          <div class="relative h-full">
            <img src="https://picsum.photos/1200/400?random=<%= slideCount %>" 
                 alt="<%= parts[0] %>" 
                 class="w-full h-full object-cover">
            <div class="absolute bottom-0 left-0 right-0 p-8 bg-gradient-to-t from-black/80 to-transparent">
              <div class="max-w-3xl mx-auto">
                <h3 class="text-3xl md:text-5xl font-bold text-white mb-4"><%= parts[0] %></h3>
                <p class="text-lg md:text-xl text-gray-200"><%= parts[1] %></p>
              </div>
            </div>
          </div>
        </div>
      <% } %>
    </div>
    <!-- Navigation & Pagination -->
  </div>
</div>
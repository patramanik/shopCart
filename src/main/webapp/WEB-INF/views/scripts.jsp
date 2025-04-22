<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<script src="https://unpkg.com/lucide@latest"></script>
<script>
  lucide.createIcons();
  // Swiper initialization code
  
   // Initialize Swiper
      const swiper = new Swiper(".swiper-container", {
        loop: true,
        speed: 800,
        autoplay: {
          delay: 5000,
          disableOnInteraction: false,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
          renderBullet: (index, className) => {
            return `<span class="${className} w-3 h-3 bg-white opacity-50 hover:opacity-100 transition-opacity"></span>`;
          },
        },
        breakpoints: {
          1024: {
            effect: "fade",
            fadeEffect: {
              crossFade: true,
            },
          },
        },
      });

</script>
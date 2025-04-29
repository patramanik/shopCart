<!-- JavaScript -->
    <script>
        function toggleDropdown() {
            const dropdown = document.getElementById("profileDropdown");
            dropdown.classList.toggle("hidden");
        }

        document.addEventListener('click', function (event) {
            const dropdown = document.getElementById("profileDropdown");
            const button = event.target.closest("button");
            if (!dropdown.contains(event.target) && !button) {
                dropdown.classList.add("hidden");
            }
        });

        // Sidebar toggle
        const sidebar = document.getElementById('sidebar');
        const mobileMenuButton = document.getElementById('mobileMenuButton');
        const closeSidebar = document.getElementById('closeSidebar');

        mobileMenuButton.addEventListener('click', () => {
            sidebar.classList.toggle('-translate-x-full');
        });

        closeSidebar.addEventListener('click', () => {
            sidebar.classList.add('-translate-x-full');
        });

        document.addEventListener('click', (event) => {
            if (window.innerWidth < 768 &&
                !sidebar.contains(event.target) &&
                !mobileMenuButton.contains(event.target)) {
                sidebar.classList.add('-translate-x-full');
            }
        });
    </script>
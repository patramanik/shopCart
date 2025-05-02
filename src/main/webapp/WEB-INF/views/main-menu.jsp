<div class="bg-white shadow-sm">
	<div class="max-w-7xl mx-auto px-4">
		<div class="flex items-center justify-between py-3">
			<%
			String[][] categories = {
				{"Home & Kitchen", "home", "Furniture, Appliances, Cookware"},
				{"Women", "shirt", "Clothing, Bags, Footwear"},
				{"Men", "user", "Shirts, Watches, Accessories"},
				{"Kids", "baby", "Toys, Clothing, School Supplies"},
				{"Beauty & Health", "heart-pulse", "Skincare, Makeup, Vitamins"},
				{"Electronics", "tv", "Phones, Laptops, Gadgets"},
				{"Jewellery", "gem", "Necklaces, Rings, Earrings"}
			};
			%>

			<%
			for (String[] category : categories) {
			%>
			<div class="relative group" x-data="dropdown()" @mouseleave="closeMenu()" @mouseenter="openMenu()">
				<!-- Main Category Button -->
				<button @click="toggleMenu()"
					class="flex items-center gap-2 px-3 py-2 text-gray-700 hover:text-purple-700 font-medium transition-colors">
					<i data-lucide="<%=category[1]%>" class="w-5 h-5"></i> <span><%=category[0]%></span>
					<i data-lucide="chevron-down"
						class="w-4 h-4 transition-transform duration-200"
						:class="{'rotate-180': open}"></i>
				</button>

				<!-- Dropdown Menu -->
				<div x-show="open"
					x-transition:enter="transition ease-out duration-200"
					x-transition:enter-start="opacity-0 translate-y-1"
					x-transition:enter-end="opacity-100 translate-y-0"
					x-transition:leave="transition ease-in duration-150"
					x-transition:leave-start="opacity-100 translate-y-0"
					x-transition:leave-end="opacity-0 translate-y-1"
					class="absolute z-10 left-0 mt-2 w-56 origin-top-left rounded-md bg-white shadow-lg ring-1 ring-black ring-opacity-5 focus:outline-none"
					@click.outside="open = false"
					@mouseenter="clearHoverTimeout()" @mouseleave="closeMenu()">
					<div class="py-1">
						<div class="px-4 py-2 text-xs text-gray-500 border-b">
							<%=category[2]%>
						</div>
						<%
						String[][] subcategories = {
							{"All " + category[0], "#"},
							{"New Arrivals", "#"},
							{"Best Sellers", "#"},
							{"Deals", "#"},
							{"Collections", "#"}
						};

						for (String[] subcat : subcategories) {
						%>
						<a href="<%=subcat[1]%>"
							class="block px-4 py-2 text-sm text-gray-700 hover:bg-purple-50 hover:text-purple-900">
							<%=subcat[0]%>
						</a>
						<%
						}
						%>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
	</div>
</div>

<!-- AlpineJS Logic for Dropdown -->
<script>
	function dropdown() {
		return {
			open: false,
			hoverTimeout: null,
			openMenu() {
				this.clearHoverTimeout();
				this.open = true;
			},
			closeMenu() {
				this.hoverTimeout = setTimeout(() => {
					this.open = false;
				}, 200); // Adjust timing as needed
			},
			clearHoverTimeout() {
				clearTimeout(this.hoverTimeout);
			},
			toggleMenu() {
				this.open = !this.open;
			}
		}
	}
</script>

<!-- Include AlpineJS -->
<script src="//unpkg.com/alpinejs" defer></script>

<!-- Initialize Lucide Icons -->
<script>
	document.addEventListener('DOMContentLoaded', function () {
		if (window.lucide) {
			lucide.createIcons();
		}
	});
</script>

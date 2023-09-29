<template>
  <div class="products-container">
    <h1 style="color: #E61C5D;">Productos</h1>
    <input
        type="text"
        v-model="searchQuery"
        @input="filterProducts"
        class="search-bar"
        placeholder="Buscar productos..."
    />
    <button @click="filterByRating" :class="{ 'highlighted': filterActive }" class="rounded-button">Filtrar</button>
    <div class="product-cards">
      <router-link
          v-for="(product, index) in filteredProducts"
          :key="index"
          :to="{ name: 'product', params: { id: product.id } }"
          class="product-card"
          :class="{ 'highlighted': product.highlighted }"
      >
        <img :src="product.image" alt="Producto Imagen" />
        <p style="color: #000;">Calificación: {{ product.rating }}/5</p>
        <p class="description">{{ product.description }}</p>
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ProductsComponents',
  data() {
    return {
      products: [
        { id: 1, image: '/Products_1.jpg', rating: 4.5, description: 'Software para oficinas', highlighted: false },
        { id: 2, image: '/Products_2.jpg', rating: 3.8, description: 'Software para empresas contadoras', highlighted: false },
        { id: 3, image: '/Products_3.jpg', rating: 4.0, description: 'Hosting para web-pages', highlighted: false },
        { id: 4, image: '/Products_4.jpg', rating: 3.0, description: 'Servicios en la nube', highlighted: false },
        { id: 5, image: '/Products_5.jpg', rating: 4.1, description: 'Software para integración de equipos', highlighted: false },
        { id: 6, image: '/Products_6.jpg', rating: 3.9, description: 'Sistema de compras', highlighted: false },
        { id: 7, image: '/Products_7.jpg', rating: 4.2, description: 'Sistema integrado de antivirus', highlighted: false },
        { id: 9, image: '/Products_8.jpg', rating: 3.0, description: 'Sistema de automatizacion complementario', highlighted: false },
        { id: 9, image: '/Products_9.jpg', rating: 4.0, description: 'Soluciones digitales para la industria textil', highlighted: false },
        { id: 10, image: '/Products_10.jpg', rating: 2.9, description: 'Sistema de Cisco plantilla', highlighted: false },
        { id: 11, image: '/Products_11.jpg', rating: 3.9, description: 'Explorador de archivos', highlighted: false },
        { id: 12, image: '/Products_12.jpg', rating: 4.1, description: 'Sistema de visualizacion de data', highlighted: false },
      ],
      filterActive: false,
      searchQuery: '',
    };
  },
  computed: {
    filteredProducts() {
      if (this.searchQuery === '') {
        return this.products;
      } else {
        const query = this.searchQuery.toLowerCase();
        return this.products.filter(product =>
            product.description.toLowerCase().includes(query)
        );
      }
    },
  },
  methods: {
    filterByRating() {
      const maxRating = Math.max(...this.products.map(product => product.rating));
      this.products.forEach(product => {
        product.highlighted = product.rating === maxRating;
      });
      this.filterActive = true;
    },
    filterProducts() {
      this.filterActive = false;
    },
  },
};
</script>



<style scoped>
.products-container {
  background-color: #f5f5f5;
  padding: 20px;
  margin: 16px;
  text-align: center;
  border-radius: 12px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.product-cards {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 16px;
}

.product-card {
  flex: 0 0 calc(25% - 16px);
  margin: 16px;
  text-align: center;
  padding: 16px;
  border: 1px solid #ccc;
  border-radius: 8px;
  transition: transform 0.3s ease-in-out, background-color 0.3s ease-in-out, color 0.3s ease-in-out, border-color 0.3s ease-in-out;
  background-color: white;
}

.product-card img {
  max-width: 100%;
  height: auto;
}

.product-card.highlighted {
  transform: scale(1.1);
  background-color: #007BFF;
  color: white;
  border-color: transparent;
}

.rounded-button {
  background-color: #E61C5D;
  color: white;
  border: none;
  border-radius: 4px;
  padding: 8px 16px;
  cursor: pointer;
  margin: 8px;
  transition: background-color 0.3s ease-in-out;
}

.rounded-button:hover {
  background-color: #D41453;
}

.description {
  margin-top: 8px;
  font-size: 0.9em;
  color: #666;
}

.search-bar {
  width: 100%;
  padding: 8px;
  margin: 16px 0;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
}

/* Diseño Responsivo */
@media (max-width: 500px) {
  .product-card {
    flex: 0 0 calc(100% - 16px);
  }
}
</style>

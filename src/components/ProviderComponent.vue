<template>
  <div class="provider-container">
    <h1 style="color: #E61C5D;">Información de nuestros Proveedores</h1>
    <div class="provider-carousel">
      <div class="provider-card" v-for="(provider, index) in visibleProviders" :key="index">
        <div class="provider-content" @mouseover="zoomIn(provider)" @mouseleave="zoomOut(provider)">
          <img :src="getImageUrl(provider.image)" alt="Proveedor Image" class="provider-image" :class="{ 'zoomed': provider.zoomed }" />
          <p>{{ provider.name }}</p>
        </div>
      </div>
    </div>
    <div class="carousel-controls">
      <button @click="previousPage" class="rounded-button small-button" style="background-color: #E61C5D; color: white;">&lt;</button>
      <button @click="nextPage" class="rounded-button small-button" style="background-color: #E61C5D; color: white;">&gt;</button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ProviderComponents',
  data() {
    return {
      providers: [
        { name: 'Microsoft', image: './Proovedor_Microsoft.jpg', zoomed: false },
        { name: 'Azure', image: './Proovedor_Azure.jpg', zoomed: false },
        { name: 'Google', image: './Proovedor_Google.jpg', zoomed: false },
        { name: 'Oracle', image: './Proovedor_Oracle.jpg', zoomed: false },
        { name: 'Sage', image: './Proovedor_Sage.jpg', zoomed: false },
        { name: 'Quickbooks', image: './Proovedor_Quickbooks.jpg', zoomed: false },
        { name: 'Workday', image: './Proovedor_Workday.jpg', zoomed: false },
      ],
      currentIndex: 0,
      visibleCount: 3, // Cantidad de proveedores visibles a la vez
    };
  },
  computed: {
    visibleProviders() {
      const providersToShow = [];
      for (let i = 0; i < this.visibleCount; i++) {
        const index = (this.currentIndex + i) % this.providers.length;
        providersToShow.push(this.providers[index]);
      }
      return providersToShow;
    },
  },
  methods: {
    previousPage() {
      this.currentIndex = (this.currentIndex - 1 + this.providers.length) % this.providers.length;
    },
    nextPage() {
      this.currentIndex = (this.currentIndex + 1) % this.providers.length;
    },
    zoomIn(provider) {
      provider.zoomed = true;
    },
    zoomOut(provider) {
      provider.zoomed = false;
    },
    getImageUrl(imagePath) {
      // Devuelve la URL completa de la imagen utilizando una ruta absoluta
      return process.env.BASE_URL + imagePath;
    },
  },
};
</script>

<style scoped>
.provider-container {
  border: 1px solid #ccc;
  padding: 16px;
  margin: 16px;
  text-align: center;
  border-radius: 20px; /* Redondea el contenedor */
  overflow: hidden; /* Oculta los elementos que se desborden */
}
.provider-carousel {
  display: flex;
  transition: transform 0.5s ease; /* Agrega una animación de deslizamiento */
  overflow: hidden; /* Oculta los elementos que se desborden */
}
.provider-card {
  flex: 0 0 calc(33.33% - 16px);
  margin: 16px;
  text-align: center;
  border-radius: 50%; /* Redondea las tarjetas */
  overflow: hidden; /* Oculta los elementos que se desborden */
  transition: transform 0.3s ease, transform-origin 0.3s ease;
}
.provider-content {
  text-align: center;
}
.provider-image {
  max-width: 200px;
  height: auto;
  margin: 0 auto;
  transition: transform 0.3s ease, transform-origin 0.3s ease; /* Agrega una animación de transformación */
}
.zoomed {
  transform: scale(1.05); /* Aumenta ligeramente el tamaño al pasar el mouse por encima */
}
.carousel-controls {
  margin-top: 10px;
  text-align: center;
}
.small-button {
  background-color: #007BFF;
  color: white;
  border: none;
  border-radius: 50%; /* Redondea los botones */
  padding: 6px; /* Tamaño más pequeño */
  cursor: pointer;
  margin: 8px;
  font-size: 14px; /* Tamaño de fuente más pequeño */
  transition: background-color 0.3s ease; /* Agrega una animación de cambio de color */
}
.small-button:hover {
  background-color: #0056b3; /* Cambia el color al pasar el ratón */
}
</style>
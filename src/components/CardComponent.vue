<template>
  <div class="card-container" style="background-color: #ededed;">
    <div class="image-section">
      <img src="/Central.jpg" alt="Card Image">
    </div>
    <div class="text-section">
      <h1 style="color: #E61C5D;">Contacta con proveedores de todo el mundo</h1>
      <p class="sub-text" style="color: #CCB078;">Puedes filtrar los proveedores recientes y más cercanos</p>
      <div class="button-section">
        <div>
          <!-- Utiliza router-link para enlazar a ServicePage -->
          <router-link to="/servicepage">
            <button class="rounded-button" :style="{ 'background-color': showLocation ? '#7C394A' : '#E61C5D', 'color': 'white' }">Comenzar</button>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>


<script>
export default {
  name: 'CardComponent',
  data() {
    return {
      showLocation: false,
      showDates: false,
      selectedLocation: '',
      selectedDate: ''
    };
  }
};
</script>

<style scoped>
.card-container {
  display: flex;
  flex-direction: row-reverse;
  align-items: center;
  padding: 20px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
  background-color: #ffffff;
  transition: background-color 0.3s ease-in-out;
}

.text-section {
  flex: 1;
  text-align: left;
}

h1 {
  font-size: 2.5em;
  color: #E61C5D;
  transition: color 0.3s ease-in-out;
}

.sub-text {
  color: #CCB078;
  font-size: 0.8em;
}

.image-section {
  flex: 1;
  text-align: right;
}

.image-section img {
  max-width: 100%;
  height: auto;
}

.button-section {
  margin-top: 15px;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 10px;
}

.rounded-button {
  padding: 8px 16px;
  border-radius: 12px;
  background-color: #E61C5D;
  color: white;
  cursor: pointer;
  transition: background-color 0.3s ease-in-out;
}

.rounded-button:hover {
  background-color: #7C394A;
  transform: scale(1.05); /* Aumenta ligeramente el tamaño al pasar el ratón */
}

/* Diseño Responsivo */
@media (max-width: 768px) {
  .card-container {
    flex-direction: column;
    text-align: center;
  }

  .text-section {
    text-align: left;
  }

  .button-section {
    align-items: center;
  }
}
</style>

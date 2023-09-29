<template>
  <div class="users-container">
    <h1>Usuarios y Reseñas</h1>
    <div class="slider">
      <button @click="previousPage" class="rounded-button previous-button">&lt;</button>
      <div class="usuario-cards">
        <div
            v-for="(usuario, index) in visibleUsuarios"
            :key="index"
            class="usuario-card"
            :class="{ 'central': index === 1, 'side': index === 0 || index === 2 }"
        >
          <div class="usuario-content">
            <img :src="usuario.image" alt="Usuario Image" />
            <p :class="{ 'resena-central': index === 1, 'resena-oscurecida': index !== 1 }">{{ usuario.review }}</p>
            <!-- Agregamos el nombre del usuario -->
            <p class="usuario-name">{{ usuario.name }}</p>
          </div>
        </div>
      </div>
      <button @click="nextPage" class="rounded-button next-button">&gt;</button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'UsersComponent',
  data() {
    return {
      usuarios: [
        { name: 'Juan Pérez', image: '/Usuario_1.jpg', review: 'Nimbus es excelente me ha ayudado enormemente a encontrar los mejores proveedores' },
        { name: 'Marío Rodríguez', image: '/Usuario_2.jpg', review: 'Estoy muy satisfecho con Nimbus, ha facilitado mi búsqueda de proveedores' },
        { name: 'Carlos González', image: '/Usuario_3.jpg', review: 'Nimbus es una herramienta imprescindible para mi negocio' },
        { name: 'Ana Martínez', image: '/Usuario_4.jpg', review: 'Estoy encantada con la plataforma, ha mejorado mi eficiencia en la búsqueda de proveedores' },
        { name: 'Laura García', image: '/Usuario_5.jpg', review: 'Nimbus me ha ahorrado tiempo y dinero en la búsqueda de proveedores confiables' },
        { name: 'Eduardo López', image: '/Usuario_6.jpg', review: 'Recomiendo Nimbus a todos los que buscan proveedores de calidad' }
      ],
      centralIndex: 1 // Índice del usuario central (empezamos en el segundo usuario)
    };
  },
  computed: {
    visibleUsuarios() {
      const usuariosToShow = [];
      for (let i = -1; i <= 1; i++) {
        const userIndex = (this.centralIndex + i + this.usuarios.length) % this.usuarios.length;
        usuariosToShow.push(this.usuarios[userIndex]);
      }
      return usuariosToShow;
    }
  },
  methods: {
    previousPage() {
      this.centralIndex = (this.centralIndex - 1 + this.usuarios.length) % this.usuarios.length;
    },
    nextPage() {
      this.centralIndex = (this.centralIndex + 1) % this.usuarios.length;
    }
  }
};
</script>

<style scoped>
.users-container {
  background-color: #f5f5f5;
  padding: 20px;
  margin: 16px;
  text-align: center;
  border-radius: 12px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.slider {
  display: flex;
  justify-content: center;
  align-items: center;
}

.usuario-cards {
  display: flex;
  overflow: hidden;
  transition: transform 0.3s ease-in-out; /* Animación de desplazamiento suave */
}

.usuario-card {
  flex: 0 0 auto;
  width: 300px;
  margin: 0 16px;
  text-align: center;
  background-color: white;
  border-radius: 12px;
  transition: transform 0.3s ease-in-out; /* Animación de transformación */
  filter: brightness(0.7); /* Oscurece todas las imágenes */
}

.usuario-card.central {
  flex: 0 0 auto;
  width: 350px; /* Aumenta el tamaño de la imagen central */
  margin: 0 16px;
  text-align: center;
  background-color: white;
  border-radius: 12px;
  transition: transform 0.3s ease-in-out; /* Animación de transformación */
  filter: brightness(1); /* Mantiene la imagen central con brillo completo */
}

.usuario-card:not(.central):hover {
  filter: brightness(0.7); /* Oscurece las imágenes al pasar el ratón */
}

.usuario-name {
  font-size: 1.2em;
  font-weight: bold;
}

.previous-button,
.next-button {
  background-color: #E61C5D;
  color: white;
  border: none;
  border-radius: 50%;
  padding: 8px 12px;
  cursor: pointer;
  margin: 8px;
  font-size: 18px;
  transition: background-color 0.3s ease-in-out;
}

.previous-button:hover,
.next-button:hover {
  background-color: #D41453;
}
</style>
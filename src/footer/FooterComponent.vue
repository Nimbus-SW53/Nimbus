<template>
  <footer class="main-footer">
    <div class="company-name">
      <h2>Stratusphere</h2>
    </div>
    <div class="menu">
      <ul>
        <!-- Enlace a la página AboutUs -->
        <li><router-link to="/aboutus" class="footer-link">About</router-link></li>
        <li><a href="/fakeapi" class="footer-link">Company</a></li>
        <li><a href="#" class="footer-link">Support</a></li>
      </ul>
    </div>
    <div class="subscription">
      <input
          type="email"
          placeholder="Enter your email"
          class="email-input"
          v-model="email"
      />
      <button class="rounded-button" @click="subscribe">Subscribe</button>
    </div>
    <!-- Notificación de éxito -->
    <div class="success-notification" v-if="showSuccess">
      Success! You are subscribed.
    </div>
  </footer>
</template>

<script>
export default {
  name: 'FooterComponent',
  data() {
    return {
      email: '',
      showSuccess: false, // Variable para controlar la visibilidad de la notificación
    };
  },
  methods: {
    subscribe() {
      this.showSuccess = true;
      // Limpia el campo de correo después de la suscripción si es necesario
      this.email = '';
      setTimeout(() => {
        this.showSuccess = false;
      }, 3000);
    },
  },
};
</script>

<style scoped>
.main-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #f5f5f5;
  padding: 20px;
  color: #333;
  border-top: 2px solid #555;
  transition: background-color 0.3s ease-in-out;
}

.main-footer:hover {
  background-color: #555;
}

.company-name h2 {
  margin: 0;
}

.menu ul {
  display: flex;
  gap: 15px;
  list-style: none;
  margin: 0;
  padding: 0;
}

.footer-link {
  color: #333;
  text-decoration: none;
  transition: color 0.3s ease-in-out;
}

.footer-link:hover {
  color: #555;
}

.subscription {
  display: flex;
  gap: 10px;
}

.email-input {
  padding: 8px;
  border-radius: 12px;
  transition: border-color 0.3s ease-in-out;
}

.email-input:hover {
  border-color: #555; /* Cambio de color del borde al pasar el mouse */
}

.rounded-button {
  padding: 8px 16px;
  border-radius: 12px;
  background-color: #E61C5D; /* Cambio de color del botón */
  color: white;
  cursor: pointer;
  transition: background-color 0.3s ease-in-out; /* Animación para el cambio de color del botón al pasar el mouse */
}

.rounded-button:hover {
  background-color: #D41453; /* Cambio de color del botón al pasar el mouse */
}

/* Diseño Responsivo */
@media (max-width: 768px) {
  .main-footer {
    flex-direction: column;
    text-align: center;
    gap: 20px;
  }

  .menu ul {
    flex-direction: column;
    gap: 10px;
  }

  .subscription {
    flex-direction: column;
    gap: 10px;
    align-items: stretch;
  }
}

.success-notification {
  /* Estilos para la notificación de éxito */
  background-color: #4CAF50; /* Color de fondo verde */
  color: white;
  text-align: center;
  padding: 10px;
  border-radius: 5px;
  margin-top: 10px;
  display: inline-block;
  width: 100%;
  animation: fadeOut 3s; /* Animación para desvanecer la notificación */
}

@keyframes fadeOut {
  0% {
    opacity: 1;
  }
  100% {
    opacity: 0;
  }
}
</style>

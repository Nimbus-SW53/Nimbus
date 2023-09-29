<template>
  <header class="main-header" style="background-color: #FFFFFF;">
    <div class="logo">
      <img src="nimbus-logo.jpg" alt="Logo" class="small-logo"> <!-- Cambia la clase a "large-logo" -->
      <h1 style="color: #E61C5D;">Nimbus</h1>
    </div>
    <nav class="nav-links">
      <ul>
        <li><router-link to="/" class="nav-link">Inicio</router-link></li>
        <!-- Enlace a InfoPage -->
        <li><router-link to="/infopage" class="nav-link">Conócenos</router-link></li>
        <!-- Enlace a ServicePage -->
        <li><router-link to="/servicepage" class="nav-link">Servicios</router-link></li>
      </ul>
    </nav>
    <div class="actions">
      <button class="rounded-button" style="background-color: #E61C5D; color: white;" @click="toggleLoginBox">Login</button>
      <button class="rounded-button" style="background-color: #E61C5D; color: white;" @click="toggleRegisterBox">Register</button>
    </div>
    <!-- Recuadro de Login con Transición -->
    <transition name="fade">
      <div v-if="showLoginBox" class="login-box">
        <button class="close-button" @click="closeLoginBox">×</button> <!-- Botón "X" para cerrar -->
        <h2>Login</h2>
        <input type="text" placeholder="Correo" class="login-input">
        <input type="password" placeholder="Contraseña" class="login-input">
        <button class="login-button" @click="login">Ir</button> <!-- Botón "Ir" para iniciar sesión -->
      </div>
    </transition>
    <!-- Recuadro de Registro con Transición -->
    <transition name="fade">
      <div v-if="showRegisterBox" class="login-box">
        <button class="close-button" @click="closeRegisterBox">×</button> <!-- Botón "X" para cerrar -->
        <h2>Register</h2>
        <input type="text" placeholder="Nombre de usuario" class="login-input" v-model="username">
        <input type="email" placeholder="Correo" class="login-input" v-model="email">
        <input type="password" placeholder="Contraseña" class="login-input" v-model="password">
        <input type="password" placeholder="Confirmar contraseña" class="login-input" v-model="confirmPassword">
        <button class="login-button" @click="register">Register</button> <!-- Botón "Register" para registrarse -->
      </div>
    </transition>
    <!-- Notificación de Registro Exitoso -->
    <div v-if="showRegistrationSuccess" class="success-notification">
      Registro exitoso. ¡Bienvenido, {{ username }}!
    </div>
  </header>
</template>

<script>
export default {
  data() {
    return {
      linkColor: null,
      showLoginBox: false, // Variable para controlar la visibilidad del recuadro de login
      showRegisterBox: false, // Variable para controlar la visibilidad del recuadro de registro
      username: '',
      email: '',
      password: '',
      confirmPassword: '',
      showRegistrationSuccess: false, // Variable para mostrar la notificación de registro exitoso
    };
  },
  methods: {
    toggleLoginBox() {
      this.showLoginBox = !this.showLoginBox; // Cambia la visibilidad del cuadro de login al hacer clic en "Login"
      // Asegúrate de ocultar el cuadro de registro si estaba abierto
      if (this.showRegisterBox) {
        this.showRegisterBox = false;
      }
    },
    toggleRegisterBox() {
      this.showRegisterBox = !this.showRegisterBox; // Cambia la visibilidad del cuadro de registro al hacer clic en "Register"
      // Asegúrate de ocultar el cuadro de login si estaba abierto
      if (this.showLoginBox) {
        this.showLoginBox = false;
      }
    },
    closeLoginBox() {
      this.showLoginBox = false; // Cierra el cuadro de login al hacer clic en la "X"
    },
    closeRegisterBox() {
      this.showRegisterBox = false; // Cierra el cuadro de registro al hacer clic en la "X"
    },
    login() {
      this.$router.push({ path: '/user' });
    },
    register() {
      // Verificar si se completaron todos los campos y si las contraseñas coinciden
      if (this.username && this.email && this.password && this.confirmPassword && this.password === this.confirmPassword) {
        // Registro exitoso, mostrar notificación
        this.showRegistrationSuccess = true;

        // Limpia los campos después del registro
        this.username = '';
        this.email = '';
        this.password = '';
        this.confirmPassword = '';

        // Cierra el cuadro de registro después de un tiempo (aquí puedes ajustar el tiempo)
        setTimeout(() => {
          this.showRegistrationSuccess = false;
          this.closeRegisterBox();
        }, 3000);
      } else {
        // Mostrar un mensaje de error si no se cumplen los requisitos
        alert('Por favor, complete todos los campos y asegúrese de que las contraseñas coincidan.');
      }
    },
  },
};
</script>

<style scoped>
/* Estilo para el botón "X" */
.close-button {
  position: absolute;
  top: 5px;
  right: 5px;
  background-color: transparent;
  border: none;
  font-size: 1.5em;
  cursor: pointer;
  color: #E61C5D;
  transition: transform 0.3s ease; /* Agregar animación de transformación */
}
.close-button:hover {
  transform: scale(1.2); /* Aumenta ligeramente el tamaño al pasar el mouse por encima */
}

/* Estilos básicos del encabezado */
.main-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 10px;
  background-color: grey;
  flex-wrap: wrap; /* Para manejar la envoltura de elementos en pantallas pequeñas */
}

.logo {
  display: flex;
  align-items: center;
}

.small-logo {
  height: 90px;
  width: 90px;
  margin-right: 1px;
}

.nav-links ul {
  display: flex;
  list-style: none;
  padding: 0;
  margin: 0;
}

.nav-link {
  color: black;
  text-decoration: none;
  padding: 0 15px;
  transition: color 0.3s ease; /* Agregar animación de cambio de color */
}

.nav-link:hover {
  color: #333;  /* Oscurece el color al pasar el ratón */
}

.rounded-button {
  padding: 8px 16px;
  border-radius: 12px;
  background-color: blue;
  color: white;
  transition: background-color 0.3s ease, transform 0.3s ease; /* Agregar animaciones */
  cursor: pointer;
}

.rounded-button:hover {
  background-color: #0056b3; /* Cambia el color al pasar el ratón */
  transform: scale(1.05); /* Aumenta ligeramente el tamaño al pasar el mouse por encima */
}

/* Estilo para el recuadro de login con animación de desvanecimiento */
.fade-enter-active, .fade-leave-active {
  transition: opacity 0.5s;
}
.fade-enter, .fade-leave-to {
  opacity: 0;
}
.login-box {
  background-color: white;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 8px;
  position: absolute;
  top: 50px;
  right: 20px;
  width: 200px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  z-index: 100; /* Para que aparezca por encima del contenido */
  transition: transform 0.3s ease, opacity 0.3s ease; /* Agregar animaciones */
}
.login-box:hover {
  transform: scale(1.05); /* Aumenta ligeramente el tamaño al pasar el mouse por encima */
  opacity: 0.9; /* Reduce la opacidad al pasar el mouse por encima */
}
.login-input {
  width: 100%;
  padding: 8px;
  margin: 8px 0;
  border: 1px solid #ccc;
  border-radius: 4px;
}
.login-button {
  width: 100%;
  padding: 8px;
  background-color: #E61C5D;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.3s ease, transform 0.3s ease; /* Agregar animaciones */
}
.login-button:hover {
  background-color: #9a1234; /* Cambia el color al pasar el ratón */
  transform: scale(1.05); /* Aumenta ligeramente el tamaño al pasar el mouse por encima */
}

/* Estilo para la notificación de registro exitoso */
.success-notification {
  background-color: #4CAF50; /* Color de fondo verde */
  color: white;
  text-align: center;
  padding: 10px;
  border-radius: 5px;
  margin-top: 10px;
  display: inline-block;
  width: 100%;
  animation: fadeOut 3s; /* Animación para desvanecer la notificación */
  color: red; /* Cambia el color del texto a rojo */
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

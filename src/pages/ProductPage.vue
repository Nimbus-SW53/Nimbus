<template>
  <div class="product-page">
    <!-- Encabezado de la página de producto -->
    <div class="product-header">
      <h1>Nombre del Producto</h1>
      <p>Precio: $300.00</p>
      <div class="product-rating">
        <p>Calificación: 4.5/5</p>
        <!-- Aquí puedes agregar componentes de calificación, reseñas, etc. -->
      </div>
    </div>

    <!-- Carrusel de imágenes del producto -->
    <div class="product-images">
      <!-- Puedes utilizar un componente de carrusel o una galería de imágenes aquí -->
      <img src="/Muestra_Product.jpg" alt="Imagen del Producto 1" />
      <img src="/Muestra_Product_2.jpg" alt="Imagen del Producto 2" />
      <img src="/Muestra_Product_3.jpg" alt="Imagen del Producto 2" />
      <!-- Agrega más imágenes según sea necesario -->
    </div>

    <!-- Descripción del producto -->
    <div class="product-description">
      <h2>Descripción del Producto</h2>
      <p>
        Nuestro innovador software para oficinas está diseñado para revolucionar la forma en que
        gestionas tu entorno de trabajo. Con una amplia gama de características y herramientas, este software es
        la solución perfecta para mejorar la productividad y la eficiencia en tu oficina.
      </p>
    </div>

    <!-- Reseñas de Usuarios -->
    <div class="user-reviews">
      <h2>Reseñas de Usuarios</h2>
      <ul>
        <li>
          <div class="user-review">
            <div class="user-avatar">
              <img src="/Usuario_1.jpg">
            </div>
            <div class="user-details">
              <p>Juan Pablo</p>
              <p>Calificación: 4/5</p>
              <p>Excelente producto, muy útil para nuestra oficina.</p>
            </div>
          </div>
        </li>
        <li>
          <div class="user-review">
            <div class="user-avatar">
              <img src="/Usuario_2.jpg">
            </div>
            <div class="user-details">
              <p>Roberto Martines</p>
              <p>Calificación: 5/5</p>
              <p>Increíble software, definitivamente lo recomiendo.</p>
            </div>
          </div>
        </li>
        <!-- Agrega más reseñas con imágenes según sea necesario -->
      </ul>
    </div>

    <!-- Botón de compra o agregar al carrito -->
    <div class="product-actions">
      <button @click="addToCart" class="buy-button">Comprar</button>
      <!-- Puedes personalizar el botón y agregar lógica de compra aquí -->
    </div>

    <!-- Notificación de producto agregado al carrito -->
    <div v-if="showNotification" class="notification">
      <p>Producto agregado al carrito</p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'ProductPage',
  data() {
    return {
      showNotification: false, // Controla la visibilidad de la notificación
      cart: [], // Representa el carrito de compras
    };
  },
  methods: {
    addToCart() {
      // Simulamos la adición de este producto al carrito
      const product = {
        name: 'Nombre del Producto',
        price: 300.00,
      };

      // Agregamos el producto al carrito
      this.cart.push(product);

      // Mostramos la notificación
      this.showNotification = true;

      // Ocultamos la notificación después de unos segundos
      setTimeout(() => {
        this.showNotification = false;
      }, 3000); // Cambia el valor 3000 según la duración que desees para la notificación (en milisegundos).
    }
  }
};
</script>



<style scoped>
.product-page {
  max-width: 800px;
  margin: 0 auto;
  padding: 20px;
  background-color: #f9f9f9;
  border-radius: 8px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.product-header {
  text-align: center;
}

.product-header h1 {
  font-size: 32px;
  color: #E61C5D;
  margin-bottom: 20px;
}

.product-header p {
  font-size: 20px;
  color: #333;
}

.product-rating {
  font-size: 24px;
  color: #FFD700; /* Color dorado para la calificación */
  margin-top: 10px;
}

.product-images {
  margin-top: 20px;
  display: flex;
  justify-content: center;
  gap: 20px;
  overflow-x: scroll; /* Cambio a desplazamiento horizontal */
}

.product-images img {
  max-width: 300px; /* Aumenta el tamaño máximo de las imágenes */
  height: auto;
  border-radius: 12px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.product-description {
  margin-top: 20px;
}

.product-description h2 {
  font-size: 28px;
  color: #E61C5D;
  margin-bottom: 15px; /* Mayor espacio inferior */
}

.product-description p {
  font-size: 18px;
  color: #333;
  line-height: 1.6; /* Mayor espacio entre líneas */
}

.user-reviews {
  margin-top: 20px;
}

.user-reviews h2 {
  font-size: 28px;
  color: #E61C5D;
  margin-bottom: 15px; /* Mayor espacio inferior */
}

.user-reviews ul {
  list-style: none;
  padding: 0;
}

.user-reviews ul li {
  margin-bottom: 30px; /* Mayor espacio inferior */
  padding: 15px; /* Mayor espacio interior */
  border: 2px solid #E61C5D; /* Borde resaltado */
  border-radius: 12px;
  background-color: #fff;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  transition: transform 0.3s ease; /* Animación de transformación */
}

.user-reviews ul li:hover {
  transform: scale(1.02); /* Resaltado al pasar el mouse */
}

.user-reviews ul li p {
  margin: 10px 0; /* Mayor espacio vertical */
  color: #555; /* Color de texto ligeramente más oscuro */
}

.buy-button {
  background-color: #E61C5D;
  color: white;
  border: none;
  border-radius: 4px;
  padding: 15px 30px; /* Mayor espacio interior */
  font-size: 24px;
  cursor: pointer;
  transition: background-color 0.3s ease-in-out;
  margin-top: 20px;
}

.buy-button:hover {
  background-color: #D41453;
}

.notification {
  background-color: #28a745;
  color: white;
  text-align: center;
  padding: 10px;
  border-radius: 4px;
  margin-top: 20px;
  font-size: 20px; /* Tamaño de fuente ligeramente más grande */
}
</style>


<template>
  <div class="about-us">
    <h1 class="about-us-title">About Us</h1>
    <p class="about-us-description">
      Bienvenidos a Stratusphere. Somos un equipo apasionado de profesionales dedicados a proporcionar soluciones innovadoras en comunicación estratégica. Nuestra misión es ayudar a nuestros clientes a alcanzar sus objetivos a través de estrategias de comunicación efectivas y creativas.
    </p>

    <!-- Componente Team para mostrar el equipo -->
    <Team />

    <p class="about-us-description">
      En Stratusphere, valoramos la creatividad, la colaboración y la excelencia en nuestro trabajo. Estamos comprometidos con la satisfacción de nuestros clientes y nos esforzamos por superar sus expectativas en cada proyecto.
    </p>
  </div>
</template>

<script>
// Importa el componente Team
import Team from '../components/TeamComponent.vue';

export default {
  name: 'AboutUs',
  components: {
    // Registra el componente Team para su uso en la plantilla
    Team,
  },
};
</script>


<style scoped>
.about-us {
  text-align: center;
}

.about-us-title {
  font-size: 24px;
  margin-bottom: 20px;
}

.about-us-description {
  font-size: 16px;
  margin-bottom: 20px;
}
</style>
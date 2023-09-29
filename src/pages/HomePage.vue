<template>
  <div class="home-page">
    <Card />
    <Proovedor />
    <UserPage /> <!-- Cambia la importación a UserPage -->
  </div>
</template>

<script>
import Card from '../components/CardComponent.vue';
import Proovedor from '../components/ProviderComponent.vue';
import UserPage from '../components/UserComponent.vue'; // Cambia la importación a UserPage

export default {
  components: {
    Card,
    Proovedor,
    UserPage, // Cambia la importación a UserPage
  },
};
</script>

<style scoped>
.home-page {
  padding: 20px;
  text-align: center;
}
</style>
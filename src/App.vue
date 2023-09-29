<template>
  <div id="app">
    <Header />
    <router-view></router-view> <!-- Aquí se mostrarán las páginas HomePage.vue o ServicePage.vue -->
    <Footer />
  </div>
</template>

<script>
import Header from './header/HeaderComponent.vue';
import Footer from './footer/FooterComponent.vue';

export default {
  components: {
    Header,
    Footer,
  },
};
</script>

<style>
#app {
  font-family: Arial, sans-serif;
  text-align: center;
  background-color: #ededed;
  padding: 20px;
}
</style>

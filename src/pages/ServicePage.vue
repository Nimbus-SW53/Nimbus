<template>
  <div class="service-page">
    <Products />
  </div>
</template>

<script>
import Products from '../components/ProductsComponent.vue';

export default {
  name: 'ServicePage',
  components: {
    Products
  }
};
</script>

<style scoped>
.service-page {
  padding: 20px;
}
</style>
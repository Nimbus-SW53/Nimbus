<template>
  <div class="container-category">

    <Tutorial name=" Parte-1" />

    <Tutorial name=" Parte-2" />

    <Tutorial name=" Parte-3" />


  </div>
</template>

<script>

import Tutorial from "@/components/Tutorial.vue";
export default {

  name: "category",

  components: {Tutorial}

}
</script>

<style scoped>

.container-category{

  display: flex;

  flex-direction: column;

  padding: 6px;

  background-color: bisque;

  margin: 6px;

}

</style>



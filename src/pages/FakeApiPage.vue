<template>
  <div>
    <h1>Data Base Company</h1>
    <div v-if="dataLoaded">
      <!-- Mostrar los datos del archivo JSON aquí -->
      <ul>
        <li v-for="item in jsonData" :key="item.id">
          <h2>{{ item.name }}</h2>
          <p>{{ item.description }}</p>
        </li>
      </ul>
    </div>
    <div v-else>
      <p>Loading data...</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      jsonData: [], // Almacena los datos del JSON
      dataLoaded: false, // Variable para verificar si los datos se han cargado
    };
  },
  mounted() {
    // Cargar datos desde fakeapi.json ubicado en la carpeta "public"
    fetch('/fakeapi.json')
        .then(response => {
          if (!response.ok) {
            throw new Error('Network response was not ok');
          }
          return response.json();
        })
        .then(data => {
          this.jsonData = data; // Almacena los datos en jsonData
          this.dataLoaded = true; // Indica que los datos se han cargado
        })
        .catch(error => {
          console.error('Error loading data', error);
        });
  },
};
</script>


<style scoped>

h1 {
  font-size: 24px;
  color: red; /* Título en rojo */
  margin-bottom: 10px;
}
</style>

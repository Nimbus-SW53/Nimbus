<template>

  <h1>Nimbus </h1>

  <div class="container">
    {{name}}
  </div>

  <div class="Avance">
    <h1>Realizar un Pedido</h1>
    <button @click ="realizarPedido">Hacer tu Pedido</button>
  </div>


  <div id="nombreDiv">
    <!-- Aquí aparecerá el nombre ingresado -->
  </div>
  <input type="text" id="nombreInput" placeholder="Escribe un nombre">
</template>

<script >
export default
{
  props:['name'],
  name:"Tutorial",

  methods: {
    realizarPedido() {
      // Método inventado para simular la acción de hacer un pedido
      const numeroPedido = Math.floor(Math.random() * 1000); // Genera un número aleatorio para el pedido
      alert(`Pedido número ${numeroPedido} ha sido realizado exitosamente`);
    }
  }
}
</script>


<style scoped>

h1
{
  color: #181818;
  margin-top:auto ;
  font-size: xx-large;
  text-align: center;
  justify-content: center;
}

.container {
  margin: 2px;
  background-color:olive;
  padding: 6px;
  font-size:xxx-large;
  color: #181818;
}

.Avance h1 {
  color: #181818;
}
</style>
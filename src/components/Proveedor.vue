<script setup>

</script>

<template>
<div class ="container">
  <label for = "proveedor">Elige un proveedor </label>
  <select id="proveedor" name = "proveedor">
    <option value = "Agendar Cita">NetQuest </option>
    <option value = "Agendar Cita">DigitalTech </option>
    <option value = "Agendar Cita">DigitalSolutions </option>

  </select>
</div>
</template>

<script>
export default {
  props:['name'],
  name:"Providers"
}
</script>




<style scoped>
.container{
  font-family: "Public Sans";
  margin: 5px;
  padding: 10px;
  font-size: 50px;
  text-align:left;
  background-color: #4d5c94;


}

</style>
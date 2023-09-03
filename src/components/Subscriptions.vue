<template>
  <div class="container">
    <label for="plan">Elige un plan:</label>
    <select id="plan" name="plan">
      <option value="Free">Plan Free - $0.0/mes</option>
      <option value="Basic">Plan Basic - $20/mes</option>
      <option value="Premium">Plan Premium - $50/mes</option>
      <option value="Enterprise">Plan Enterprise - $100/mes</option>
    </select>
  </div>

</template>

<script>
  export default {
    props:['name'],
    name:"Subscriptions"
  }
</script>

<style scoped>
  .container{
    margin: 2px;
    padding: 6px;
    font-size: 50px;
    text-align: left;
    background-color: #9c9cff;
  }
</style>

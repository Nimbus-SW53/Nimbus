<script setup>
import Tutorial from "@/components/Tutorial.vue";
import Category from "@/components/categoria.vue";
import Subscriptions from "@/components/Subscriptions.vue";
import Proveedor from "@/components/Proveedor.vue";
</script>

<template>

<body>
<header>
  <a href="#"  class="logo">Christian Z</a>

  <div class="bx bx-menu" id="menu-icon"></div>
  <nav class="navigation">
    <a href="#home">Home</a>
    <a href="#sobre-mi">Sobre mi</a>
    <a href="#skills">Skills</a>
    <a href="#contacto">Contacto</a>
    <button class="btn-login">Login</button>
  </nav>


</header>

</body>

  <category />
  <subscriptions/>
  <Proveedor/>
</template>

<style>

header {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  padding: 2rem 9%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  background: aquamarine;
  z-index: 99;
}

header .sticky{

  border-bottom: .1rem solid rgba(0, 0, 0, .2);
}

.logo
{
  font-size: 2.5rem;
  font-weight: 600;
  color:black;
  cursor: default;
  user-select: none;

}
.navigation .menu{

  font-size: 1.8rem;
  cursor: pointer;
  margin-left:25px ;
  border-radius: 3px;
  background: #fff;

}





.navigation a {
  position: relative;
  font-size: 1.7rem;
  color: black;
  text-decoration: none;
  font-weight: 500;
  margin-left: 40px;
  transition: .3s;
}

.navigation a::after
{
  content: '';
  position: absolute;
  left: 0;
  bottom: -6px;
  width: 100%;
  height: 3px;
  background: black;
  border-radius: 5px;
  transform: scaleX(0);
  transition: .2s;
}

.navigation a:hover::after{
  transform-origin:left;
  transform: scaleX(1);
}


.navigation .btn-login
{
  width: 130px;
  height: 50px;
  background: transparent;
  border: 2px solid black;
  outline: none;
  border-radius: 6px;
  cursor: pointer;
  font-size: 1.1em;
  color:black;
  font-weight: 500;
  margin-left: 40px;
  transition: .5s;
}



.navigation .btn-login:hover
{
  background: gray;
  color: blue;

}

body
{
  background-color: blue;
}

</style>

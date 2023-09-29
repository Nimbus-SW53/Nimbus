<template>
  <div class="team">
    <h1 class="team-title">Stratusphere Team</h1>
    <div class="team-members">
      <div
          class="team-member"
          v-for="(member, index) in teamMembers"
          :key="index"
          @mouseover="animateIn(member)"
          @mouseleave="animateOut(member)"
      >
        <transition name="fade">
          <img
              :src="member.image"
              alt="Team Member"
              class="team-member-image"
              :class="{ 'hovered': member.hovered }"
          />
        </transition>
        <div class="team-member-info">
          <p class="team-member-name">
            {{ member.name }}
          </p>
          <p class="team-member-code">
            {{ member.code }}
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'TeamComponent',
  data() {
    return {
      teamMembers: [
        {
          name: 'Fabio Ernesto Horna Silva',
          code: '(u202020229)',
          image: '/Dueño_Fabio.jpg.jpeg',
          hovered: false,
        },
        {
          name: 'Christian Jose Zeta Valenzuela',
          code: '(u202011688)',
          image: '/Dueño_Christian.jpg.jpg',
          hovered: false,
        },
        {
          name: 'Claudio Jesús Moreno Rosales',
          code: '(u20191e800)',
          image: 'URL de la imagen de Fabio',
          hovered: false,
        },
        {
          name: 'Farid Hinostroza Mavila',
          code: '(u202014468)',
          image: '/Dueño_Farid.jpg.jpg',
          hovered: false,
        },
        {
          name: 'Diego Alejandro Portales Ortiz',
          code: '(u202123501)',
          image: '/Dueño_Diego.jpg.jpg',
          hovered: false,
        },
      ],
    };
  },
  methods: {
    animateIn(member) {
      member.hovered = true;
    },
    animateOut(member) {
      member.hovered = false;
    },
  },
};
</script>



<style scoped>
.team {
  text-align: center;
  padding: 20px;
}

.team-title {
  font-size: 32px;
  margin-bottom: 20px;
  color: #E61C5D; /* Color del título */
}

.team-members {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  gap: 20px;
}

.team-member {
  text-align: center;
  background-color: #fff;
  border-radius: 12px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  width: calc(33.33% - 20px);
  position: relative; /* Agregamos posicionamiento relativo */
  cursor: pointer; /* Cambiamos el cursor al pasar el mouse */
}

/* Media query para pantallas medianas */
@media (max-width: 768px) {
  .team-member {
    width: calc(50% - 20px);
  }
}

/* Media query para pantallas pequeñas */
@media (max-width: 480px) {
  .team-member {
    width: 100%;
  }
}

.team-member-image {
  width: 100%;
  height: 600px;
  object-fit: cover;
  border-radius: 12px 12px 0 0;
  transform-origin: center bottom;
  transition: transform 0.3s ease;
}

.team-member-info {
  padding: 15px;
  text-align: center;
  opacity: 0; /* Inicialmente ocultamos el texto */
  transform: translateY(20px); /* También lo desplazamos hacia abajo */
  transition: transform 0.3s ease, opacity 0.3s ease;
  position: absolute; /* Cambiamos a posición absoluta */
  bottom: 0; /* Alineamos el cuadro al fondo del contenedor */
  left: 0; /* Alineamos el cuadro a la izquierda del contenedor */
  right: 0; /* Alineamos el cuadro a la derecha del contenedor */
  background-color: rgba(0, 0, 0, 0.8); /* Fondo semitransparente */
}

.team-member-name {
  font-size: 24px;
  font-weight: bold;
  color: #fff; /* Color del nombre del miembro */
  margin-top: 10px;
}

.team-member-code {
  font-size: 18px;
  color: #E61C5D; /* Color del código del miembro */
  margin-top: 5px;
}

.team-member:hover .team-member-image {
  transform: scale(1.1) translateY(-10px);
  opacity: 0.9;
}

.team-member:hover .team-member-info {
  opacity: 1;
  transform: translateY(0);
}
</style>




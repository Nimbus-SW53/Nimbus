<template>
  <div class="faq">
    <h2>Preguntas Frecuentes</h2>
    <div class="faq-item" v-for="(item, index) in faqItems" :key="index">
      <h3 @click="toggleAnswer(index)" @mouseover="highlightQuestion(index)" @mouseleave="unhighlightQuestion(index)">
        {{ item.question }}
      </h3>
      <p v-if="item.showAnswer">{{ item.answer }}</p>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      faqItems: [
        {
          question: "¿Qué proveedores ofrecen servicios de nube?",
          answer: "Ofrecemos servicios de nube de proveedores como Microsoft Azure, Amazon AWS y Google Cloud.",
          showAnswer: false,
          highlighted: false, // Agregamos una propiedad para el resaltado
        },
        {
          question: "¿Cómo puedo solicitar una cotización?",
          answer: "Puede solicitar una cotización a través de nuestro formulario en línea o poniéndose en contacto con nuestro equipo de ventas.",
          showAnswer: false,
          highlighted: false,
        },
        {
          question: "¿Cuáles son los plazos de pago?",
          answer: "Los plazos de pago varían según el contrato y pueden incluir opciones mensuales, trimestrales o anuales.",
          showAnswer: false,
          highlighted: false,
        },
        {
          question: "¿Qué servicios de soporte ofrecen?",
          answer: "Ofrecemos servicios de soporte técnico 24/7 para resolver cualquier problema o consulta que pueda tener.",
          showAnswer: false,
          highlighted: false,
        },
        {
          question: "¿Cómo puedo cambiar mi plan de servicio?",
          answer: "Puede cambiar su plan de servicio poniéndose en contacto con nuestro equipo de soporte o a través de su cuenta en línea.",
          showAnswer: false,
          highlighted: false,
        },
      ]
    };
  },
  methods: {
    toggleAnswer(index) {
      this.faqItems[index].showAnswer = !this.faqItems[index].showAnswer;
    },
    highlightQuestion(index) {
      this.faqItems[index].highlighted = true;
    },
    unhighlightQuestion(index) {
      this.faqItems[index].highlighted = false;
    }
  }
};
</script>

<style scoped>
.faq {
  max-width: 800px;
  margin: 0 auto;
}

.faq h2 {
  font-size: 28px;
  margin-bottom: 20px;
  color: #E61C5D;
}

.faq-item {
  margin-bottom: 30px; /* Aumenta el espacio entre elementos */
  border-bottom: 1px solid #ccc; /* Agrega una línea divisoria */
  padding-bottom: 20px; /* Espacio adicional en la parte inferior */
}

.faq-item h3 {
  font-size: 24px; /* Aumenta el tamaño de las preguntas */
  margin-bottom: 10px;
  color: #333; /* Cambia el color del texto de las preguntas */
  cursor: pointer; /* Cambia el cursor al pasar sobre la pregunta */
}

.faq-item h3:hover {
  background-color: #f2dcdc; /* Cambia el color de fondo al pasar el mouse sobre la pregunta */
}

.faq-item p {
  font-size: 20px; /* Aumenta el tamaño de las respuestas */
  color: #444; /* Cambia el color del texto de las respuestas */
}
</style>


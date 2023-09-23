Feature: Visualización de testimonios

  Como visitante del segmento clientes o proveedores, 
  quiero ver ejemplos de casos de éxito 
  para comprender cómo el Nimbus ha beneficiado a otros


#-----------------------------------------------------------------------------
  Scenario: Usuario visualiza los testimonios que tiene la aplicación
    Given que el usuario se encuentra en la pantalla de inicio
    When se desplace hacia abajo por la página
    And llegue a la sección de testimonios de los clientes
    Then visualizará los testimonios de los clientes que han confiado en nuestra plataforma.

Feature: Visualización de los beneficios de la aplicación

  Como visitante del segmento clientes o proveedores 
  quiero acceder a una descripción de los beneficios de la aplicación 
  para comprobar si la herramienta me ayudará en el futuro


#-----------------------------------------------------------------------------
  Scenario: Usuario lee sobre los beneficios de nuestra aplicación
    Given que el usuario se encuentra en la pantalla de inicio
    When se desplace hacia abajo por la página
    Then visualiza los servicios/beneficios de la aplicación.
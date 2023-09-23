Feature: Visualización de la lista de Proveedores

  Como visitante del segmento clientes o proveedores 
  quiero visualizar la lista de proveedores los cuales colaboran con la aplicación
  para tenerlo en cuenta


#-----------------------------------------------------------------------------
  Scenario: Visitante accede a la lista de proveedores cloud
    Given que el usuario se encuentra en la pantalla de inicio
    When se desplace hacia abajo por la página
    And pasa la sección de beneficios
    Then visualizará los logos de los proveedores con los que trabajamos
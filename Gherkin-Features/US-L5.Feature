Feature: Visualización de precios o planes de suscripción

  Como visitante del segmento clientes o proveedores 
  quiero visualizar los planes de suscripción 
  para comprobar si se adecuan a mi presupuesto.


#-----------------------------------------------------------------------------
  Scenario: Usuario visualiza los tipos de planes que tiene la aplicación
    Given que el usuario se encuentra en la pantalla de inicio
    When se desplace hacia abajo por la página
    Then visualizará los cards que contienen los planes.


#-----------------------------------------------------------------------------
  Scenario: Usuario visualiza la descripción de los planes que tiene la aplicación
    Given que el usuario da clic sobre uno de ellos
    Then se desplegará la descripción de ese plan.

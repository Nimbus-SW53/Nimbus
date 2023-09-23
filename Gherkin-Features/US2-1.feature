Feature: Calificar Producto

  Como usuario, 
  quiero poder calificar un producto 
  para indicar mi nivel de satisfacción.

#-----------------------------------------------------------------------------
  Scenario Outline: Calificar un producto específico
    Given el usuario ha iniciado sesión
    And se encuentra en la página de un producto
    When haga click en "<Calificar>" 
    And seleccione una calificación 
    Then  la calificación se registrará.
  
  | Producto     | Calificar  |
  | TechProduct | 5.0        |
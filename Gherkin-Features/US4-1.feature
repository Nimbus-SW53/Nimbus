Feature: Visualizar Reseñas	

  Como usuario, 
  quiero poder visualizar reseñas de un software específico 
  para informarme mejor sobre su utilidad.

#-----------------------------------------------------------------------------
  Scenario: Usuario quiere visualizar reseñas de un software específico
    Given el usuario se encuentra en la página de un software
    When haga click en el botón "<Ver Reseñas>"
    And aparezcan las reseñas
    Then el usuario podrá leerlas.

    | Productos   |          Ver reseñas              |
    | TechProduct | Es el mejor software que he usado |   


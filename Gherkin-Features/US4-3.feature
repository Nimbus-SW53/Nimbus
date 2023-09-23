Feature: Valorar Reseñas		

  Como usuario, 
  quiero poder dar una puntuación a las reseñas 
  para valorar su utilidad.	

#-----------------------------------------------------------------------------
  Scenario: Usuario quiere valorar las reseñas de un producto
    Given el usuario se encuentra en la página de un software 
    And esté leyendo reseñas    
    When haga click en los botones de "<valoración>"
    Then la valoración se registrará.

    | Productos   |               Reseñas                      | Valoración |
    | TechProduct | Es un buen software, pero le falta mejorar | Dislike    |  


Feature: Escribir Reseñas	

  Como usuario, 
  quiero poder escribir una reseña 
  para un software que haya utilizado.	

#-----------------------------------------------------------------------------
  Scenario: Usuario quiere redactar reseñas de un producto software que ha usado
    Given el usuario se encuentra en la página de un software
    When haga click en el botón "<Escribir Reseña>"
    And termine de escribir
    Then la reseña será publicada.

    | Productos   |          Escribir Reseña                   |
    | TechProduct | Es un buen software, pero le falta mejorar |   


Feature: Ver Calificaciones

    Como usuario, 
    quiero poder ver las calificaciones de un producto
    para ayudar en mi elección.
#-----------------------------------------------------------------------------
  Scenario Outline: Visualizar calificaciones de un producto
    Given el usuario se encuentra en la página de un producto
    When haga click en "<Ver Calificaciones>"
    And aparezcan las calificaciones 
    Then el usuario podrá verlas.
  
    | Producto    | Ver calificaciones |
    | TechProduct | 5.0                |
    | TechProduct | 3.5                |
    | TechProduct | 4.2                |

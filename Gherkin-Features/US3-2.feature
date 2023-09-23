Feature: Comparar Productos	

  Como usuario, 
  quiero poder comparar diferentes productos 
  para tomar una decisión informada.

#-----------------------------------------------------------------------------
  Scenario: Usuario quiere comparar diferentes productos
    Given el usuario se encuentra en la página de resultados
    And seleccione varios productos
    When haga click en "<Comparar>" 
    And  se realice la comparación
    Then el usuario podrá ver una tabla comparativa.

    | Productos   | Seleccionar |
    | TechProduct |     Sí      |   
    | VenueSoft   |     Sí      |
    | PrimeSoft   |     Sí      |

    | Comparativa de productos |          |
    | TechProduct | VenueSoft | PrimeSoft |
    | details    | details    | details   |

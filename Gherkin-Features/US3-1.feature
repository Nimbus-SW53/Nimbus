Feature: Utilizar Filtros	

  Como usuario, 
  quiero poder utilizar diferentes filtros 
  para encontrar el software que necesito.

#-----------------------------------------------------------------------------
  Scenario: Usuario quiere filtrar productos por precio
    Given el usuario se encuentra en la página principal
    When utilice los filtros de búsqueda 
    And realice una búsqueda
    Then se mostrarán resultados acordes a los filtros.

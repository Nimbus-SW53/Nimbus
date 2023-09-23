Feature: Editar Listado

  Como proveedor, 
  quiero poder editar los detalles de mis productos listados
  para porder visualizar mejor el producto

#-----------------------------------------------------------------------------
  Scenario Outline: Ver detalles de los productos añadidos desde la página web
    Given el proveedor ha iniciado sesión 
    And seleccione un producto de su lista
    When haga click en el botón "<Editar>"
    And actualice los detalles
    Then los cambios se guardarán.
  
  | Editar     | Edición       | Resultado   |
  | Software 1 | Software 1.1 | Software 1.1 |
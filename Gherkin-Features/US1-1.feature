Feature: Listar Productos

  Como proveedor, 
  quiero poder listar mis productos 
  para que sean visibles en la plataforma.

#-----------------------------------------------------------------------------
  Scenario Outline: Ver productos añadidos desde la página web
    Given el proveedor ha iniciado sesión
    And haga click en el botón "<Añadir Producto>"
    When complete los detalles del producto
    Then el producto se listará en la plataforma.
  
  | Añadir Producto  | Resultado         |
  | Software 1      | Software 1 details|  
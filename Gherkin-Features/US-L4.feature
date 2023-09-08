Feature: Visualización responsive

  Como visitante del segmento clientes o proveedores, quiero que la página sea responsive y se adapte a diferentes dispositivos para poder acceder a la información desde cualquier lugar.


#-----------------------------------------------------------------------------
  Scenario: Usuario visualiza la Landing Page de Nimbus desde una computadora.
    Given que el usuario ingresa a la página web estática de Nimbus
    When navegue por la página
    Then visualizará el contenido adaptado a su tamaño de pantalla.


#-----------------------------------------------------------------------------
  Scenario: Usuario visualiza la Landing Page de Nimbus desde su dispositivo móvil.
    Given que el usuario ingresa a la página web estática de Nimbus desde su celular
    When navegue por la página
    Then visualizará el contenido adaptado a su tamaño de pantalla.
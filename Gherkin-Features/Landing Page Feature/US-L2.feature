Feature: Visualización del Call to Action

  Como visitante del segmento clientes o proveedores 
  quiero visualizar en el inicio un botón 
  para poder contactarme con los creadores.


#-----------------------------------------------------------------------------
  Scenario: Usuario accede al formulario de contacto
    Given que el usuario se encuentra en la pantalla de inicio
    When haga clic en el botón "<Contactar>"
    Then será enviada a la sección del formulario de contacto del Landing page.
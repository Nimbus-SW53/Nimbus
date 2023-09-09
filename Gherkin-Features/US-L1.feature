Feature: Cambiar idioma de la web 

  Como visitante del segmento clientes o proveedores 
  quiero poder cambiar el idioma de la página.
  para adaptar la página a mis preferencias de idioma

#-----------------------------------------------------------------------------
  Scenario Outline: Usuario cambia el idioma de la página de Inglés a Español
    Given que el visitante se encuentra en la pantalla principal
    When haga clic en el botón "<Ingles>"
    And selecciona la opción "<Español>"
    Then el sistema cambia los textos de la página a "<Español>"
  

  | Inglés  | mensaje |
  | español | idioma cambiado|

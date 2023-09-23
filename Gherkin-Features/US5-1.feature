Feature: Crear Cuenta		

  Como usuario nuevo, 
  quiero poder crear una cuenta 
  para acceder a todas las funcionalidades de la plataforma.

#-----------------------------------------------------------------------------
  Scenario: Usuario quiere registrarse en Nimbus
    Given el usuario se encuentra en la pantalla de inicio  
    When haga click en el botón "<Crear una cuenta>"
    And rellene los datos solicitados
    And realice un click en el botón "<Registrarse>"
    Then el sistema guardará su información y le direccionará a la página principal de su cuenta.

    |                 Crear Cuenta             | Registrarse |
    | Nombre  | Correo            | Contraseña |             |
    | Melanie | melan13@gmail.com | 12345678   |             |


Feature: Iniciar Sesión		

    Como usuario registrado, 
    quiero poder iniciar sesión 
    para acceder a mi cuenta y a mis preferencias.

#-----------------------------------------------------------------------------
  Scenario: Usuario quiere iniciar sesión en Nimbus
    Given que el usuario se encuentra en la pantalla de inicio
    When haga click en el botón "<Iniciar sesión>"
    And introduzca sus credenciales
    And realice un click en el botón "<Entrar>"
    Then el sistema le permitirá acceder a su cuenta.

    |    Iniciar Sesión    | Entrar |
    | Correo | Contraseña |         |



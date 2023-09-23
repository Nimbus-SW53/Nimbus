Feature: Recuperar Contraseña		

    Como usuario, 
    quiero poder recuperar mi contraseña en caso de olvido 
    para poder acceder a mi cuenta.

#-----------------------------------------------------------------------------
  Scenario: Usuario necesita recuperar su contraseña en caso de olvido
    Given que el usuario se encuentra en la pantalla de inicio
    When haga click en el enlace "<Olvidé mi contraseña>"
    And realice las acciones necesarias
    Then  el sistema le permitirá restablecer su contraseña.

    |            Olvide mi contraseña          |
    | Ingrese correo para recuperar contraseña |
    | melan13@gmail.com                        |

    | Recuperar contraseña |


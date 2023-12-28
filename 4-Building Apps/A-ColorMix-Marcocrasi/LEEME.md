# Selector de Colores

## Lo que Construirás
Una aplicación de selector de colores.

## Lo que Aprenderás
- Cómo conectar la interfaz de tu aplicación con tu código Swift.
- Cómo cambiar la visualización de tu aplicación desde el código Swift.
- Cómo utilizar interruptores, deslizadores y un botón en la interfaz de tu aplicación.

## Vocabulario Clave
- `Acción`: Un método que se activa cuando ocurre un evento específico, como al presionar un botón.
- `CGFloat`: Un tipo de dato en Swift que representa números de punto flotante, comúnmente utilizado para cálculos gráficos.
- `Habilitado, Deshabilitado`: Se refiere a si un elemento de la interfaz de usuario se puede interactuar o no.
- `Outlet`: Una conexión entre un elemento de la interfaz de usuario y el código Swift, permitiendo que el código haga referencia y modifique el elemento.
- `Deslizador`: Un elemento de interfaz de usuario que permite a los usuarios seleccionar un valor de un rango continuo.
- `Interruptor`: Un elemento de interfaz de usuario que alterna entre dos estados, generalmente activado/desactivado.

## Introducción
Cuando desarrollas una aplicación, escribes código Swift y construyes tu interfaz de usuario en un storyboard. Para que ambos trabajen juntos, deben estar conectados con acciones y salidas. En esta lección, aprenderás a conectar el código Swift con las vistas y controles que creas en un storyboard, para que tu código pueda responder a las acciones del usuario. Tu aplicación percibe estas acciones como eventos, información sobre lo que sucedió y cuándo sucedió.

Hay dos tipos de conexiones entre storyboards y código:
- **Outlets**: Conectan variables en tu código con objetos en el storyboard, para que puedas acceder a esos objetos desde tu código y obtener información o realizar cambios en ellos cuando la aplicación está en ejecución.
- **Actions**: Conectan controles como interruptores y botones con métodos en tu código, de modo que al tocar un botón, por ejemplo, se ejecute un método específico.

Tu proyecto consistirá en utilizar outlets y actions para crear una aplicación que genere colores mezclando rojo, verde y azul. Utilizarás el desarrollo incremental para hacer tu trabajo manejable. Te encontraste con el desarrollo incremental en la aplicación BouncyBall, y es igualmente importante en este proyecto más complejo.

- **`Parte uno`**: Aprende a utilizar outlets para conectar objetos en el storyboard con tu código, para que puedas acceder a ellos cuando tu aplicación esté en ejecución.
- **`Parte dos`**: Aprende a conectar acciones desde un interruptor en el storyboard con tu código, de modo que se ejecute un fragmento de código cuando el usuario cambie el interruptor.
- **`Parte tres`**: Crea varios interruptores y utiliza acciones y outlets para mostrar un color según el estado de encendido/apagado de cada interruptor.
- **`Parte cuatro`**: Agrega deslizadores para permitir un control de color más preciso.
- **`Parte cinco`**: Agrega un botón de reinicio para volver a establecer los interruptores y deslizadores a sus valores originales.
- **`Parte seis`**: Mejora la interfaz de usuario para que sea fácil entender el propósito de los interruptores y deslizadores.

# Color Mix

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/88deed20-1e8a-46f2-8577-1b1320802663

Aplicación iOS que permite a los usuarios mezclar colores ajustando interruptores y deslizadores. Este controlador se utiliza para gestionar la vista de la aplicación y la interacción con los elementos de la interfaz de usuario.

La clase **ViewController** hereda de `UIViewController`, la clase base para controladores de vista en iOS. En esta clase, se declaran propiedades para varios elementos de la interfaz de usuario, como una `UIView` llamada `colorView`, tres `UISwitches` (redSwitch, greenSwitch, blueSwitch) y tres `UISliders` (redSlider, greenSlider, blueSlider).

La función **`viewDidLoad()`** se llama automáticamente cuando la vista controlada por este controlador de vista se carga en la memoria. En este método, se configura la apariencia de `colorView` estableciendo un borde, esquinas redondeadas y un color de borde. Luego, se llaman dos métodos, **`updateColor()`** y **`updateControls()`**, para actualizar el color de `colorView` y habilitar/deshabilitar los deslizadores según el estado de los interruptores.

La función **`switchChanged(_:)`** es un método de acción (IBAction) que se llama cuando cambia el valor de cualquiera de los interruptores. Este método llama a **`updateColor()`** y **`updateControls()`** para reflejar cambios en el color y la habilitación de los deslizadores.

**`updateColor()`** es una función que calcula un color basado en los valores de los interruptores y deslizadores. Las intensidades de rojo, verde y azul se establecen según el estado de los interruptores y los valores de los deslizadores. Luego, se crea un objeto **`UIColor`** con estos componentes de color y se establece como el color de fondo de `colorView`.

**`updateControls()`** es una función que habilita o deshabilita los deslizadores según el estado de los interruptores. Si un interruptor está apagado, se deshabilita el deslizador correspondiente.

La función **`sliderChanged(_:)`** es un método de acción que se llama cuando cambia el valor de cualquiera de los deslizadores. Este método llama a **`updateColor()`** para actualizar el color según los nuevos valores de los deslizadores.

**`reset(_:)`** es una función de acción llamada cuando se toca un botón "Reset". Esta función restablece todos los interruptores a la posición de apagado y establece los valores de los deslizadores en 1. Luego, llama a **`updateColor()`** y **`updateControls()`** para reflejar estos cambios.

En resumen, este código controla una vista que permite a los usuarios personalizar la mezcla de colores ajustando interruptores y deslizadores, y proporciona una función de reinicio para volver a la configuración inicial.

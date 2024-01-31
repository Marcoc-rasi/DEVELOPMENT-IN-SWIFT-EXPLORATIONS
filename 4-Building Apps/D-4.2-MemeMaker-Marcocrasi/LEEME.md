# MemeMaker
## Introducción
Vas a crear una aplicación que te permitirá agregar títulos divertidos a una foto. Esta es otra oportunidad para practicar las habilidades de Xcode y Swift que ha aprendido a lo largo de este curso. La aplicación final se verá así

<img width="366" alt="MemeMaker reference image" src="https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/4eab56fe-cfdf-4e09-a5c9-b1bcb191066a">

Al seleccionar cualquiera de los emoji, se cambiará el texto encima y debajo de su imagen, para que puedas mezclar y combinar declaraciones que se adapten a tu estado de ánimo.

# MemeMaker 

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/aabeea93-a129-44cd-b633-e22cc7eaaa15

El código comienza importando el módulo UIKit, que proporciona las clases y funciones necesarias para desarrollar aplicaciones iOS.

A continuación, define la clase `ViewController`, que hereda de `UIViewController`. Esta herencia significa que esta clase actuará como un controlador de vista en la jerarquía de vistas de la aplicación.

Dentro de la clase, se crean varias propiedades y objetos de interfaz de usuario, que están conectados a elementos de interfaz de usuario en el archivo de interfaz de vista correspondiente, probablemente un archivo .xib o .storyboard. Estos elementos incluyen:

- `topSegmentedControl` y `bottomSegmentedControl`: Dos objetos `UISegmentedControl` que permiten al usuario seleccionar opciones para las partes superior e inferior de un meme.

- `topCaptionLabel` y `bottomCaptionLabel`: Dos objetos `UILabel` que mostrarán las leyendas del meme en la parte superior e inferior de la imagen del meme.

Se definen dos arrays, `topChoices` y `bottomChoices`, para almacenar instancias de la estructura `CaptionOption`. Cada array contiene opciones para leyendas de memes junto con emojis relacionados.

El método `viewDidLoad()` es responsable de configurar los elementos de la interfaz de usuario y establecer el texto inicial de los elementos `UILabel` según la selección realizada en el `UISegmentedControl`. También realiza las siguientes acciones:

- Elimina los segmentos anteriores en los controles segmentados mediante `removeAllSegments()`.

- Luego, inserta nuevos segmentos en los controles utilizando la información almacenada en los arrays `topChoices` y `bottomChoices`.

El método `segmentedControlValueChanged(_:)` se activa cuando el usuario cambia la selección en uno de los controles segmentados. Dependiendo de si el control segmentado superior o inferior envía la acción, se llama a `changeLabelChoice` para actualizar la leyenda correspondiente.

Los métodos `dragTopLabel(_:)` y `dragBottomLabel(_:)` permiten arrastrar las etiquetas de leyenda superior e inferior cuando el usuario realiza un gesto de arrastre.

El método `changeLabelChoice(segmentedControl:label:choices:)` actualiza el texto de la etiqueta correspondiente con la leyenda seleccionada del control segmentado.

En resumen, este código es parte de una aplicación creadora de memes que permite a los usuarios seleccionar emojis y leyendas para las partes superior e inferior de una imagen y ver el meme resultante.

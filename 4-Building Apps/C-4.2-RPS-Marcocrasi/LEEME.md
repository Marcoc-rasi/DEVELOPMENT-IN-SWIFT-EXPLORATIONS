# Rock, Paper, Scissors

## Lo que Construirás
Un juego de Piedra, Papel o Tijeras.

## Lo que Aprenderás
- Cómo construir la lógica de un juego utilizando las habilidades que has aprendido hasta ahora en este curso.
- Cómo aplicar el patrón de diseño Modelo-Vista-Controlador (MVC) en tu código.

## Vocabulario Clave
- `Modelo-Vista-Controlador`: Un patrón de diseño que separa una aplicación en tres componentes interconectados: el modelo, la vista y el controlador.
- `Número Aleatorio`: Un número generado por un proceso que no puede preverse y se utiliza típicamente en juegos para la imprevisibilidad.

 
# Introducción
Recuerda tus primeras lecciones de codificación en este curso. ¡Has recorrido un largo camino desde contar animales en una feria de mascotas!
En lecciones anteriores, el enfoque ha sido aprender cosas nuevas: temas de programación en Swift y temas de construcción de aplicaciones en Xcode e Interface Builder. Aquí, te enfocarás en utilizar lo que has aprendido para crear una aplicación desde cero. Las instrucciones que seguirás son menos detalladas, lo que te desafiará a recordar todas tus habilidades y conocimientos.

El juego que estás construyendo es Piedra, Papel o Tijeras. Si no has oído hablar del juego, funciona así:

- Dos jugadores se enfrentan.
- Al contar hasta tres, ambos hacen un gesto, al mismo tiempo y con una mano. El gesto puede ser una piedra (puño cerrado), papel (palma abierta) o tijeras (dos dedos, abiertos como la señal de la victoria).
- Cada gesto puede vencer a uno (y solo uno) de los otros:
  - La piedra aplasta las tijeras.
  - Las tijeras cortan el papel.
  - El papel cubre la piedra.
  
Si ambos jugadores eligen el mismo gesto, el juego es un empate.

En el juego que construirás, la aplicación misma será tu oponente, por lo que no necesitarás contar hasta tres. Para jugar, tocarás uno de los tres gestos: Piedra, Papel o Tijeras (primera imagen).
La aplicación elegirá aleatoriamente un gesto en respuesta y mostrará los resultados (imagen debajo).

<img width="404" alt="RPS reference image" src="https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/9494eee4-e72d-4cc0-bea4-3b899126b348">

En el juego que construirás, la aplicación misma será tu oponente, por lo que no necesitarás contar hasta tres. Para jugar, tocarás uno de los tres gestos: Piedra, Papel o Tijeras (primera imagen).
La aplicación elegirá aleatoriamente un gesto en respuesta y mostrará los resultados (segunda imagen).

Utilizarás el patrón de diseño Modelo-Vista-Controlador (MVC) para crear esta aplicación. El propósito de MVC es separar las partes de tu aplicación, asignando responsabilidades claramente definidas a cada parte. De esta manera, mantendrás tu código fácil de leer y entender. MVC es el patrón predeterminado utilizado nativamente en el SDK de iOS, Cocoa Touch; y, en consecuencia, muchos (o la mayoría) de los desarrolladores de iOS siguen este patrón.
Recuerda que ya has visto el valor de la separación entre diferentes componentes de la aplicación en QuestionBot y ChatBot. Trabajaste en un cerebro y en un origen de datos que tenían un conjunto enfocado de tareas que realizaban, lo que te permitió crear una aplicación funcional sin tocar el resto del proyecto. También trabajaste en la conexión de elementos de la interfaz de usuario, como interruptores, a tu código de controlador en la aplicación ColorMix.
Primero construirás la lógica del juego (el modelo), seguido por la interfaz de usuario (la vista). Luego, unirás ambas partes con el controlador. A estas alturas, ya has aprendido todo lo que necesitas para construir la aplicación por ti mismo. Así que no recibirás una guía paso a paso, solo un esquema de lo que debes hacer para que el juego funcione.

# RPS

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/0b603672-08f1-4c97-adea-3b0266f44cd7

Implementación de una aplicación de juego **"Piedra, Papel o Tijeras"** en Swift, utilizando la interfaz de usuario UIKit para iOS. Esta aplicación consta de tres partes principales: el archivo `GameState.swift`, el archivo `Sign.swift` y el archivo `ViewController.swift`.

**GameState.swift** define una enumeración llamada `GameState`, que representa los posibles estados del juego. Estos estados son **"Inicio"** (comienzo), **"Victoria"** (ganancia), **"Derrota"** (pérdida) y **"Empate"** (empate). Cada estado tiene una propiedad `stateDescription` que proporciona una descripción legible por humanos.

**Sign.swift** contiene la definición de la enumeración `Sign`, que representa las tres opciones del juego: **"Tijeras,"** **"Piedra"** y **"Papel"**. Cada opción tiene un **emoji** correspondiente y un método `gameResult` que determina el resultado del juego según las elecciones del jugador y del oponente.

En **ViewController.swift**, encontrarás la clase `ViewController`, que maneja la interfaz de usuario de la aplicación. Los elementos de la interfaz, como etiquetas y botones, están conectados a propiedades dentro de la clase. La función `viewDidLoad` inicializa la interfaz de usuario cuando se carga la vista, y los métodos de manejo de eventos de botones permiten al jugador hacer su elección y reiniciar el juego.

La función `updateUI` actualiza la interfaz de usuario según el estado del juego, cambiando el color de fondo y mostrando/ocultando botones según sea necesario. Además, muestra el estado actual del juego y el emoji del oponente.

El método `play` representa la lógica del juego. Toma la elección del jugador, genera una elección aleatoria para el oponente y calcula el resultado del juego utilizando el método `gameResult`. Luego, actualiza la interfaz de usuario con el resultado y muestra el emoji del oponente. Finalmente, deshabilita los botones de elección del jugador y muestra el botón "Jugar de nuevo" para permitir al jugador reiniciar el juego.

Colectivamente, este código proporciona una experiencia completa de juego para "Piedra, Papel o Tijeras" en una aplicación iOS, con representaciones visuales de las opciones, mensajes de estado y funcionalidad para jugar y reiniciar. La aplicación utiliza emojis y colores de fondo para mejorar la experiencia de juego.

# Construir una Aplicación ElementQuiz

## Lo que Construirás
Una aplicación para estudiar los elementos químicos con tarjetas de memoria y un cuestionario.

## Lo que Aprenderás
- Cómo crear y mostrar imágenes en código.
- Cómo utilizar el patrón de actualización de IU de un solo camino para gestionar tu código de IU.
- Cómo obtener texto del teclado.
- Cómo mostrar una alerta y responder cuando se toca su botón.

## Vocabulario Clave
- `Alerta`: Un elemento de interfaz de usuario gráfica utilizado para proporcionar al usuario información o solicitar su entrada.
- `Pasos para reproducir`: Instrucciones detalladas sobre cómo recrear un problema o error específico.
- `Campo de texto`: Un campo de entrada que permite a los usuarios escribir o editar texto.

## Introducción
Tus proyectos de aplicaciones anteriores han abarcado desde simples hasta complejos, centrándote en diferentes elementos del desarrollo. Has pensado en la lógica y el cerebro de una aplicación, así como en los elementos de la interfaz de usuario para presentar datos y recopilar la entrada del usuario. En este proyecto, aplicarás todas esas habilidades para construir una aplicación que evalúe a los usuarios sobre los elementos de la tabla periódica.
Comenzarás con una interfaz estilo tarjeta de memoria. El usuario verá el símbolo y el peso atómico del elemento, y podrá tocar un botón para revelar el nombre del elemento. A continuación, crearás un modo de cuestionario, permitiendo al usuario ingresar el nombre correcto del elemento y recibir una puntuación al final.

# Element Quiz

Este código es una implementación de una **aplicación iOS** que te permite estudiar los **elementos químicos** utilizando tarjetas de memoria y realizar un **cuestionario** para evaluar tus conocimientos. La clase `ViewController` es la pieza central de la aplicación, encargándose tanto de la **lógica** como de la **interfaz de usuario**.

La aplicación permite a los usuarios alternar entre dos **modos de estudio** representados por el enum `Mode`: **tarjeta de memoria** y **cuestionario**. También lleva un seguimiento del estado actual, definido por el enum `State`, que puede ser **pregunta**, **respuesta** o **puntuación**.

Se utilizan varias **acciones de botones** para interactuar con la aplicación, incluyendo `showAnswer(_:)` para revelar la respuesta en el modo de tarjeta de memoria, `next(_:)` para pasar al siguiente elemento o mostrar la puntuación en el modo de cuestionario, y `switchModes(_:)` para alternar entre los dos modos.

La **interfaz de usuario** se actualiza según el estado y el modo actual. Por ejemplo, en el **modo de tarjeta de memoria**, la interfaz muestra una imagen del elemento químico y permite al usuario mostrar la respuesta, mientras que en el **modo de cuestionario**, se proporciona un campo de texto para que el usuario responda y muestra si la respuesta es correcta o incorrecta. En el modo de cuestionario, lleva un seguimiento de las respuestas correctas y muestra la puntuación al final.

Además, el código maneja la entrada del usuario a través de la función `textFieldShouldReturn(_:)`, que verifica si la respuesta ingresada es correcta y actualiza la interfaz en consecuencia. Cuando el usuario termina el cuestionario, se muestra una alerta con la puntuación.

En resumen, este código es una **aplicación de estudio de elementos químicos** que ofrece dos modos de estudio (tarjeta de memoria y cuestionario) y proporciona una interfaz de usuario interactiva para ayudar al usuario a aprender y evaluar sus conocimientos. La lógica de la aplicación y la interfaz de usuario están gestionadas de manera integral, y el código incluye funciones para configurar nuevas sesiones de estudio según el modo elegido por el usuario.

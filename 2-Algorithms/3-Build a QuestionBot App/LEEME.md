# Construir una aplicación QuestionBot

## Lo que Construirás
El "cerebro" de una aplicación de chat que responde de manera diferente a diferentes preguntas.

## Lo que Aprenderás
Cómo llevar una idea que has codificado en un playground y ponerla en práctica en una aplicación real.
Cómo hacer que tu aplicación haga cosas diferentes en diferentes situaciones.

## Vocabulario Clave
- `Case`: Una palabra clave utilizada en la programación Swift para definir las diferentes opciones en una enumeración.
- `Default`: Una palabra clave que se utiliza en las instrucciones `switch` para proporcionar un caso predeterminado cuando no se cumplen las condiciones especificadas.

## Introducción
En Construir una aplicación de marco de fotos, creaste un proyecto Xcode desde cero. En esta lección, agregarás funcionalidades importantes a una aplicación que ya está en progreso.
Muchas aplicaciones son construidas por equipos de personas que trabajan juntas: diseñadores que piensan en la apariencia de la aplicación y en cómo se usa, y desarrolladores que escriben el código para que suceda. A menudo, diferentes partes de una aplicación se pueden trabajar al mismo tiempo.
En esta lección, eres parte de un equipo que está construyendo una aplicación de chat llamada QuestionBot. Centrándote solo en una parte de la aplicación, tu trabajo es trabajar en el "cerebro" de QuestionBot, la parte que decide cómo responder a las preguntas. Otras partes de la aplicación, el diseño, la interfaz de usuario, las partes que toman la pregunta y muestran la respuesta, ya están completadas.
En este momento, la aplicación no responde preguntas de manera significativa. Construirás conocimiento para el bot y una personalidad para acompañarlo; darás a la aplicación un comportamiento único de tu propio diseño.

# Question Bot

[https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATION/assets/51039101/946eacda-93fe-4e79-b84f-649e17c83366](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/8364a4b0-af08-484d-9c37-4449f83b787e)

Este código es para una aplicación de iOS que brinda a los usuarios una experiencia de conversación sencilla. El núcleo de la aplicación es la clase `ViewController`, que sirve como controlador de vista principal.

Cuando los usuarios abren la aplicación, el método `viewDidLoad()` se llama automáticamente, iniciando la activación de la entrada de texto `questionField`, lo que permite a los usuarios comenzar a escribir sus preguntas de inmediato.

Posteriormente, cuando un usuario escribe una pregunta y toca el botón "Preguntar", se invoca el método `askButtonTapped(_:)`. Este método verifica si la entrada de texto no está vacía y, si no lo está, oculta el teclado usando `questionField.resignFirstResponder()`, permitiendo que el código continúe.

La pregunta ingresada por el usuario se envía al método `respondToQuestion(_:)`, que aprovecha una instancia de `MyQuestionAnswerer` para producir una respuesta. El motor de respuestas, `MyQuestionAnswerer`, implementa reglas de respuesta condicionales: si la pregunta comienza con ciertas palabras clave como "hola", "dónde debería ir de vacaciones", "dónde puedo encontrar el Polo Norte" o "¿dónde están?" las cookies", devuelve respuestas específicas. Si la pregunta no coincide con estos patrones, realiza un análisis más generalizado. Si la longitud de la pregunta es un número impar de caracteres, responde con un mensaje predeterminado que indica la complejidad de la pregunta. Cuando la extensión de la pregunta es par, proporciona otra respuesta predeterminada que indica que la respuesta es desconocida.

La respuesta generada por "MyQuestionAnswerer" se muestra en el elemento de la interfaz de usuario "responseLabel", entregando la respuesta al usuario. El botón "Preguntar" está temporalmente deshabilitado para evitar que se repitan preguntas, y el texto del marcador de posición en "questionField" cambia para alentar al usuario a hacer otra pregunta.

Además, la extensión de `ViewController` se ajusta a `UITextFieldDelegate` para gestionar eventos relacionados con la entrada de texto. Maneja acciones como ocultar el teclado cuando se presiona la tecla "Regresar" y habilitar o deshabilitar dinámicamente el botón "Preguntar" según si hay texto en el campo de entrada. Esto mejora la usabilidad y la interacción del usuario.

En resumen, este código crea una interfaz conversacional simple donde los usuarios pueden plantear preguntas y recibir respuestas utilizando un motor de respuestas personalizado. La interfaz de usuario responde eficazmente a las interacciones del usuario y la lógica subyacente está encapsulada dentro de la estructura "MyQuestionAnswerer".

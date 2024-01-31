# ChatBot

## Lo que Construirás
Un objeto fuente de datos para realizar un seguimiento de una conversación entre un usuario y un chat bot.

## Lo que Aprenderás
- Cómo se construyen las aplicaciones a partir de instancias de diferentes tipos que trabajan juntas.
- Cómo se utilizan los objetos fuente de datos en las aplicaciones de iOS.

## Vocabulario Clave
- `Celda`: Un bloque de construcción fundamental de una vista de tabla, que representa un elemento único en la lista.
- `Fuente de datos`: Un objeto responsable de gestionar los datos y proporcionar información a un componente de interfaz de usuario, como una vista de tabla.
- `Vista de tabla`: Un elemento de interfaz de usuario que muestra una lista de elementos en una sola columna.

## Introducción
ChatBot es similar al proyecto en el que trabajaste en QuestionBot. En lugar de hacer una pregunta, presionar un botón y obtener una respuesta, construirás una conversación, similar a un chat en la aplicación Mensajes.

En la captura de pantalla, puedes ver lo siguiente:
- Una lista de mensajes formando una conversación.
- Mensajes ingresados por el usuario que lucen diferentes a los proporcionados por la aplicación.
- Un indicador de "pensamiento".
- Un área de entrada donde el usuario puede escribir una pregunta.

En las aplicaciones de iOS, una lista de elementos que se desplaza se conoce como una vista de tabla. Cada elemento en la lista se llama celda. (Puede que hayas escuchado el término "celda" al hablar de programas de hojas de cálculo).


# ChatBot

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/e57a1b4a-f750-4069-b360-039108e795f8

El código proporcionado forma parte de una aplicación iOS que simula una **conversación** entre el usuario y un **bot**. Aquí tienes un desglose de las clases y estructuras clave:

1. **Clase `ConversationDataSource`:**
   - Gestiona los datos de la conversación.
   - Proporciona métodos para agregar tanto **preguntas** como **respuestas** a la conversación.
   - Utiliza la propiedad `messageCount` para obtener el número de mensajes.
   - Almacena mensajes en un array llamado `messages`.
   - Su propósito principal es proporcionar una fuente de datos para la conversación.

2. **Clase `ConversationDelegate`:**
   - Genera respuestas a preguntas.
   - La función `responseTo` toma una pregunta como entrada y devuelve una respuesta basada en el contenido de la pregunta.
   - Incluye respuestas predefinidas para ciertos patrones de preguntas.

3. **Clase `ConversationViewController`:**
   - Actúa como el controlador de vista principal.
   - Utiliza instancias de `ConversationDelegate` y `ConversationDataSource` para gestionar la conversación.
   - Cuando el usuario introduce una pregunta, se activa la función `respondToQuestion`.
   - Esta función maneja la lógica de agregar preguntas y respuestas a la conversación, con un período de "pensamiento" antes de proporcionar una respuesta. Se utiliza `ThinkingCell` para indicar visualmente que la aplicación está "pensando".

4. **Estructura `Message`:**
   - Representa mensajes en la conversación.
   - Incluye propiedades para fecha, texto y tipo (pregunta o respuesta).
   - Proporciona un mensaje de bienvenida inicial llamado `openingLine`.

En resumen, este código crea una aplicación que simula una conversación con un bot. Los mensajes se gestionan a través de clases y estructuras interconectadas, y se incluyen respuestas predefinidas para ciertos patrones de preguntas. La aplicación visualiza el proceso de "pensamiento" mientras genera respuestas a las preguntas del usuario.

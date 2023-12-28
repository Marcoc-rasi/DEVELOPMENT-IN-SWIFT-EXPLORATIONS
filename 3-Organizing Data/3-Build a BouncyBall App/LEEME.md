# Build a BouncyBall App

## What You’ll Build
Un juego donde los jugadores intentan golpear objetivos con una pelota que rebota.

## What You’ll Learn
- Qué son las devoluciones de llamada y cómo funcionan.
- Cómo utilizar una API sofisticada.
- Cómo utilizar el desarrollo incremental para construir una aplicación compleja pieza por pieza.
- Cómo refactorizar tu código.

## Key Vocabulary
- **Desarrollo Incremental**: Estrategia de desarrollo de software que consiste en construir una aplicación en etapas, aumentando gradualmente sus capacidades y probando el código en cada paso.
- **Devolución de Llamada**: Una función que se pasa como argumento a otra función y que se ejecuta después de que ocurra un evento específico.
- **Refactorizar**: Proceso de reestructurar y mejorar el código existente sin cambiar su comportamiento externo.

## Introduction
Hasta ahora, has construido aplicaciones simples con un código mínimo. En esta lección, enfrentarás el desafío de construir un juego que utiliza física e interacción táctil. Se verá algo así:

En esta lección, seguirás una estrategia común de desarrollo de software llamada desarrollo incremental. Construirás la aplicación BouncyBall en etapas, cada una terminando en una aplicación funcional. Ejecutarás y probarás tu código en cada paso, aumentando gradualmente sus capacidades.
Puede que pienses que podrías mirar el juego en el video y construir la aplicación de una vez. Pero piénsalo de nuevo. Será mucho más fácil construir el juego poco a poco, aumentando su complejidad en pasos manejables. En el camino, puedes evaluar tu puedes evaluar tu código y hacer ajustes cuando sea necesario. Y puedes probar después de cada paso para asegurarte de que el juego se comporte como debería. El desarrollo incremental es una técnica clave que los desarrolladores de aplicaciones utilizan para gestionar su trabajo.

# Pelota saltarina

https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATION/assets/51039101/d5b67d65-4425-4ced-8d7e-4dfea45fcc05

El código está contenido dentro de una clase llamada `ViewController`, responsable de gestionar la interfaz y la presentación del juego. Esta clase define propiedades esenciales como `shapeScene`, `container` y `sceneView`. La propiedad `shapeScene` almacena una instancia de `ShapeScene`, que representa la escena del juego en SpriteKit. `container` es una vista que actúa como contenedor para mostrar la vista de la escena del juego (`sceneView`). Además, la propiedad calculada `presentationContext` se utiliza para controlar la presentación de **alertas** en la aplicación.

El método `loadView()` se utiliza para configurar la jerarquía de vistas en el controlador. En este método, se establece un fondo gris claro para el "contenedor" y la vista SpriteKit ("sceneView") se adjunta a esta vista del contenedor. Luego se aplican restricciones para garantizar que "sceneView" ocupe todo el espacio disponible en la vista.

El método `preferredScreenEdgesDeferringSystemGestures` define qué bordes de la pantalla deben diferir los gestos del sistema. En este caso, se elige el borde inferior de la pantalla, lo que puede resultar útil para evitar interrupciones por gestos del sistema durante el juego.

El método `viewDidLoad()` es fundamental para configurar la **escena del juego**. Aquí, la instancia `ShapeScene` (`shapeScene`) se inicializa con el tamaño de la vista del controlador y se establece el modo de escala. Además, el controlador actual es asignado como delegado de alertas de la escena, lo que permite gestionar las alertas que puedan aparecer durante el juego.

El método `viewDidAppear(_:)` se llama cuando la vista del controlador se muestra en la pantalla. En este punto, se invoca la función `setup()` para configurar el juego.

El método `viewDidLayoutSubviews()` se utiliza para ajustar el tamaño de la escena cuando cambia el tamaño de la vista del controlador. Esto es importante para garantizar que la escena encaje correctamente en la pantalla, lo cual es esencial para un juego que implica movimientos y colisiones precisos.

En resumen, este código proporciona la estructura básica para una **aplicación de juego para iOS** donde una pelota debe rebotar en una forma y atravesar obstáculos para ganar. El controlador se encarga de configurar la escena del juego, gestionar las alertas y la presentación en pantalla. Este enfoque establece una base sólida para crear y gestionar juegos interactivos en la plataforma iOS.


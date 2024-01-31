# Construir una Aplicación Marco de Fotos

**Lo que Construirás**
Una aplicación que muestra una foto.

**Lo que Aprenderás**
Cómo usar Xcode para construir y ejecutar una aplicación.

**Vocabulario Clave**
- ``Catálogo de Activos``: Una herramienta en Xcode para organizar y gestionar los recursos multimedia de tu aplicación.
- ``Inspector de Atributos``: Una ventana en Xcode que te permite ajustar las propiedades y atributos de los objetos de la interfaz de usuario.
- ``Área del Editor``: La sección de Xcode donde escribes y editas tu código fuente.
- ``Vista de Imágenes``: Un componente que muestra una imagen en tu interfaz de usuario.
- ``Navegador de Proyectos``: Una ventana en Xcode que te permite ver y gestionar los archivos y recursos de tu proyecto.
- ``Simulador``: Una herramienta en Xcode que simula el entorno de un dispositivo iOS en tu computadora para probar y depurar aplicaciones.
- ``Storyboard``: Una representación visual de la interfaz de usuario de tu aplicación en Xcode.

**Introducción**
Ahora que te estás volviendo más cómodo con los patios de juegos, es posible que te preguntes cómo construir una aplicación que puedas usar en tu dispositivo iOS, o incluso en tu Apple Watch. Muchas partes móviles deben trabajar juntas para que una aplicación se ejecute, y Xcode es la mejor herramienta para ponerlas todas juntas.
En esta lección de cuatro partes, construirás PhotoFrame, una sencilla aplicación iOS que muestra una sola foto. En la primera parte, crearás un proyecto de aplicación desde cero. Luego, usarás Xcode para explorar tu proyecto y aprender a navegar en tu entorno de codificación.

En la tercera parte, agregarás una imagen a tu proyecto. Finalmente, crearás la interfaz de usuario utilizando Interface Builder, un componente poderoso de Xcode que tiene un storyboard para diseñar las pantallas de tu aplicación, una biblioteca de objetos de interfaz de usuario y muchos controles y configuraciones para personalizarlos.
Al final de esta lección, tu aplicación se verá así, pero mostrará una foto de tu elección.

# PhotoFrame

![G-1 3-PhotoFrame-Marcocrasi](https://github.com/Marcoc-rasi/DEVELOPMENT-WITH-SWIFT-EXPLORATIONS/assets/51039101/571d05e7-1d13-4cc5-b0b7-f14241473204)

Agregué una imagen a mi guión gráfico arrastrando una "Vista de imagen" y asignando la imagen deseada en el panel de atributos. Es importante tener en cuenta que las imágenes deben agregarse primero a la carpeta `Assets.xcassets` del proyecto. Para cambiar el color de fondo de la vista, seleccioné la vista principal y ajusté la propiedad "Fondo" o "Color de fondo" en el panel de atributos. Luego, verifiqué que los elementos estuvieran colocados correctamente con las restricciones adecuadas. Finalmente, guardé el guión gráfico, asegurándome de que la imagen y el color de fondo coincidieran con el diseño general de la aplicación.

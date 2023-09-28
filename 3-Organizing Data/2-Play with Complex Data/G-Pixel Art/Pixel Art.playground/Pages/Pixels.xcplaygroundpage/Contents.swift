/*:
 ## Pixels
 
 All the pages in this playground have a `display` instance whose type is `PixelDisplay`. The properties and methods of `PixelDisplay` provide the interface to your low-resolution graphics display.
 
 The display on this page has 64 pixels in an 8-by-8 grid. Pixel coordinates are zero-indexed, just like arrays.
 
 The `setPixel(x:y:color)` method addresses an individual pixel at the specified x and y location. The `Color` type has several predefined values, as shown below.
 */
display.setPixel(x: 0, y: 0, color: .blue)
//display.setPixel(x: 1, y: 3, color: .yellow)
//: - callout(Experiment): Uncomment the following line. After the `color:` parameter label, type a period; then select a color from the autocompletion options.
display.setPixel(x: 5, y: 2, color: .blue)
/*:
 But you can also create any color you want. The `Color` type has three initializers. You can use autocompletion to discover them.
 
 - callout(Experiment): Uncomment the following line. Position the insertion point after `Color(`, and press escape to see all the initializers. Select an initializer to create a custom color. Try using other initializers for additional pixels.
 */
display.setPixel(x: 7, y: 7, color: Color(red: 0.88, green: 0.8, blue: 0.2 ))
display.setPixel(x: 7, y: 0, color: Color(white: 0.4))
display.setPixel(x: 0, y: 7, color: Color(white: 0.87625, alpha: 0.4))
//: - callout(Exercise): Try creating a simple graphic by placing pixels of different colors on the display.
display.setPixel(x: 2, y: 2, color: .green)
display.setPixel(x: 2, y: 3, color: .green)
display.setPixel(x: 2, y: 4, color: .green)
display.setPixel(x: 3, y: 3, color: .green)
display.setPixel(x: 4, y: 3, color: .blue)
display.setPixel(x: 5, y: 4, color: .blue)
display.setPixel(x: 5, y: 3, color: .blue)
//: Next, take control of the entire display.

//: [Previous](@previous)  |  page 2 of 13  |  [Next: Controlling the Display](@next)

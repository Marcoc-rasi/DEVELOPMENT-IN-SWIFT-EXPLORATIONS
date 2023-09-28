/*:
 ## Controlling the Display
 
 The `backgroundColor` property of `PixelDisplay` controls the display color.
 
 - callout(Experiment): Try changing the background color of the display.
 */
display.backgroundColor = .red
/*:
 Notice that any of the pixels you've already set don't change color.
 
- callout(Experiment): Add a few pixels and change the background color again.
 */
display.setPixel(x: 0, y: 0, color: .blue)
display.setPixel(x: 7, y: 7, color: .green)
display.setPixel(x: 7, y: 0, color: .blue)
display.setPixel(x: 0, y: 7, color: .cyan)
/*:
 Notice that you don't see the first background color at all. That's because all the operations execute quickly when your code runs.
 
 On the next page, put some pixels in a row.

[Previous](@previous)  |  page 3 of 13  |  [Next: Lines](@next)
 */

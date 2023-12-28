/*:
 ## Lines
 
 It's fun to operate on one pixel at a time, but you'll have to get more efficient if you want to create more complex graphics.
 
 Start by creating functions to make horizontal and vertical lines. The code of the horizontal line function is partially done for you.
 
 - callout(Exercise): Complete the `hLine(x:y:length:color)` function. Then make a `vLine(x:y:length:color:)` function to draw vertical lines.
 */
func hline(x: Int, y: Int, length: Int, color: Color) {
    for i in 0 ... length - 1 {
        // Set the next pixel along the horizontal line
        display.setPixel(x: x+i, y: y, color: color)
    }
}
func vline(x: Int, y: Int, length: Int, color: Color) {
    for i in 0 ... length - 1 {
        // Set the next pixel along the horizontal line
        display.setPixel(x: x, y: y+i, color: color)
    }
}
/*:
 - callout(Exercise): Try using your line functions to create a new graphic.
 */

hline(x: 0, y: 0, length: 7, color: .cyan)
hline(x: 0, y: 1, length: 6, color: .blue)
hline(x: 0, y: 2, length: 5, color: .yellow)
hline(x: 0, y: 3, length: 4, color: .green)
hline(x: 0, y: 4, length: 3, color: .red)
hline(x: 0, y: 5, length: 2, color: .brown)
hline(x: 0, y: 6, length: 1, color: .magenta)

vline(x: 0, y: 7, length: 1, color: .cyan)
vline(x: 1, y: 6, length: 2, color: .blue)
vline(x: 2, y: 5, length: 3, color: .yellow)
vline(x: 3, y: 4, length: 4, color: .green)
vline(x: 4, y: 3, length: 5, color: .red)
vline(x: 5, y: 2, length: 6, color: .brown)
vline(x: 6, y: 1, length: 7, color: .magenta)
vline(x: 7, y: 0, length: 8, color: .clear)
//: Next, create rectangular blocks.

//: [Previous](@previous)  |  page 4 of 13  |  [Next: Color Blocks](@next)

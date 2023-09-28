/*:
 ## Exercise: Emoji

 This page includes four functions that are building blocks for the basic smiley emoji. You can use them—and create others—to reproduce emoji of your own design. Start by experimenting with the built-in functions.
 
 - callout(Exercise): Try changing the arguments to each of the functions below to see how the smiley components work.
 */
/*face(xPos: 13, yPos: 15, color: .green)
leftEye(x: 16, y: 22, color: .red, blinking: false)
rightEye(x: 21, y: 23, color: .blue, blinking: true)
smile(x: 17, y: 18, color: .magenta)*/

/*:
- callout(Exercise): Once you're comfortable with the functions, comment out the lines above and complete the `Smiley` struct below. The properties have been provided for you; your task is to implement the `draw` method. When you're done, test it by creating an instance and drawing it on the display.
 */
struct Smiley {
    var x: Int
    var y: Int
    var faceColor: Color
    var eyeColorRight: Color
    var eyecolorLeft: Color
    var smileColor: Color
    var leftBlink: Bool
    var rightBlink: Bool

    func draw() {
        face(xPos: x, yPos: y, color: faceColor)
        leftEye(x: x + 3, y: y + 8, color: eyecolorLeft, blinking: leftBlink)
        rightEye(x: x + 8, y: y + 8, color: eyeColorRight, blinking: rightBlink)
        smile(x: x + 4, y: y + 3, color: smileColor)
    }
}
let smileyEmoji = Smiley(x: 13, y: 0, faceColor: .green, eyeColorRight: .blue, eyecolorLeft: .red, smileColor: .magenta, leftBlink: false, rightBlink: true)
smileyEmoji.draw()

func frown(positionX: Int, positionY: Int,color: Color){
    display.setPixel(x: positionX - 2, y: positionY + 2, color: color)
    display.setPixel(x: positionX - 1, y: positionY + 1, color: color)
    display.setPixel(x: positionX, y: positionY, color: color)
    display.setPixel(x: positionX + 1, y: positionY + 1, color: color)
    display.setPixel(x: positionX + 2, y: positionY + 2, color: color)
}

struct Frownie {
    var x: Int
    var y: Int
    var faceColor: Color
    var eyeColorRight: Color
    var eyecolorLeft: Color
    var smileColor: Color
    var frownColor: Color
    var leftBlink: Bool
    var rightBlink: Bool
    

    func draw() {
        face(xPos: x, yPos: y, color: faceColor)
        leftEye(x: x + 3, y: y + 8, color: eyecolorLeft, blinking: leftBlink)
        rightEye(x: x + 8, y: y + 8, color: eyeColorRight, blinking: rightBlink)
        smile(x: x + 4, y: y + 3, color: smileColor)
        frown(positionX: x + 6, positionY: y + 9, color: frownColor)
    }
}
let frownieEmoji = Frownie(x: 13, y: 25, faceColor: .blue, eyeColorRight: .yellow, eyecolorLeft: .cyan, smileColor: .magenta, frownColor: .red, leftBlink: false, rightBlink: false)
frownieEmoji.draw()
/*:
 - callout(Challenge): Try building a new `frown` function that draws a frown at a given x and y position in a given color. Then create a `Frownie` struct that draws a new emoji with a frowning face. (To save time, you can copy the `Smiley` struct and replace the call to `smile` with a call to `frown`.)
 */
/*:
 ### Challenge: Keep Going!
 
 What other kinds of emoji can you make by playing with this same basic structure? Feel free to keep playing with faces on this page.

[Previous](@previous)  |  page 11 of 13  |  [Next: Exercise: Pixel Loops](@next)
 */


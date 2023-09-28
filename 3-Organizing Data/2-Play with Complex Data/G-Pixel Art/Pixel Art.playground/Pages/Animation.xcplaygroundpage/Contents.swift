/*:
 ## But `wait()`... There's More!
 
 There's one final trick `PixelDisplay` has up its sleeve: The `wait()` method pauses the display for a given period of time before continuing to the next drawing operation. Along with the `clear()` method, `wait()` enables you to create animations by drawing something, pausing for a beat, clearing the screen, and updating the drawing.
 
 The code below animates a single white pixel across the display at 30 frames per second.
 */
var frameTime = 1.0 / 500
var frameTimeStop5Seconds:Double = 5/1

func hMovePixel(pixelPositionStartX: Int,pixelPositionFinishX: Int,pixelPositionY: Int,frameTime: Double,color: Color){
    for i in pixelPositionStartX ... pixelPositionFinishX {
        display.setPixel(x: i, y: pixelPositionY, color: color)
        display.wait(time: frameTime)
        display.clear()
    }
}

func vMovePixel(pixelPositionStartY: Int,pixelPositionFinishY: Int,pixelPositionX: Int,frameTime: Double,color: Color){
    for i in pixelPositionStartY ... pixelPositionFinishY {
        display.setPixel(x: pixelPositionX, y: i, color: color)
        display.wait(time: frameTime)
        display.clear()
    }
}
//hMovePixel(pixelPositionStartX: 0, pixelPositionFinishX: 20,pixelPositionY: 39, frameTime: frameTime,color: .red)
//vMovePixel(pixelPositionStartY: 0, pixelPositionFinishY: 20,pixelPositionX: 39, frameTime: frameTime,color: .green)
let displaySize: Int = 39
let arrayColors:[Color] = [.blue,.green,.red,.yellow,.cyan,.magenta,.brown,.orange,.white]
func runDisplay(displaySize: Int,initPosition: Int){
    for rawPosition in initPosition ... displaySize{
        hMovePixel(pixelPositionStartX: initPosition, pixelPositionFinishX: displaySize,pixelPositionY: rawPosition, frameTime: frameTime,color: arrayColors[Int.random(in: 0..<arrayColors.count-1)])
    }
    for columnPosition in initPosition ... displaySize{
        vMovePixel(pixelPositionStartY: initPosition, pixelPositionFinishY: displaySize, pixelPositionX: columnPosition, frameTime: frameTime, color: arrayColors[Int.random(in: 0..<arrayColors.count-1)])
    }
}
runDisplay(displaySize: displaySize, initPosition: 0)
/*:
 - callout(Exercise): Create your own animation using a series of actions in one or more loops. You might want to use one or several variables to track and update the state of your animation.

[Previous](@previous)  |  page 8 of 13  |  [Next: Custom Sprite Types](@next)
 */

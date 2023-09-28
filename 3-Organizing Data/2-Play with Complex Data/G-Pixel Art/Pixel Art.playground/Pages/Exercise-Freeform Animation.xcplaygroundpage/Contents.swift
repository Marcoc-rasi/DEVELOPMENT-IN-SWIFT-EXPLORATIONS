/*:
 ## Exercise: Freeform Animation

 This page is left blank for you to create your own animations. Feel free to explore the possibilities:

 - Set and clear individual pixels in a loop to create simple mini-animations.
 - Use the sprite functions built into this page (the person and smiley components from the previous pages) to animate sprites.
 - Try using `if` statements to draw different things in different loop iterations.
 - Use an array of pixels to draw a shape, your signature, or anything else using one line. Use a loop to draw the line one pixel at a time.

 On this page, you can use the `displaySize` variable to choose between four display resolutions. Its value defaults to .fortyByForty. Be sure to set `displaySize` *first*, before any of your code.
 */
displaySize = .fortyByForty
func block(x: Int, y: Int, width: Int, height: Int, color: Color) -> [Pixel] {
    var pixels = [Pixel]()
    for x in x ... x + width - 1 {
        for y in y ... y + height - 1 {
            pixels.append(Pixel(x: x, y: y, color: color))
        }
    }
    return pixels
}

func legs(x: Int, y: Int, color:Color) {
    // This line needs to be modified.
    display.batchSetPixels(block(x: x, y: y, width: 2, height: 4, color: color))
}

func torso(x: Int, y: Int, color:Color) {
    display.batchSetPixels(block(x: x - 1, y: y + 4, width: 4, height: 3, color: color))
}

func head(x: Int, y: Int, color:Color) {
    display.batchSetPixels(block(x: x, y: y + 7, width: 2, height: 2, color: color))
}

func person(x: Int, y: Int, color: Color) {
    legs(x: x, y: y,color: color)
    torso(x: x, y: y,color: color)
    head(x: x, y: y,color: color)
}


let arrayColors:[Color] = [.blue,.green,.red,.yellow,.cyan,.magenta,.brown,.orange,.white]
for number in 0 ... 20 {
    
    if number % 2 == 0{
        person(x: 10, y: 30, color: arrayColors[Int.random(in: 0..<arrayColors.count-1)])
        person(x: 20, y: 5, color: arrayColors[Int.random(in: 0..<arrayColors.count-1)])
        person(x: 10, y: 5, color: arrayColors[Int.random(in: 0..<arrayColors.count-1)])
        person(x: 20, y: 30, color: arrayColors[Int.random(in: 0..<arrayColors.count-1)])
    }else {
        person(x: 15, y: 25, color: arrayColors[Int.random(in: 0..<arrayColors.count-1)])
        person(x: 25, y: 10, color: arrayColors[Int.random(in: 0..<arrayColors.count-1)])
        person(x: 15, y: 10, color: arrayColors[Int.random(in: 0..<arrayColors.count-1)])
        person(x: 25, y: 25, color: arrayColors[Int.random(in: 0..<arrayColors.count-1)])
    }
    display.clear()
    display.wait(time: 1)
}
/*:
 _Copyright © 2021 Apple Inc._

_Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_

_The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._

_THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._

[Previous](@previous)  |  page 13 of 13
 */

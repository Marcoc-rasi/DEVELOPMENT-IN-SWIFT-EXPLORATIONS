/*:
 ## Custom Sprite Types
 
 Now that you can do simple animations, it's time to come full circle and animate a sprite. The `person` function you worked with on previous pages has been recreated here, but with a few extra parameters. (The `legs`, `torso`, and `head` functions are built into this page.)
 */
func person(x: Int, y: Int, headColor: Color, torsoColor: Color, legsColor: Color, leftArmUp: Bool, rightArmUp: Bool) {
    legs(x: x + 1, y: y, color: legsColor)
    torso(x: x, y: y + 4, color: torsoColor, leftArmUp: leftArmUp, rightArmUp: rightArmUp)
    head(x: x + 1, y: y + 7, color: headColor)
}
/*:
 If you want to animate two people, you might do something like this.
 */
var person1X = 5
var person2X = 35
var person2TorsoHue = 0.0

for _ in 1 ... 30 {
    display.clear()
    
    person(x: person1X, y: 5, headColor: .brown, torsoColor: .green, legsColor: .blue, leftArmUp: false, rightArmUp: true)
    person(x: person2X, y: 25, headColor: .lightGray, torsoColor: Color(hue: person2TorsoHue, saturation: 0.9, brightness: 0.8), legsColor: .yellow, leftArmUp: false, rightArmUp: false)
    
    display.wait(time: 0.05)
    
    person1X += 1
    person2X -= 1
    person2TorsoHue += 0.03
}
/*:
 This code works fine, but it's a little clunky. If you want to animate additional people, you'd have to create that many more variables, multiplied by any of the elements you want to animate—such as y position, leg hue, and the like. And the calls to the `person` function don't look so pretty either. A quick scan won't tell you which parts of the sprite are changing and which are constant.
 
 You've already learned that structs are the perfect solution for abstracting data. You can group together all the attributes of a person—position, color, and arm position—and add a method for drawing.
 
 - callout(Exercise): Complete the `PersonSprite` struct, then use two or more instances of the struct to redo the animation loop. (You can use the `hue` property of `Color` to modify the second person's torso color.)
 */
struct PersonSprite {
    // Declare one property for each of the parameters of the person() function.
    var X: Int
    let Y: Int
    let headColor: Color
    let torsoColor: Color
    let legsColor: Color
    let leftArmUp: Bool
    let rightArmUp: Bool
    var TorsoHue: Double
    // Create a draw() method. Its body can be identical to the person() function,
    func person() {
        legs(x: X + 1, y: Y, color: legsColor)
        torso(x: X, y: Y + 4, color: torsoColor, leftArmUp: leftArmUp, rightArmUp: rightArmUp)
        head(x: X + 1, y: Y + 7, color: headColor)
    }
    func personColorTorsoChange() {
        legs(x: X + 1, y: Y, color: legsColor)
        torso(x: X, y: Y + 4, color: Color(hue: TorsoHue, saturation: 0.9, brightness: 0.8), leftArmUp: leftArmUp, rightArmUp: rightArmUp)
        head(x: X + 1, y: Y + 7, color: headColor)
    }
    // as long as you've declared the properties correctly.
}
var person1 = PersonSprite(X: 5, Y: 0, headColor: .red, torsoColor: .orange, legsColor: .blue, leftArmUp: true, rightArmUp: true, TorsoHue: 1.0)
var person2 = PersonSprite(X: 35, Y: 30, headColor: .cyan, torsoColor: .orange, legsColor: .purple, leftArmUp: true, rightArmUp: true, TorsoHue: 0.0)

for _ in 1 ... 30 {
    display.clear()
    
    person1.personColorTorsoChange()
    person2.personColorTorsoChange()
    
    display.wait(time: 0.05)
    
    person1.X += 1
    person2.X -= 1
    person2.TorsoHue += 0.03
    person1.TorsoHue -= 0.03
}
//: [Previous](@previous)  |  page 9 of 13  |  [Next: Wrapping Up](@next)

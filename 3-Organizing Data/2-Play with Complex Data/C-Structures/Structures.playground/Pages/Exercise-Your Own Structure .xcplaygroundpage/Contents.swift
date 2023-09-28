/*:
## Exercise: Your Own Structure
 When you worked through the Types playground, you had a chance to think about some real-world examples of types and the associated types they might depend on. A `TrainingShoe` type, for example, might have a `size` property that's an `Int`, a `brandName` that's a `String`, and a `releaseDate` that's a `Date`.

 - callout(Exercise): 
 Think of another real-world object and its properties. Make up some actions or behaviors that the object might be able to perform. Write them all in plain English first in a comment:
 */
 // Add your English-language description of the type here. Make sure to add // before each line of your comment description.
//the car will have the brand//maximum speed
//factory color//the model or type of vehicle
//it will have a calculated property that will return the address of the vehicle, which will contain all its properties
//it will have a function that compares its speed with that of another car and tell you which is the fastest

/*:
 - callout(Exercise): 
 Using the `struct` syntax from this lesson, create a type for your real-world object with the properties and methods you thought of. Remembering to mark each property with `let` or `var` depending on whether or not it will be allowed to change. If you're not sure how to implement the body of one of the methods, describe what the method should do in a comment.\
 *Hint: If you made any properties with custom types, you can create placeholder types that have empty implementations. (See the TrainingShoe code at the bottom of this page for an example.) The placeholder type below will make sure your playground can run without errors.*
 
 > If you make a method that tries to change a property of your struct, you'll see the error "`Cannot assign to property: 'self' is immutable`." Structs have special rules about methods that try to change the values of their properties. To get rid of the error, use the keyword `mutating` in your method declaration, like so: `mutating func myMethodThatChangesAProperty()`
 */
// Add your own struct here:
struct Car {
    let brandName: String
    let color: String
    let type: String
    let maxVel: Int
    var description: String {
        return "This car is made it by \(brandName), have \(color) and is \(type)"
    }
    
    func isFasterThan(car: Car) -> Bool{
        return maxVel > car.maxVel
    }
}
/*:
 - callout(Exercise): 
 Use the struct you created to make a new instance of your type.
 */

let a565Car = Car(brandName: "Alpha Romeo", color: "Blue", type: "a565", maxVel: 234)
let huracanCar = Car(brandName: "Ferrari", color: "Red", type: "Huracan", maxVel: 330)
huracanCar.isFasterThan(car: a565Car)
//:  - Note: Here's an example of a placeholder type used for making a TrainingShoe:
// Placeholder type
struct Shoelaces {
    let color: String
}

struct TrainingShoe {
    let size: Int
    var isTied: Bool
    var laces: Shoelaces

    func squeak() {
        // Make a loud noise like rubber squealing on a gym floor
        print("squiek,squiek,squiek!!")
    }

    func warnAboutLaces() {
        // If laces are untied, print a reminder to tie them
        if !isTied {
        print("hey! it appears, your laces are untie, dont forgot to tie them")
        }else {
            print("Your laces are tie, you can walk usually")
        }
    }
}

// Create an instance of the placeholder type
let newLaces = Shoelaces(color: "Purple")

// Use the instance of the placeholder type to create an instance of your new type
let newShoe = TrainingShoe(size: 39, isTied: true, laces: newLaces)
newShoe.warnAboutLaces()

/*:
  _Copyright © 2021 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 
[Previous](@previous)  |  page 10 of 10
 */

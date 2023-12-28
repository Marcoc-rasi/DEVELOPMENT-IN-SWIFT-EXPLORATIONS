/*:
## Making Decisions, Revisited
 
 Consider the lunch options from the previous page. If you were writing a function for the restaurant's online order form, you might do this:
 */
func cookLunch(choice: String) -> String {
    if choice == "pasta" {
        return "🍝"
    } else if choice == "burger" {
        return "🍔"
    } else {
        return "🍲"
    }
}
cookLunch(choice: "pasta")
cookLunch(choice: "burger")
cookLunch(choice: "Enchiladas")
//:  - Experiment: Ask for some different choices by calling `cookLunch(choice:)` a number of times. Ask for anything you can think of. What result do you get back?
/*:
 This function has the following drawbacks:
 
- If you ask for anything other than exactly `"pasta"` or `"burger"` , you get soup.
- There’s nothing telling you what you can ask for. If you can’t see the body of the function, all you know is that it takes a `String`, but it doesn’t tell you any of the strings it might expect.
 
 There’s a better way to deal with situations like this.

[Previous](@previous)  |  page 2 of 21  |  [Next: Enumerations](@next)
 */

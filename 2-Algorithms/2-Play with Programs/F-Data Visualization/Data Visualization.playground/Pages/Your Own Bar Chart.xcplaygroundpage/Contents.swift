/*:
## Your Own Data
 
 Now create (or find) a data set for a bar chart. You might choose some categories that are relevant in your life. Or search online for data that you can represent in a bar chart.

 - callout(Exercise): Make a bar chart using your own data. Remember, you can create a key using the `addKeyItem(withLabel:color:)` function.
 */
makeBarChart()

setYAxis(minimum: 0, maximum: 40)

addBar(withLength: 35, color: .red)
addBar(withLength: 30, color: .orange)
addBar(withLength: 10, color: .yellow)
addBar(withLength: 25, color: .green)
addBar(withLength: 40, color: .blue)
 
addBarLabel("Apple")
addBarLabel("Orange")
addBarLabel("Bananas")
addBarLabel("Kiwi")
addBarLabel("Blueberry")

/*:
[Previous](@previous)  |  page 7 of 11  |  [Next: Plots](@next)
 */

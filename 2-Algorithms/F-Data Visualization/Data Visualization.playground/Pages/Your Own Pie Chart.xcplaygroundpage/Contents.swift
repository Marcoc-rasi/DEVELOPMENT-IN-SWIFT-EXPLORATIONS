/*:
## Your Own Data
 
 Now create your own data set. You might want to visualize how much of a 24-hour day you spend in different activities. Or ask a set of friends to choose their favorite subject at school. Or you can look online to find an existing data set that would be interesting to play with.

 - callout(Exercise): Make a pie chart using your own data. Remember, you can create a key using the `addKeyItem(withLabel:color:)` function.
 */
makePieChart()

addWedge(withProportion: 0.221, color: .blue)
addWedge(withProportion: 0.203, color: .red)
addWedge(withProportion: 0.199, color: .orange)
addWedge(withProportion: 0.179, color: .green)
addWedge(withProportion: 0.198, color: .magenta)

addKeyItem(withLabel: "Sports", color: .purple)
addKeyItem(withLabel: "Culture", color: .yellow)
addKeyItem(withLabel: "Society", color: .green)
addKeyItem(withLabel: "Technology", color: .red)
addKeyItem(withLabel: "Others", color: .cyan)

//: [Previous](@previous)  |  page 4 of 11  |  [Next: Bar Charts](@next)
    

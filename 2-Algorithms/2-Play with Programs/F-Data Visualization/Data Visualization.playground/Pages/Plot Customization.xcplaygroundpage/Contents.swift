/*:
## Plot Customization
 
 These additional API functions let you further customize your plots.
 
 You can set the maximum and minimum values of the X and Y axes using the two functions below. Note that, in most cases, the two axes won't be displayed at the same scale.
 
 `setXAxis(minimum:maximum:)`
 
- `minimum`: The minimum value of the axis, specified as a `Double`.
- `maximum`: The maximum value of the axis, specified as a `Double`.
 
 `setYAxis(minimum:maximum:)`
 
- `minimum`: The minimum value of the axis, specified as a `Double`.
- `maximum`: The maximum value of the axis, specified as a `Double`.

 - Experiment: Edit the code below to change the look of the chart.
 */
makePlot()

setXAxis(minimum: 0, maximum: 100)
setYAxis(minimum: 0, maximum: 100)

addPointAt(x: 12, y: 22, color: .black)
addPointAt(x: 60, y: 13, color: .black)
addPointAt(x: 30, y: 48, color: .black)
addPointAt(x: 26, y: 67, color: .black)
addPointAt(x: 43, y: 50, color: .black)
addPointAt(x: 75, y: 54, color: .black)
addPointAt(x: 89, y: 28, color: .black)
addPointAt(x: 102, y: 61, color: .black)
addPointAt(x: 84, y: 94, color: .black)

/*:
[Previous](@previous)  |  page 9 of 11  |  [Next: Your Own Data](@next)
 */

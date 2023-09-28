/*:
## Plots, Revisited
 
 This version of the API also exposes some new types to help you create better scatter plots. `PlotView` displays your plot data. `makePlot()` creates an instance named `plotView`. The plot data is a series of `PlotPoint` instances, stored as an array in the `points` property.
 
 `PlotView` has the following properties:
 
- `points`: An `Array` of `PlotPoint`s.
- `yAxisMinimum`: The minimum value of the Y axis, expressed as a `Double`.
- `yAxisMaximum`: The maximum value of the Y axis, expressed as a `Double`.
- `xAxisMinimum`: The minimum value of the X axis, expressed as a `Double`.
- `xAxisMaximum`: The maximum value of the X axis, expressed as a `Double`.

 `PlotPoint` has the following properties:
 
- `x`: The X coordinate of the point, expressed as a `Double`.
- `y`: The Y coordinate of the point, expressed as a `Double`.
- `color`: The color of the point, expressed as a `Color`.
- `size`: The size of the point, expressed as a `Double`.
 
 You can use several initializers to create a `PlotPoint` instance.
 
 The color will default to `.black` and the size to 5:\
 `init(x:y:f)`
 
The size will default to 5:\
`init(x:y:color:)`
 
 You specify all properties:\
`init(x:y:color:size:)`

 
 As with pie charts and bar charts, you'll also get an instance of `ChartKeyView` called `keyView`.

 - callout(Exercise): Create a plot using your own data.
 */
makePlot()
plotView.yAxisMinimum = 0.0
plotView.yAxisMaximum = 10.0
plotView.xAxisMinimum = 0.0
plotView.xAxisMaximum = 10.0
plotView.points.append(PlotPoint(x: 8, y: 4, color: .red, size: 10))
plotView.points.append(PlotPoint(x: 2, y: 5, color: .cyan, size: 10))
plotView.points.append(PlotPoint(x: 3, y: 8, color: .blue, size: 10))
plotView.points.append(PlotPoint(x: 7, y: 1, color: .brown, size: 10))
plotView.points.append(PlotPoint(x: 8, y: 5, color: .black, size: 10))
plotView.points.append(PlotPoint(x: 9, y: 3, color: .yellow, size: 10))
plotView.points.append(PlotPoint(x: 1, y: 7, color: .purple, size: 10))
plotView.points.append(PlotPoint(x: 0, y: 4, color: .orange, size: 10))
plotView.points.append(PlotPoint(x: 2, y: 3, color: .green, size: 10))
//:  - callout(Challenge): Recreate the `addPointAt(x:y:color:)`, `setXAxis(minimum:maximum:)`, and `setYAxis(minimum:maximum:)` functions from the first visualization playground.
func addPointAt(x:Double,y:Double,color:Color){
    plotView.points.append(PlotPoint(x: x, y: y, color: color, size: 10))
}
func setXAxis(minimum:Double,maximum:Double){
    plotView.xAxisMinimum = minimum
    plotView.xAxisMaximum = maximum
}
func setYAxis(minimum:Double,maximum:Double){
    plotView.yAxisMinimum = minimum
    plotView.yAxisMaximum = maximums
}
/*:
[Previous](@previous)  |  page 7 of 9  |  [Next: Plot Settings](@next)
 */

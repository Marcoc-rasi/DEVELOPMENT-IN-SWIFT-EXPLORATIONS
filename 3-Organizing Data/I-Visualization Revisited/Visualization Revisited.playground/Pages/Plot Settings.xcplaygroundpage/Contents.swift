/*:
## Plot Settings
 
 How do you want the data points on your scatter plots to display? `PlotPoint` actually has one final property, named `symbol`, of type `Symbol`.
 
 `Symbol` is an enum with the following cases:
 
- `circle`
- `square`
- `diamond`
- `triangle`
- `x`
- `plus`
 
 You can use these new properties by calling a new intializer for `PlotPoint`:\
 `init(x:y:color:size:symbol:)`

 `PlotView` itself gains the capability to draw lines with a new property named `mode` of type `PlotMode`. The `PlotMode` enum has the following cases:
 
- `pointsOnly`
- `linesOnly`
- `pointsAndLines`
 
 The `pointsOnly` mode is the default. If you use either of the other two modes, the `PlotView` will make groups of all points that have the same color and symbol, sort each group by increasing `x` value, and draw lines between points in each group.
 
 `ChartKeyItem` also gains a `symbol` property and a new initializer, `init(color:name:symbol:)`, so you can display symbols in the chart key to match those in your plot.

 - callout(Exercise): Experiment with plot point symbols, line drawing modes, and key item symbols.
 */
makePlot()
plotView.yAxisMinimum = 0.0
plotView.yAxisMaximum = 10.0
plotView.xAxisMinimum = 0.0
plotView.xAxisMaximum = 10.0
plotView.points.append(PlotPoint(x: 8, y: 4, color: .red, size: 10,symbol: .x))
plotView.points.append(PlotPoint(x: 2, y: 5, color: .cyan, size: 10,symbol: .circle))
plotView.points.append(PlotPoint(x: 3, y: 8, color: .blue, size: 10,symbol: .diamond))
plotView.points.append(PlotPoint(x: 7, y: 1, color: .brown, size: 10,symbol: .plus))
plotView.points.append(PlotPoint(x: 8, y: 5, color: .black, size: 10,symbol: .square))
plotView.points.append(PlotPoint(x: 9, y: 3, color: .yellow, size: 10,symbol: .triangle))
plotView.points.append(PlotPoint(x: 1, y: 7, color: .brown, size: 10,symbol: .plus))
plotView.points.append(PlotPoint(x: 0, y: 4, color: .red, size: 10,symbol: .x))
plotView.points.append(PlotPoint(x: 2, y: 3, color: .yellow, size: 10,symbol: .triangle))
plotView.mode = .pointsAndLines
keyView.keyItems.append(ChartKeyItem(color: .red, name: "x", symbol: .x))
keyView.keyItems.append(ChartKeyItem(color: .cyan, name: "Circle", symbol: .circle))
keyView.keyItems.append(ChartKeyItem(color: .blue, name: "Diamond", symbol: .diamond))
keyView.keyItems.append(ChartKeyItem(color: .brown, name: "plus", symbol: .plus))
keyView.keyItems.append(ChartKeyItem(color: .black, name: "Square", symbol: .square))
keyView.keyItems.append(ChartKeyItem(color: .yellow, name: "Triangle", symbol: .triangle))

/*:
[Previous](@previous)  |  page 8 of 9  |  [Next: Wrapping Up](@next)
 */

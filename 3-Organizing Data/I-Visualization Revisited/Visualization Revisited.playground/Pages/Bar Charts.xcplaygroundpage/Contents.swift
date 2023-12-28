/*:
## Bar Charts, Revisited
 
 In the first visualization playground, you used simple functions to create bar charts. In this playground, you'll have more control over the size and color of the bars.
 
 The new API exposes an instance of `BarChartView` named `barChart`. There's also a `ChartBar` struct which is used to specify the bars themselves. `ChartBar` has the following properties:
 
- `length`: The size of the bar, expressed as a `Double`.
- `color`: The color of the bar, expressed as a `Color`.

 `BarChartView` has several properties:
 
- `bars`: An `Array` of `ChartBar`s.
- `yAxisMinimum`: The minimum value of the Y axis, expressed as a `Double`.
- `yAxisMaximum`: The maximum value of the Y axis, expressed as a `Double`.
- `seriesLabels`: An `Array` of `String`s to display labels along the X axis with equal spacing.

 As with the pie chart, you'll also get an instance of `ChartKeyView` called `keyView`.

 - callout(Exercise): Create a bar chart using your own data.
 */
makeBarChart()
barChartView.bars.append(ChartBar(length: 35, color: .red))
barChartView.bars.append(ChartBar(length: 30, color: .orange))
barChartView.bars.append(ChartBar(length: 10, color: .yellow))
barChartView.bars.append(ChartBar(length: 25, color: .green))
barChartView.bars.append(ChartBar(length: 40, color: .blue))
barChartView.bars.append(ChartBar(length: 5, color: .purple))
barChartView.seriesLabels.append("Apple")
barChartView.seriesLabels.append("Orange")
barChartView.seriesLabels.append("Banana")
barChartView.seriesLabels.append("Kiwifruit")
barChartView.seriesLabels.append("Blueberry")
barChartView.seriesLabels.append("Grapes")
barChartView.yAxisMaximum = 40
barChartView.yAxisMinimum = 0

//:  - callout(Challenge): Recreate the `addBar(withLength:color:)` and `setYAxis(minimum:maximum:)` functions from the first visualization playground.
func addBar(withLength: Double,color: Color){
    barChartView.bars.append(ChartBar(length: withLength, color: color))
}
func setYAxis(minimum: Double,maximum: Double){
    barChartView.yAxisMaximum = maximum
    barChartView.yAxisMinimum = minimum
}
/*:
[Previous](@previous)  |  page 5 of 9  |  [Next: Bar Chart Settings](@next)
 */

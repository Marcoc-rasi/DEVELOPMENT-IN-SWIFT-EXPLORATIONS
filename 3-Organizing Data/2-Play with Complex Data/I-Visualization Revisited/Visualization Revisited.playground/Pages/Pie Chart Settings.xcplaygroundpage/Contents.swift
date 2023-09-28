/*:
## Pie Chart Settings
 
 `PieChartView` also has a property that you can use to tweak its look.
 
- `labelDisplayStyle`: How labels are displayed, expressed as a `WedgeLabelDisplayStyle`.
 
 `WedgeLabelDisplayStyle` is an `enum` with the following cases:
 
- `interior`: Labels are displayed inside wedges.
- `exterior`: Labels are displayed just outside wedges.
- `none`: Wedges aren't labeled.

 - callout(Exercise): Experiment with the label styles.
 */
makePieChart()
pieChartView.wedges.append(PieWedge(proportion: 0.168, color: .blue))
pieChartView.wedges.append(PieWedge(proportion: 0.267, color: .orange, scale: 1.0, offset: 0.0))
pieChartView.wedges.append(PieWedge(proportion: 0.137, color: .yellow, scale: 1.0, offset: 0.0))
pieChartView.wedges.append(PieWedge(proportion: 0.053, color: .red, scale: 1.0, offset: 0.0))
pieChartView.wedges.append(PieWedge(proportion: 0.217, color: .green, scale: 1.0, offset: 0.0))
pieChartView.wedges.append(PieWedge(proportion: 0.157, color: .cyan, scale: 1.0, offset: 0.0))
pieChartView.labelDisplayStyle = .exterior
keyView.keyItems.append(ChartKeyItem(color: .blue, name: "Shower"))
keyView.keyItems.append(ChartKeyItem(color: .orange, name: "Toilet"))
keyView.keyItems.append(ChartKeyItem(color: .yellow, name: "Leaks"))
keyView.keyItems.append(ChartKeyItem(color: .red, name: "Other"))
keyView.keyItems.append(ChartKeyItem(color: .green, name: "Clothes Washer"))
keyView.keyItems.append(ChartKeyItem(color: .cyan, name: "Faucet"))
/*:
[Previous](@previous)  |  page 3 of 9  |  [Next: More about Colors](@next)
 */

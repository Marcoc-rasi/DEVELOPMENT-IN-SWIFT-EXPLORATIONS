/*:
 ## Ranking

 To rank the shows by popularity, you'll use some statistical calculations. The central value, or *median*, of the set—the one that falls in the middle after it's been sorted—will help you find a reasonable moderate value. Then the *median absolute deviation*, which measures how spread apart the data is, will help you determine where to draw the line between low, middling, and high popularity.

 Like finding the maximum and minimum, these statistical calculations are also helpful building blocks for other algorithms. And your helpful teammate has once again extended the `Tabulator` type to give you those building blocks. The `median()` method will give you the median `TabulatedValue`, and the `medianAbsoluteDeviation()` method will give you the median absolute deviation of the tabulated values.

 To group the shows into the three tiers, you can apply this algorithm:

 - If the show's count is less than the median value minus the median absolute deviation, it's not very popular.
 - If the show's count is greater than the median value plus the median absolute deviation, it's very popular.
 - Otherwise, it's moderately popular.

 - callout(Exercise): Group all the shows into the three tiers following the algorithm above. The code is partially completed; use the comments as a guide. Print out the groupings when you're done.
 */
// Create three arrays to store shows in each tier. You can choose to store `TabulatedValue` instances, or just strings.
var notVeryPopular = [TabulatedValue]()
var moderatelyPopular = [TabulatedValue]()
var veryPopular = [TabulatedValue]()

// Create constants to store the median and the median absolute deviation.
let median = tabulator.median()
let medianAbosoluteDesviation = tabulator.medianAbsoluteDeviation()
for show in tabulator.tabulatedValues {
    // If the show's count is less than the median value minus the median absolute deviation, it's not very popular.
    if show.count < median - medianAbosoluteDesviation {
        notVeryPopular.append(show)
    // If the show's count is greater than the median value plus the median absolute deviation, it's very popular.
    }else if show.count > median + medianAbosoluteDesviation {
        veryPopular.append(show)
        // Otherwise, it's moderately popular.
    }else{
        moderatelyPopular.append(show)
    }
}

// Print out the shows in each tier.
func printCases(popularCategory: [TabulatedValue], statement: String){
    for show in popularCategory{
        print("The show \"\(show.value)\" is \(statement)")
    }
}
printCases(popularCategory: notVeryPopular, statement: "not very popular")
printCases(popularCategory: moderatelyPopular, statement: "moderately popular")
printCases(popularCategory: veryPopular, statement: "very popular")
//: [Previous](@previous)  |  page 10 of 11  |  [Next: Wrapping Up](@next)

/*:
## Data Errors
 
 Streaming Plus conducted their first survey; now it's time to process the results. The survey data is contained in `surveyData`.

 - callout(Exercise): Use the space below to tabulate the survey data and print the results. You can use the same technique you used the previous page.
 */
// Create a Tabulator instance.
var surveyTabulator = Tabulator()
// Loop through surveyData, incrementing the count for each response.
for showName in surveyData {
    surveyTabulator.incrementCount(forValue: showName)
}
// Loop through the tallied shows (stored in tabulator.values), printing the information from each one.
for showInformation in surveyTabulator.values {
    print("The program " + showInformation + " has \(surveyTabulator.count(forValue: showInformation)) votes")
}
/*:
 If you look at the output, you can see that some users made errors in their responses. They're pretty easy to spot because each error value has a count of 1 in the tabulator. You want to provide the most accurate data to the Streaming Plus marketing team, so you should clean up these errors.
 
 One approach to cleaning these results would be to throw out errors. If there are enough responses, and not too many errors, there should still be useful information after throwing them out.
 
 You could find the errors by looking for values that have been tallied just once, but that technique won't work if multiple people make a common typo like "teh" instead of "the." The best way to spot errors is to compare your data with the list of show names. The `showCatalog` constant contains all the shows in the Streaming Plus catalog. You can use the `contains` method of `Array` to check whether a given show name is valid.

 - callout(Exercise): Using the tabulator you created above, add a loop below that prints only valid results by checking the tabulator values against the show catalog. Then add a second loop that prints only the errors. Finally, print the total number of errors in the survey data.
 */
showCatalog

print("\n\n***** FIRST CLEANING PASS *****\n\n")
// Print a header
print("\n\n***** TABULATION FOR VALID DATA ******\n\n")

// Loop through all tabulator values. Only print the count for those that are contained in showCatalog.
for validValues in surveyTabulator.values {
    if showCatalog.contains(validValues){
        print("The program " + validValues + " has \(surveyTabulator.count(forValue: validValues)) votes")
    }
}
// Create a variable to keep a count of the errors.
var errorsCount =  Int()
// Print a header
print("\n\n***** DATA ERRORS ******\n\n")

// Loop through all tabulator values.
for programName  in surveyTabulator.values {
    // If a value is not contained in showCatalog:
    if !showCatalog.contains(programName){
        // - Increase the error count
        errorsCount += 1
        // - Print it
        print("The program " + programName + " has invalid name")
    }
}
    // Print the error count.
print("The total mistakes was \(errorsCount)")
/*:
[Previous](@previous)  |  page 4 of 11  |  [Next: Correcting Errors](@next)
 */

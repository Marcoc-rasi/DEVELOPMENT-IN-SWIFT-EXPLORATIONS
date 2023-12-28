/*:
## Correcting Errors
 
 Some of the errors in the data seem to be simple capitalization mistakes. You've already seen a way to solve such problems in the QuestionBot app: Just convert the string to lowercase.
 
 First, you'll need to have a lowercased version of your show catalog. Recall that you can create a lowercase string by using the `lowercased()` method.

 - callout(Exercise): Create a new catalog containing lowercased versions of all the shows.
 */
// Make a new array variable.
var showCatalogLowerCased = [String]()
// For all shows in showCatalog, add a lowercase version to the array.
for program in showCatalog{
    showCatalogLowerCased.append(program.lowercased())
}
//:  - callout(Exercise): Tabulate the survey data in a loop, making sure that you convert each value to lowercase before you increment the tabulator. As you did on the previous page, print the valid results, the errors, and the error count. Your code will be similar to the previous page, so feel free to copy it and paste it here as a starting point.
print("\n\n***** SECOND CLEANING PASS *****\n\n")

// Print a header
print("\n\n***** TABULATION FOR VALID DATA ******\n\n")

// Create a Tabulator instance.
var surveyTabulator = Tabulator()
// Loop through surveyData. Make a lowercase version of each value, then increment its count.
for showName in surveyData {
    surveyTabulator.incrementCount(forValue: showName.lowercased())
}
// Loop through all tabulator values. Print only those that are contained in the lowercase version of the show catalog.
for validValues in surveyTabulator.values {
    if showCatalogLowerCased.contains(validValues){
        print("The program " + validValues + " has \(surveyTabulator.count(forValue: validValues)) votes")
    }
}
// Print a header
print("\n\n***** DATA ERRORS ******\n\n")

// Create a variable to keep a count of the errors.
var errorsCount =  Int()
// Loop through all tabulator values.
for programName  in surveyTabulator.values {
// If a value is not contained in the lowercase show catalog:
    if !showCatalogLowerCased.contains(programName){
// - Increase the error count
        errorsCount += 1
// - Print it
        print("The program " + programName + " has invalid name")
    }
}
    // Print the error count.
print("The total mistakes was \(errorsCount)")

/*:
 You should see the error count go from 13 down to just 3. Congratulations! You've made more data available to the Streaming Plus marketing team by correcting the capitalization errors.
 
 But what about the remaining errors? It looks like some users have misspelled the show names, perhaps by accidentally typing a neighboring key. But the misspelled show titles are still recognizable. In fact, they all differ from the correct titles by just one letter. What you need is an algorithm to detect how different one string is from another string. By finding a show in your catalog that's very close to the misspelled one, you can guess what the user meant to enter in the survey.

 Next, climb onto the shoulders of some computing giants to solve this problem.

[Previous](@previous)  |  page 5 of 11  |  [Next: Third-Party Code](@next)
 */

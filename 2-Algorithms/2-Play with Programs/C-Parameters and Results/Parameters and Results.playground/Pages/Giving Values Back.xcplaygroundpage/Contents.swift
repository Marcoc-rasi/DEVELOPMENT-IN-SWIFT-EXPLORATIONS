/*:
## Giving Values Back
 
 Over the last few exercises you've developed a function that builds a sentence about your favorite thing and then prints the result to the console.
 
 Building the sentence and printing it are actually two separate jobs. There could be cases when you want to build the sentence but not print it to the console. You may want to do further work on the sentence or display it on the screen.

 - callout(Exercise): Write a function that takes the `categoryOfThing` and `favorite` as arguments, and returns a `String`. You should be able to call the function like this:\
 \
 `let sentence = makeFavorite(categoryOfThing: "food", favorite: "cheese")`\
 \
 `sentence` should then have the value `"My favorite food is cheese"`.\
 \
 Remember that `->` is used to say that a function returns a value.
 */
func makefavoriteThing(categoryOfThing: String, favorite: String) -> String {
    return "My favorite \(categoryOfThing) is \(favorite)"
}
let sentence = makefavoriteThing(categoryOfThing: "food", favorite: "cheese")
//:  - Experiment: Call your new function a few times with some different categories, assigning each result to a different constant. Why not try categories like food, movie, school subject or band?
let sentence1 = makefavoriteThing(categoryOfThing: "food", favorite: "Enchiladas")
let sentence2 = makefavoriteThing(categoryOfThing: "movie", favorite: "Interestellar")
let sentence3 = makefavoriteThing(categoryOfThing: "school subject", favorite: "Robotics")
let sentence4 = makefavoriteThing(categoryOfThing: "Band", favorite: "Judas Priest")
/*:
 - callout(Exercise): Now that you have your results, you can use string interpolation to combine them into a self-introduction. Yours might look something like this:\
`"Hello, my name is Euna. \(favoriteFood) \(favoriteVideoStar) ..."`
 */
print("Hello, my name is Marcos, these are some thinks i like \n\(sentence1)\n\(sentence2)\n\(sentence3)\n\(sentence4)\n")
/*:
Next, learn when to use parameters and return values and when not to.

[Previous](@previous)  |  page 7 of 18  |  [Next: Kinds of Function](@next)
 */

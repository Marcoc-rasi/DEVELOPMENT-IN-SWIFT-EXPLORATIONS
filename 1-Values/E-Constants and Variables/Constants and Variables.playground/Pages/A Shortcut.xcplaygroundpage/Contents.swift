/*:
## A Shortcut
 
 You saw how to use the current value of a variable as part of updating to a new value:
 */
// Value is initially zero
var score = 0

// Take the current value of `score`, add 2, assign the result to `score` as its new value
score += 2
score += 5
score += 100
/*:
 This type of operation happens often enough that Swift has a special operator `+=`. This shorthand merges addition (`+`) and assignment (`=`) into one combined operation.

The following line of code:
 
`score = score + 2`
 
has the same effect as:
 
`score += 2`

 - Experiment: Replace the line of code `score = score + 2` above using `+=` instead. Note that the result in the results bar is the same. To add more points to the game score, add a few more lines of code using the `+=` operator.

#### Compound Assignment
 The formal name for this kind of operator is a _compound assignment_ operator. The `+=` operator not only works for numbers, but anywhere you can use the addition operator `+`.
 
 For example, you can use the `+=` operator with strings:
 */
var greeting = ""
greeting += "Hello"
greeting += " "
greeting += "World"
//:  - Experiment: Try building up the statement “Compound assignment is useful” using compound assignment and the following constants. The first part of the statement is done for you:
let word1 = "Compound"
let word2 = "assignment"
let word3 = "is"
let word4 = "useful"
let space = " "

var statement = ""
statement += word1 + space + word2 + space + word3 + space + word4
//:  Compound assignment works with all the mathematical operators, even the remainder operator. Use the `*=` operator to create the powers of two up to two to the 10th:
var powerOfTwo = 1
powerOfTwo *= 2
powerOfTwo *= 2
powerOfTwo *= 2
powerOfTwo *= 2

/*:
[Previous](@previous)  |  page 5 of 13  |  [Next: Confusing Changes](@next)
 */

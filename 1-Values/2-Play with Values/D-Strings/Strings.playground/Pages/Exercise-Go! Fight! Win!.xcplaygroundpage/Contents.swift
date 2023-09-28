/*:
## Exercise: Go! Fight! Win!
 
 Many schools have “fight songs.” Students learn at least some portion of the words and sing the songs loudly at school sports events.

 You’ve decided that your school’s fight song needs a rewrite. You want to edit the song in code so you don’t have to copy and paste as much while you work.
 
 1. Edit the `song` to have more than a repeated refrain.
 2. Edit the `refrain` to have actual words.
 3. Edit the `refrain` to use the `schoolName` at least twice.
 4. Test your work by changing the school name to a fictional school.
 
 Use string interpolation in case you decide to sell your brilliant song to another school.

 - Note: 
 Use the show result button to view the results of your work.
 */
var schoolName = "UNAM"
var refrain = "hmm hmm HMMM hm-hmm \(schoolName)\n hmm hmm HMMMMM ALWAYS PUMA, ALWAYS CLAW \(schoolName)\nRepresenting Mexico"

var song = "\(refrain)\n\(refrain)\nYes For my race my spirit will speak"

//sell the song
schoolName = "Politecnico"
refrain = "hmm hmm HMMM hm-hmm \(schoolName)\n hmm hmm HMMMMM ALWAYS PUMA, ALWAYS CLAW \(schoolName)\nRepresenting Mexico"
song = "\(refrain)\n\(refrain)\nYes For my race my spirit will speak"

/*:
[Previous](@previous)  |  page 16 of 18  |  [Next: Exercise: Displaying Values](@next)
 */

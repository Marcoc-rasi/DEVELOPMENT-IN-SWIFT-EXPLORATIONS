/*:
## Putting It All Together

 - callout(Exercise): In this final exercise you’ll combine the things you’ve learned over the last few pages. Update this `responseToQuestion` function so that it gives the answers specified below. It’s OK to go back and look and code from earlier pages.
 */
func responseTo(question: String) -> String {
    if question.lowercased().hasPrefix("hello there"){
        return "Why, hello there!"
    }else if question.lowercased().hasPrefix("where should i go on holiday?") || question.lowercased().hasPrefix("where can i find the north pole"){
        return "To the North!"
    }else if question.lowercased().hasPrefix("where are the cookies?"){
        return "In the cookie jar!"
    }else {
        let numberOfCaractersRemainder =  question.count % 2
        if numberOfCaractersRemainder == 1 {
            return "That is a very complex question, sorry I am not so smart"
        }else {
            return "Unfortunately I currently do not have that answer, excuse me"
        }
    }
}
//: 👇These answers should be “Why, hello there!”
responseTo(question: "Hello there")
responseTo(question: "hello there")
//: 👇These answers should be “To the North!”
responseTo(question: "Where should I go on holiday?")
responseTo(question: "where can I find the North Pole?")
//: 👇This answer should be “In the cookie jar!”
responseTo(question: "Where are the cookies?")
/*:
 Any other question can have any answer you'd like. You can also make new rules or conditions so different questions have different answers!
 
 👇 Below are some example questions for you to test the final part. You can add or change the test questions if you like.
 */
responseTo(question: "Can I have a cookie? ")
responseTo(question: "CAN I HAVE A COOKIE?!?")
responseTo(question: "Should I go? ")

/*:
 - Note: 
 You'll be cutting and pasting the body of the `responseTo(question:)` function above. When you highlight it to copy over, your function body will be different, but it'll look something like this:\
 ![](copy-paste-example.png)
 */
 
/*:
[Previous](@previous)  |  page 6 of 7  |  [Next: Wrapping Up](@next)
 */

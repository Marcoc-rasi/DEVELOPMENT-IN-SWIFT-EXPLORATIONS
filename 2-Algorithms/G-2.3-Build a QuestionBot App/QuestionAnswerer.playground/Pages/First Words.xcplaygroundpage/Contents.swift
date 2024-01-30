/*:
## First Words
 In this exercise you’ll make a function that gives different answers depending on the first word of the question. The `hasPrefix()` method tests if a string begins with another string:
 */
"swift programming".hasPrefix("swift")
"swift programming".hasPrefix("programming")
//:  - callout(Exercise): Amend the function and tests below to respond to different first words. How about adding answers for who, what, why, and how questions?
func responseTo(question: String) -> String {
    
    if question.hasPrefix("hello") {
        return "Why, hello there"
    } else if question.hasPrefix("where") {
        return "To the North!"
    } else if question.hasPrefix("who"){
        return "Marcocrasi"
    }else if question.hasPrefix("what"){
        return "The magician has the answer"
    }else if question.hasPrefix("why"){
        return "because the world is full of chaos"
    }else if question.hasPrefix("how"){
        return "like everything, thanks to science"
    }else{
        return "That really depends"
    }
}

responseTo(question: "hello there!")
responseTo(question: "where should I go on holiday?")
responseTo(question: "who")
responseTo(question: "what is the capital of France?")
responseTo(question: "why")
responseTo(question: "how")
responseTo(question: "please")
//: You may have noticed that `where` works, but `Where` or `WHERE` does not. You’ll learn how to deal with that on the next page.
 
/*:
[Previous](@previous)  |  page 2 of 7  |  [Next: Dealing with Cases](@next)
 */

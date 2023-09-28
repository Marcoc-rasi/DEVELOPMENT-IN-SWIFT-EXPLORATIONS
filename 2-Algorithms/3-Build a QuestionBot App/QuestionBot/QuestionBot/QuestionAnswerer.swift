struct MyQuestionAnswerer {
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
}

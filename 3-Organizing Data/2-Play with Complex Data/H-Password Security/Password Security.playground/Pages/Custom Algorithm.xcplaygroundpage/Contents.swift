/*:
## Custom Algorithm
 Think about more rules you could add to make your users' passwords even more secure. Implement your algorithm below.

 You can copy the code from the previous page as a starting point.
 */
import Foundation
let tenCommonPasswords = [
    "123456",
    "123456789",
    "qwerty",
    "password",
    "12345678",
    "111111",
    "iloveyou",
    "1q2w3e",
    "123123",
    "password1"
]
let digits = "0123456789"
let punctuation = "!@#$%^&*(),.<>;'`~[]{}\\|/?_-+= "
func check(password: String, userName: String){
    if tenCommonPasswords.contains(password) {
        print("You are not chose a secure password. is in the top 10 most popular passwords, modify it")
    }else if password.count < 16{
        print("The password is not of adequate size must be 16 characters")
    }else if password.hasPrefix(userName){
        print("You can not use your username in to your password")
    }else {
        var countD = Int()
        var countP = Int()
        var countUpper = Int()
        var flagLower = Bool()
        for char in password {
            if digits.contains(char){
                countD += 1
            }
            if punctuation.contains(char){
                countP += 1
            }
            if char.isUppercase {
                countUpper += 1
            }
            if char.isLowercase {
                flagLower = true
            }
        }
        if countD < 4 {
            print("The password does not contain at least 4 numeric characters, please modify it")
        }else if countP < 4{
            print("The password does not contain at least 4 punctuation characters, please modify it")
        }else if countUpper < 4{
            print("The password does not contain at least 2 Uppercase letter, please modify it")
        }else if !flagLower {
            print("The password does not contain a Lowercase letter, please modify it")
        }else{
            print("The password complies with the rules, good job")
        }
    }
}
check(password: "123@|!KAKSJSNSNSJSJSaA@1", userName: "user")
/*:
[Previous](@previous)  |  page 4 of 5  |  [Next: Brute-Force Guessing](@next)
 */

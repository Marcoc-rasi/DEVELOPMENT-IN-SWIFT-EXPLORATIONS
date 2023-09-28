/*:
## Advanced Rules
 You could also verify that a password contains at least one uppercase letter and one lowercase letter. That way an attacker can't limit their algorithm to lowercase letters, hoping a user was too lazy to use the shift key when typing their password.
 
 Another useful check is making sure that the password doesn't contain the username, so that the user can't choose "user01" and "user01password!".
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
/*:
### Implement your algorithm below with the additional new rules:

- Contains at least one uppercase letter and one lowercase letter
- Doesn't contain the username
 
 - Note: To detect whether a character is uppercase, use the `isUppercase` property.
 */
func check(password: String, userName: String){
    if tenCommonPasswords.contains(password) {
        print("You are not chose a secure password. is in the top 10 most popular passwords, modify it")
    }else if password.count < 16{
        print("The password is not of adequate size must be 16 characters")
    }else if password.hasPrefix(userName){
        print("You can not use your username in to your password")
    }else {
        var flagD = Bool()
        var flagP = Bool()
        var flagUpper = Bool()
        var flagLower = Bool()
        for char in password {
            if digits.contains(char){
                flagD = true
            }
            if punctuation.contains(char){
                flagP = true
            }
            if char.isUppercase {
                flagUpper = true
            }
            if char.isLowercase {
                flagLower = true
            }
        }
        if !flagD {
            print("The password does not contain any numeric characters, please modify it")
        }else if !flagP {
            print("The password does not contain any punctuation characters, please modify it")
        }else if !flagUpper {
            print("The password does not contain an Uppercase letter, please modify it")
        }else if !flagLower {
            print("The password does not contain a Lowercase letter, please modify it")
        }else{
            print("The password complies with the rules, good job")
        }
    }
}
check(password: "userKAKSJSNSNSJSJSaA@1", userName: "user")
/*:
[Previous](@previous)  |  page 3 of 5  |  [Next: Custom Algorithm](@next)
 */

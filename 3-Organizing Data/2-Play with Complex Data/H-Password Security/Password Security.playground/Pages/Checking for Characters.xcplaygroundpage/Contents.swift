/*:
## Checking for Characters

 Now that you're eliminating the most common passwords, you can add some more sophisticated checks to your algorithm. A good policy is to disallow plain dictionary words. If you require the user to include nonalphabetic characters, there'll be some amount of randomness even if the password includes dictionary words (such as "apple1984"). You might also require passwords be a minimum length. The longer a password, the longer it takes for a hacker to try all possibilities. For example, there are only 140,608 simple six-letter passwords. In contrast, the number of 16-character passwords generated according to the rules below has an upper bound of over 30 nonillion, or 30 thousand billion billion billion! That's way too many for a hacker to perform an exhaustive search of possible passwords.
 
 Use the following rules:
 
- At least 16 characters
- At least one regular letter
- At least one digit
- At least one punctuation character
 
 The two new arrays below contain the digits and common punctuation characters. Use them in your algorithm.
 */
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
 Implement your updated algorithm below. Rather than checking the password as a whole, you'll now have to check each of its characters.
 
 Recall that a string is defined as a sequence of characters. Even though `String` and `Array` are different types, they're both sequences—that is, they arrange their elements in a particular order. The `for...in` loop has a special superpower: It works on *any* sequence, not just on arrays.
 
 Armed with this knowledge, you can use a loop to implement the algorithm below. Use the `contains()` method to check each character against the predefined arrays above to see whether they satisfy one of the rules. After checking all the characters in the password, write a final conditional statement to check whether you found at least one of each type of required character.
 
 As a bonus, consider adding more detailed error messages to let the user know exactly which rule they failed to observe.
 */
let password = "passwo2@KALAKAAAKSJ"
if tenCommonPasswords.contains(password) {
    print("You are not chose a secure password. is in the top 10 most popular passwords, modify it")
}else if password.count < 16{
    print("The password is not of adequate size must be 16 characters")
}else {
    var counterD = Bool()
    var counterP = Bool()
    for char in password {
        if digits.contains(char){
            counterD = true
        }
        if punctuation.contains(char){
            counterP = true
        }
    }
    if !counterD {
        print("The password does not contain any numeric characters, please modify it")
    }else if !counterP {
        print("The password does not contain any punctuation characters, please modify it")
    }else{
        print("The password complies with the rules, good job")
    }
}

/*:
[Previous](@previous)  |  page 2 of 5  |  [Next: Advanced Rules](@next)
 */

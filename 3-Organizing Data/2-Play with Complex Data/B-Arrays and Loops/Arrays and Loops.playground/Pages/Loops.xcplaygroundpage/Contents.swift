/*:
## Loops
 
 Swift has a built-in way to let you run code for each item in an array. It’s called _looping_ or _iterating_ through the array.
 
 Think of it like a roller coaster that seats one person. The queue is the array. The car arrives, the first person from the queue gets on, goes around the loop, and gets off. Then the next person in the queue gets on for a turn. 🎢
 
 When you iterate through an array, you take one item, run some code using that item, then take the next item.
 
 ![Graphic showing a loop of code](loop.png)
 
 When the code is finished with all the items in the array, the loop stops automatically and the code continues executing through the rest of the program.
 
 To run code for each item in an array, you can use a `for…in` loop. Here’s an array of `friends` that's processed by loop:
 */
let friends = ["Name", "Name2", "Name3", "Name4", "Name5"]

for friend in friends {
    let sparklyFriend = "✨\(friend)✨"
    print("Hey, \(sparklyFriend), please come to my party on Friday!")
}
print("Done, all friends have been invited.")
/*:
The first line sets up the loop with two important pieces of information:
1. Which array to work through (in this case, `friends`).
2. What to call the item being worked with (in this case, `friend`).
You could say in English, “For every friend in the friends array...”

All of the code between the braces is the "body" of the loop. It’s the list of steps that will be run for each item in the array. The first time through the loop (the first iteration), the value of `friend` is `Name`, and the second time through its value is `Name2`, and so on until the whole array has gone through the loop.

 - Experiment: The `friend` constant was defined as part of the `for` loop. What do you think will happen if you uncomment the line below? Will the result be the last name the loop used. Or will it return an error?
 */
//friend
//not compile cause the variable is not know in the context
/*:
Next, make arrays that can change.\
[Previous](@previous)  |  page 7 of 18  |  [Next: Mutable Arrays](@next)
 */

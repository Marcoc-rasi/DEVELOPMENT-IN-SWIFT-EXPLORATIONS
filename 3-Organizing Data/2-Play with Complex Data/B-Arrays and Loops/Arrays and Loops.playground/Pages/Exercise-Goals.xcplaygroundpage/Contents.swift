/*:
## Exercise: Goals

Think of a goal of yours that can be measured in progress every day, whether it’s minutes spent exercising, number of photos sent to friends, hours spent sleeping, or number words written for your novel.

 - callout(Exercise): Create an array literal with 20 to 25 items of sample data for your daily activity. It may be something like `let milesBiked = [3, 7.5, 0, 0, 17 ... ]` Feel free to make up or embellish the numbers, but make sure you have entries that are above, below and exactly at the goal you've thought of. _Hint: Make sure to choose the right kind of array for your data, whether `[Double]` or `[Int]`._
 */
var hoursSleeping: [Int] = [6,8,7,5,6,7,7,8,6,8,8,9,8,6,5,7,7,4,6,7,5,8,6]
hoursSleeping.count
//:  - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
let goal = 8
func messageGoal(hoursSleep: Int, goal: Int){
    if hoursSleep == goal {
        print("you have slept your goal hours, continue like this to have a healthy life")
    }else if hoursSleep > goal {
        print("you've gone a bit over your goal, it's not bad to rest a little more from time to time, but remember to lower your sleep hours until you reach your goal")
    }else {
        print("you need to sleep more, remember that sleeping less hours can affect your health")
    }
}
//:  - callout(Exercise): Write a `for…in` loop that iterates over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
for hour in hoursSleeping {
    messageGoal(hoursSleep: hour, goal: 8)
}
/*:
[Previous](@previous)  |  page 16 of 18  |  [Next: Exercise: Screening Messages](@next)
 */

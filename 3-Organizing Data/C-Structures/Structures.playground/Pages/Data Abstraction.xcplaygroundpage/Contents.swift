/*:
## Data Abstraction
 
 Like any form of data abstraction, structs simplify the code that works with related data. In the case of the `Song` struct, you no longer have to worry about three parallel arrays. Using data abstraction can result in a program that is easier to develop and maintain.
  
 To see the benefit of data abstraction firsthand, complete the exercises below.

 - callout(Exercise): 
 Complete the missing code to process the parallel arrays from the first page of the playground.
 */
let songTitles = ["Ooh yeah", "Maybe", "No, no, no", "Makin' up your mind"]
let artists = ["Brenda and the Del-chords", "Brenda and the Del-chords", "Fizz", "Boom!"]
let durations = [90, 200, 150, 440]
let starRating = [5, 2, 4, 5]

func songInformation(title: String, artist: String, duration: Int) -> String {
    return "\"\(title)\" by \(artist), duration \(duration) seconds"
}

for i in 0 ... songTitles.count - 1 {
    print(songInformation(title: songTitles[i], artist: artists[i], duration: durations[i]))
}
/*:
 The code above is prone to all sorts of errors. What would happen if your song catalog expanded but you forgot to update one of the three arrays? What if you added star rating data with a new array but forgot to modify the `songInformation` function?
 
 This kind of code is also hard to maintain and read. What if you were tracking thirty properties about songs, instead of just a handful? What would the parameter list of the `songInformation` function look like?
 
 Next you'll perform the same task using a data abstraction: the `Song` struct from the previous page.
 */
struct Song {
    let title: String
    let artist: String
    let duration: Int
    let starRating: Int
}
//:- callout(Exercise): Below, use the `Song` struct from the previous page to simplify your code.
/* Create the array of songs here */
let songs: [Song] = [
    Song(title: songTitles[0], artist: artists[0], duration: durations[0], starRating: starRating[0]),
    Song(title: songTitles[1], artist: artists[1], duration: durations[1], starRating: starRating[1]),
    Song(title: songTitles[2], artist: artists[2], duration: durations[2], starRating: starRating[2]),
    Song(title: songTitles[3], artist: artists[3], duration: durations[3], starRating: starRating[3])]
/* Declare the songInformation function here */
func songInformation(song: Song) -> String {
    return "\"\(song.title)\" by \(song.artist), duration \(song.duration) seconds, star rating \(song.starRating)"
}
/* Write a for...in loop here */
for song in songs {
    print(songInformation(song: song))
}
/*:
 With the `Song` struct, you could add a star rating simply by adding a new property: `let starRating: Int`. Your initializers will automatically warn you that you're not passing enough arguments. Your `informationFor` function will be easy to modify. And you won't have to update your loop at all!
 
 Learn how to make types with mutable properties next.

[Previous](@previous)  |  page 4 of 10  |  [Next: Mutability](@next)
 */

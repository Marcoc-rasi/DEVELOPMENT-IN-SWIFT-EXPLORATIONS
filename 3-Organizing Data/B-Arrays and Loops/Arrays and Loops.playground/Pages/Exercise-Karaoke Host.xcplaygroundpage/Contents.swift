/*:
## Exercise: Karaoke Host

 You have a friend who loves singing karaoke with a big group of people. The karaoke singers add songs they’d like to sing to a list and the karaoke host calls out the songs one by one. 
 
 Your friend and has asked you to write software to help manage the song list.

 - callout(Exercise): 
 Create an empty array to hold song titles as strings, and use the `append` method to add three or four songs one at a time.
 */
var songsKaraoke:[String] = [String]()
songsKaraoke.append("Calm Down-Selena Gomez")
songsKaraoke.append("Creepin' - The Weeknd")
songsKaraoke.append("Flowers - Miley Cyrus")
songsKaraoke.append("Kill Bill - SZA")
/*:
 - callout(Exercise): 
 One enthusiastic singer wants to add three songs at once. Create an array holding this one singer's song list and use the `+=` operator to append their whole list to the end of the group's song list.
 */
let threeSongsList = ["Anti-Hero - Taylor swift","Die For You - The Weeknd","Hurt fellings - Mac Miller"]
songsKaraoke += threeSongsList
/*:
 - callout(Exercise): 
 Write a `for…in` loop and, for every song title in the array, print an encouraging announcement to let the next singer know that it's their turn.
 */
for song in songsKaraoke {
    print("Now to the delight of all of you, the song \(song), applause")
}
/*:
 - callout(Exercise): 
 After the loop has called everyone up to sing, use the `removeAll` method on the song list to clear out all the past songs.
 */
songsKaraoke.removeAll()
/*:
[Previous](@previous)  |  page 14 of 18  |  [Next: Exercise: Counting Votes](@next)
 */

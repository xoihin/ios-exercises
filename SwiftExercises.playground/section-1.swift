import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    // WORK HERE
    return "My favorite cheese is " + cheese + "."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."
fullSentence

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
// WORK HERE
var myNumberArray2 = numberArray + [5] // Use variable


let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
// WORK HERE
var myNumberDictionary = numberDictionary
myNumberDictionary[5] = "five"
myNumberDictionary


/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
// WORK HERE
for myNumber in 1...10 {
    println(myNumber)
}

// Use a half-closed range loop to print 1 - 10, inclusively
// WORK HERE
for myNumber in 1..<11 {
    println(myNumber)
}



let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]


let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    // WORK HERE
    
    var allDrinkArray = [String]()
    
    for myIndex in characters {
        let myDrinks = myIndex["favorite drink"]
        allDrinkArray.append(myDrinks!)
    }
    return allDrinkArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*


Functions

*/


// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

func appendStringFromArray(foodItem: [String]) -> String {

    var myString = ""
    
    for myFood in foodItem {
        myString += myFood + ";"
    }
    return myString
}


let expectedOutput = "milk;eggs;bread;challah"

let myResult = appendStringFromArray(strings)

myResult

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE
let sortedArray = sorted(cerealArray, <)
sortedArray



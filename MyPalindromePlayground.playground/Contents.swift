//: Playground - noun: a place where people can play

import UIKit

func stringIsPalindrome(string: String) -> Bool {
    let punctuationOffString = removeWhightspaceAndPunctuation(string)
    let stringToCheck = stringByReversingString(punctuationOffString)
    
    if stringToCheck == punctuationOffString {
        print("true")
        return true
    } else {
        print("false")
        return false
    }
}

func stringByReversingString(string: String) -> String {
    
    var reversedString = ""
    for character in string.lowercaseString.characters {
        reversedString.insert(character, atIndex: reversedString.startIndex)
    }
    print("'\(reversedString)' is a string we got by reversing string '\(string)'.")
    return reversedString
}

func removeWhightspaceAndPunctuation(string: String) -> String {
    let punctuationArray = [" " ,"." ,"," ,":" , "!", "?"]
    var reversedWhitespaceRemovedString = string.lowercaseString
    for i in 0...(punctuationArray.count) - 1 {
        reversedWhitespaceRemovedString = reversedWhitespaceRemovedString.stringByReplacingOccurrencesOfString(punctuationArray[i], withString:"")
    }
    print("Sentence: '\(string)' with removed punctuation: '\(reversedWhitespaceRemovedString)'")
    return reversedWhitespaceRemovedString
}

stringIsPalindrome("racecar")
stringIsPalindrome("racecars")
stringIsPalindrome("Kanakanak")
stringIsPalindrome("never odd or even")
stringIsPalindrome("this is not a palindrome")
stringByReversingString("racecars")
stringByReversingString("racecar")
stringIsPalindrome("Flee to me, remote elf?")
stringIsPalindrome("Norma is as selfless as I am, Ron.")
stringIsPalindrome("No sir! Away! A papaya war is on.")
//
//  LongestWord.swift
//  SwiftStringsCourse
//
//  Created by Tony Chaidinis on 15/02/2023.
//

import SwiftUI

struct Word {
  var word: String
  var wordcount: Int
}

struct LongestWord: View {
  @State var text = String()
  @State var myArray: [Word] = []
  @State var longestWord = String()
    var body: some View {
      Text("Give me a string to give you the longest word")
      Text("The longest word is :\(longestWord) with \(longestWord.count)")
      TextField("Give a String", text: $text)
      Button("Find the Longest word") {
        var my =  text.components(separatedBy: " ").sorted()
        for word in my {
          myArray.append(Word(word: word, wordcount: word.count))
        }
        let greatestValue = myArray.max { a, b in a.wordcount < b.wordcount }
        longestWord = greatestValue?.word ?? ""
        myArray.removeAll()
        
      }
    }

}

struct LongestWord_Previews: PreviewProvider {
    static var previews: some View {
        LongestWord()
    }
}

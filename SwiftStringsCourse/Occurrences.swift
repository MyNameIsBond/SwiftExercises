//
//  Occurrences.swift
//  SwiftStringsCourse
//

import SwiftUI

struct Occurrences: View {
  @State var text = String()
  @State var occurrences = []
  @State var myArray = Array(offset: Int, element: String)
    var body: some View {
      
      Text("Give a string to know the occurrences of earch character")
      TextField("Give me a string", text: $text)
      Button("Submit") {
        let myArray = Array(text).sorted().enumerated()
        myArray.forEach { character in
          print(character)
          while(character.element == myArray[character.offset + 1].element) {
            print(" ela re paidia ")
          }
        }
      }
    }
}

struct Occurrences_Previews: PreviewProvider {
    static var previews: some View {
        Occurrences()
    }
}

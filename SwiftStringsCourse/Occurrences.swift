//
//  Occurrences.swift
//  SwiftStringsCourse
//

import SwiftUI

struct CharacterDublicates {
  var letter: Character
  var counts: Int
}

struct Occurrences: View {
  @State var storeDublicated: [CharacterDublicates]  = Array()
  @State var text = String()
    var body: some View {
      
      Text("Give a string to know the occurrences of earch character")
      TextField("Give me a string", text: $text)
      Button("Submit") {
        
        for index in text.enumerated() {
          if let ind = (storeDublicated.firstIndex { $0.letter == index.element }) {
            storeDublicated[ind].counts = storeDublicated[ind].counts + 1
          } else {
            storeDublicated.append(CharacterDublicates(letter: index.element, counts: 1))
          }
        }
        print(storeDublicated)
        storeDublicated.removeAll()
      }
    }
}

struct Occurrences_Previews: PreviewProvider {
    static var previews: some View {
        Occurrences()
    }
}

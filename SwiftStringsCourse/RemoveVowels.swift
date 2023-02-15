//
//  RemoveVowels.swift
//  SwiftStringsCourse
//
//  Created by Tony Chaidinis on 14/02/2023.
//

import SwiftUI

struct RemoveVowels: View {
  @State var text = String()
  let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
  var body: some View {
        Text("Give a string for the vowels to be removed")
      TextField("Give a string", text: $text)
      Button("remove vowels") {
        text.removeAll(where: { vowels.contains($0)})
        print(text)
      }
  }
}

struct RemoveVowels_Previews: PreviewProvider {
    static var previews: some View {
        RemoveVowels()
    }
}

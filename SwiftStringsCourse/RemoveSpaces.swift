//
//  RemoveSpaces.swift
//  SwiftStringsCourse
//
//  Created by Tony Chaidinis on 15/02/2023.
//

import SwiftUI

struct RemoveSpaces: View {
  @State var text = String()
  
  let space: Set<Character> = [" "]
    var body: some View {
      Text("Give a string for the vowels to be removed")
      TextField("Give a string", text: $text)
      Button("Remove The spaces") {
        text.removeAll(where: { space.contains($0) })
      }
    }
}

struct RemoveSpaces_Previews: PreviewProvider {
    static var previews: some View {
        RemoveSpaces()
    }
}

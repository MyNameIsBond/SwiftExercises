//
//  CapitalizeString.swift
//  SwiftStringsCourse
//
//  Created by Tony Chaidinis on 12/02/2023.
//

import SwiftUI

struct CapitalizeString: View {
  @State var text = String()
  @State var myArray: [String] = Array()
    var body: some View {
      Text("Capitalise each word of the string.")
      TextField("Add String", text: $text)
      Button("Submit") {
        myArray = text.components(separatedBy: " ")
          myArray.enumerated().forEach { word in
              myArray[word.offset] = word.element.capitalized
        }
      }
    }
}

struct CapitalizeString_Previews: PreviewProvider {
    static var previews: some View {
        CapitalizeString()
    }
}

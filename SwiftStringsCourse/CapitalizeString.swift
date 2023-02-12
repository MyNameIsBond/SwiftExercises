//
//  CapitalizeString.swift
//  SwiftStringsCourse
//

import SwiftUI

struct CapitalizeString: View {
  @State var text = String()
  @State var myArray: [String] = Array()
  @State var show = "Give us a String"
  var body: some View {
    VStack {
      Text("Capitalise each word of the string.")
      Text("--> \(show) <--")
      TextField("Add String", text: $text)
      Button("Submit") {
        myArray = text.components(separatedBy: " ")
        myArray.enumerated().forEach { word in
          myArray[word.offset] = word.element.capitalized
        }
        show = myArray.joined(separator: " ")
      }
    }
  }
}

struct CapitalizeString_Previews: PreviewProvider {
    static var previews: some View {
        CapitalizeString()
    }
}

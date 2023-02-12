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
      Text("Seperate, and capitalise each word of the string.")
      TextField("Add String", text: $text)
      Button("Submit") {
        myArray = text.components(separatedBy: " ")
        print(myArray)
        
        myArray.forEach { word in
          myArray[0] = "This"
        }
        print(myArray)
        
      }
    }
}

struct CapitalizeString_Previews: PreviewProvider {
    static var previews: some View {
        CapitalizeString()
    }
}

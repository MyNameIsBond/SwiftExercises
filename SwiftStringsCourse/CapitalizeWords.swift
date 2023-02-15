//
//  CapitalizeWords.swift
//  SwiftStringsCourse
//
//  Created by Tony Chaidinis on 15/02/2023.
//

import SwiftUI

struct CapitalizeWords: View {
  @State var text = String()
    var body: some View {
      Text("Give me a string to capitalize each word")
      TextField("Give me a string", text: $text)
      Button("Submit") {
        var myArray = text.components(separatedBy: " ")
        for word in myArray.indices {
          myArray[word] = myArray[word].lowercased().capitalized
        }
        text = myArray.joined(separator: " ")
        myArray.removeAll()
      }
    }
}

struct CapitalizeWords_Previews: PreviewProvider {
    static var previews: some View {
        CapitalizeWords()
    }
}

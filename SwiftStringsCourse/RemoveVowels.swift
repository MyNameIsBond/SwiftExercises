//
//  RemoveVowels.swift
//  SwiftStringsCourse
//
//  Created by Tony Chaidinis on 14/02/2023.
//

import SwiftUI

enum Vowels {
  case a, o, u, i, e
  
  func isAVowel() -> Bool {
       switch self {
       case .a, .o, .u, .i, .e:
           return  true
       default:
           return false
       }
    }
}

struct RemoveVowels: View {
  @State var text = String()
    var body: some View {
        Text("Give a string for the vowels to be removed")
      TextField("Give a string", text: $text)
      Button("submit") {
        for char in text {
          print("Vowels: \(char)")
          if Vowels.e.isAVowel() != nil {
            print("Vowels: \(Vowels.e)")
          }
        }
      }
    }
}

struct RemoveVowels_Previews: PreviewProvider {
    static var previews: some View {
        RemoveVowels()
    }
}

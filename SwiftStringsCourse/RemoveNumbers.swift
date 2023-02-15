//
//  RemoveNumbers.swift
//  SwiftStringsCourse
//


import SwiftUI

struct RemoveNumbers: View {
  @State var text = String()
  @State var nums: Set<Character> = ["1","2","3","4","5","6","7", "8", "9", "0"]
    var body: some View {
        Text("Give me a string to remove numbers")
      TextField("Add your text", text: $text)
      Button("Submit") {
        text.removeAll(where: { nums.contains($0) })
      }
    }
}

struct RemoveNumbers_Previews: PreviewProvider {
    static var previews: some View {
        RemoveNumbers()
    }
}

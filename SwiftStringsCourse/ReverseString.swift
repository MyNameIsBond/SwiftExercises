//
//  ReverseString.swift
//  SwiftStringsCourse
//

import SwiftUI

struct ReverseString: View {
    @State var text = String()
    @State var reversed = String()
    @State var characters: [Character] = Array()
    var body: some View {
        Text("Reverse String...\(reversed)")
        
        VStack {
            TextField("", text: $text)
            Button("Subnit") {
                characters = Array(text.trimmingCharacters(in: .whitespacesAndNewlines))
                characters = characters.reversed()
                reversed = String(characters)
                
            }
        }
    }
}

struct ReverseString_Previews: PreviewProvider {
    static var previews: some View {
        ReverseString()
    }
}

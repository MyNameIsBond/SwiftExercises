//
//  ReverseString.swift
//  SwiftStringsCourse
//
//  Created by Tony Chaidinis on 12/02/2023.
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

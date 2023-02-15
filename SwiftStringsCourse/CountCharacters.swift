//
//  CountCharacters.swift
//  SwiftStringsCourse
//
//  Created by Tony Chaidinis on 12/02/2023.
//

import SwiftUI

struct CountCharacters: View {
    @State var text = String()
    @State var number = 0
    var body: some View {
        VStack {
            Text("Give me a string!")
            Text("This Many Characters: \(number)")
            VStack {
                TextField("Search...", text: $text)
                Button("Submit", action: {
                  number = Array(text.trimmingCharacters(in: .whitespacesAndNewlines)).count
                    print()
                    }) 
            }
        }.padding()
    }
}

struct CountCharacters_Previews: PreviewProvider {
    static var previews: some View {
        CountCharacters()
    }
}

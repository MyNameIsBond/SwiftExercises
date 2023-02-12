//
//  ConcatenatedString.swift
//  SwiftStringsCourse
//
//  Created by Tony Chaidinis on 12/02/2023.
//

import SwiftUI

struct ConcatenatedString: View {
    @State var text = String()
    @State var text2 = String()
    @State var text3 = String()

    var body: some View {
        VStack{
            Text("Concatenate the strings! \(text3)")
            TextField("first Text", text: $text)
            TextField("Second Text", text: $text2)
            Button("Submit") {
                text3 = text + " " + text2
            }
        }
    }
}

struct ConcatenatedString_Previews: PreviewProvider {
    static var previews: some View {
        ConcatenatedString()
    }
}

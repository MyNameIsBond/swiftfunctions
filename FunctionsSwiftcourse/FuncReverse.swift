//
//  funcReverse.swift
//  FunctionsSwiftcourse
//
//  Created by Tony Chaidinis on 16/02/2023.
//

import SwiftUI

struct FuncReverse: View {
  @State var text = String()
    var body: some View {
        Text("Give a String to be reversed")
        TextField("Give a string", text: $text)
      Button("Submit") {
        text = reverseString(str: text)
      }
    }
}

func reverseString(str: String) -> String {
  return String(str.reversed())
}

struct FuncReverse_Previews: PreviewProvider {
    static var previews: some View {
        FuncReverse()
    }
}

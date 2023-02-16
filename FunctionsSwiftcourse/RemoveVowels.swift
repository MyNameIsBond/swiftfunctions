//
//  RemoveVowels.swift
//  FunctionsSwiftcourse
//

import SwiftUI

struct RemoveVowels: View {
  @State var text = String()
  @State var counter = Int()
    var body: some View {
        Text("Give Me a string to tell you how many vowels has")
      Text("This many \(counter) vowels")
      TextField("type here", text: $text)
      Button("Submit") {
        counter = VowelsCounter(str: text)
      }
    }
}

func VowelsCounter(str: String) -> Int {
  var newStr = str
  var consts: Set<Character> = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "x", "z", "w", "y"]
   newStr.removeAll(where: { consts.contains($0) })
  return newStr.count
}

struct RemoveVowels_Previews: PreviewProvider {
    static var previews: some View {
        RemoveVowels()
    }
}

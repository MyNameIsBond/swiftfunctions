//
//  RemoveWordWithA.swift
//  FunctionsSwiftcourse
//

import SwiftUI

struct RemoveWordWithA: View {
  @State var text = String()
    var body: some View {
        Text("This Func will remove all the word in an array starting with the letter A")
        TextField("Give me a phrase!", text: $text)
      Button("Submit") {
        print(
          removeWordFromA(arr: text.components(separatedBy: " "))
        )
      }
    }
}

func removeWordFromA(arr: [String]) -> [String] {
  var err = arr
  err.removeAll(where: { Array($0)[0].lowercased() == "a"})
  return err
}

struct RemoveWordWithA_Previews: PreviewProvider {
    static var previews: some View {
        RemoveWordWithA()
    }
}

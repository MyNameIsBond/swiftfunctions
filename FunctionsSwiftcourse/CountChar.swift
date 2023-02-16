//
//  CountChar.swift
//  FunctionsSwiftcourse
//

import SwiftUI

struct CountChar: View {
  @State var text = String()
    var body: some View {
        Text("Give me a string to count the String in the sentence.")
      TextField("Add Here", text: $text)
      Button("Submit") {
        print(countChars(arr: text.components(separatedBy: " ")))
      }
    }
}

func countChars(arr: [String]) -> [Int] {
  
  var myArray:[Int] = []
  
  for word in arr.indices {
    myArray.append(arr[word].count)
  }
  
  return myArray
}

struct CountChar_Previews: PreviewProvider {
    static var previews: some View {
        CountChar()
    }
}

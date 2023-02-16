//
//  PalindromeWord.swift
//  FunctionsSwiftcourse
//

import SwiftUI

struct PalindromeWord: View {
  @State var text = String()
    var body: some View {
        Text("Give me a word to tell you if is a palindrome word. (it is the same word if read backwards.)")
      TextField("", text: $text)
      Button("Submit") {
        print(
          isPalindrome(str: text)
        )
      }
    }
}

func isPalindrome(str: String) -> Bool {
  let myStr = str
  if myStr.lowercased() == String(myStr.reversed()).lowercased() {
    return true
  } else {
   return false
  }
}

struct PalindromeWord_Previews: PreviewProvider {
    static var previews: some View {
        PalindromeWord()
    }
}

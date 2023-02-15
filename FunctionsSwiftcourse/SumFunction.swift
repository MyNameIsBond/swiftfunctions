//
//  SwiftUIView.swift
//  FunctionsSwiftcourse
//
//  Created by Tony Chaidinis on 15/02/2023.
//

import SwiftUI

struct SumFunction: View {
  @State var text = String()
  @State var numSum = Int()
    var body: some View {
      TextField("Give me two numbers seperated with plus + ", text: $text)
      Text("The sum \(numSum)")
      Button("Add two numbers") {
        var e = text.components(separatedBy: "+")
        numSum = sum(number1: Int(e[0])!, number2: Int(e[1])!)
      }
    }
}

func sum(number1: Int, number2: Int) -> Int {
  return number1 + number2
}

struct SumFunction_Previews: PreviewProvider {
    static var previews: some View {
      SumFunction()
    }
}

//
//  SwiftUIView.swift
//  FunctionsSwiftcourse
//
//  Created by Tony Chaidinis on 16/02/2023.
//

import SwiftUI

struct SumArray: View {
  
    var body: some View {
      Text("Random Numbers will be added")
      Text("\(ArraySum(arr: [2,3,4,5,6]))")
    }
  
}

func ArraySum(arr: [Int]) -> Int {
  var sum = 0
  for num in arr {
    sum = num + sum
  }
  return sum
}

struct SumArray_Previews: PreviewProvider {
    static var previews: some View {
      SumArray()
    }
}

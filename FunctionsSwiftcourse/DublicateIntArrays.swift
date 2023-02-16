//
//  DuplicateIntArrays.swift
//  FunctionsSwiftcourse
//
//  Created by Tony Chaidinis on 16/02/2023.
//

import SwiftUI

struct DublicateIntArrays: View {
    var body: some View {
        Text("This will return the dublicate numbers in an array")
      Button("Submit") {
        print(
          dublicateArray(arr1: [1,2,3,4,5,6,7,8, 12], arr2: [1,4,6,2,3,12])
        )
      }
    }
}

func dublicateArray(arr1: [Int], arr2: [Int]) -> [Int] {
  var myArr1 = arr1
  let myArr2 = arr2
  myArr1.removeAll(where: { !myArr2.contains($0) })
  return myArr1
  
}

struct DublicateIntArrays_Previews: PreviewProvider {
    static var previews: some View {
        DublicateIntArrays()
    }
}

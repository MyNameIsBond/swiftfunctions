//
//  RemoveOddInts.swift
//  FunctionsSwiftcourse
//

import SwiftUI

struct RemoveOddInts: View {
    var body: some View {
        Text("Remove Odd Ints from an Array")
      Button("Submit") {
        removeOdds(arr: [1,2,3,4,5,6,7,8,9,0])
      }
    }
}

func removeOdds(arr: [Int]) -> [Int] {
  var err = arr
  err.removeAll(where: {$0 % 2 == 0})
  return err
}

struct RemoveOddInts_Previews: PreviewProvider {
    static var previews: some View {
        RemoveOddInts()
    }
}

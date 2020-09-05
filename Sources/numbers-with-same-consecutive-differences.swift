import Foundation

extension Solution {
  func numsSameConsecDiff(_ count: Int, _ difference: Int) -> [Int] {
    if count == 1 {
      return Array(0 ... 9)
    }

    var result: [Int] = []

    func visit(_ count: Int, _ values: [Int]) {
      if count == 0 {
        return result.append(values.numberValue)
      }

      for value in 0 ... 9 where abs(Double(values.last!) - Double(value)) == Double(difference) {
        visit(count - 1, values + [value])
      }
    }

    for i in 1 ... 9 {
      visit(count - 1, [i])
    }

    return result
  }
}

extension Array where Element == Int {
  var numberValue: Int {
    var factor = 1
    var result = 0

    for index in indices.reversed() {
      result += factor * self[index]
      factor *= 10
    }

    return result
  }
}

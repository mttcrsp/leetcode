/// https://leetcode.com/problems/maximum-length-of-subarray-with-positive-product/
struct MaximumLengthOfSubarrayWithPositiveProduct {
  func getMaxLen(_ numbers: [Int]) -> Int {
    var slices: [[Int]] = [[]]
    for number in numbers {
      if number == 0 {
        slices.append([])
      } else {
        slices[slices.count-1].append(number)
      }
    }

    return slices.map(Partition.init).map(\.maxLen).max() ?? 0
  }
}

private struct Partition {
  let negativeIndices: [Int]
  let count: Int

  init(numbers: [Int]) {
    var negativeIndices: [Int] = []
    for (index, number) in numbers.enumerated() where number < 0 {
      negativeIndices.append(index)
    }

    self.negativeIndices = negativeIndices
    count = numbers.count
  }

  var maxLen: Int {
    if negativeIndices.count%2 == 0 {
      return count
    } else {
      let lhsIndex = negativeIndices.first!
      let rhsIndex = negativeIndices.last!
      return max(count-lhsIndex-1, rhsIndex)
    }
  }
}

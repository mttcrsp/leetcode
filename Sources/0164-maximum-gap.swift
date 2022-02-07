import Foundation

struct MaximumGap {
  func maximumGap(_ numbers: [Int]) -> Int {
    var numbers = numbers
    numbers.radixSort(10)

    var max = 0
    for i in numbers.indices.dropLast() {
      let lhs = numbers[i]
      let rhs = numbers[i + 1]
      max = Swift.max(max, rhs - lhs)
    }
    return max
  }
}

private extension RangeReplaceableCollection where Element == Int {
  mutating func radixSort(_ radix: Int = 10) {
    guard let max = self.max() else { return }

    var divider = 1

    while divider <= max {
      var buckets = [[Int]](repeating: [], count: Int(radix))
      for integer in self {
        buckets[Int((integer / divider) % radix)].append(integer)
      }

      var startIndex = self.startIndex
      for bucket in buckets {
        let endIndex = index(startIndex, offsetBy: bucket.count)
        replaceSubrange(startIndex ..< endIndex, with: bucket)
        startIndex = endIndex
      }

      divider *= radix
    }
  }
}

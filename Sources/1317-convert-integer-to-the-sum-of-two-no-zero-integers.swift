/// https://leetcode.com/problems/convert-integer-to-the-sum-of-two-no-zero-integers/
struct ConvertIntegerToTheSumOfTwoNoZeroIntegers {
  func getNoZeroIntegers(_ n: Int) -> [Int] {
    var i = 1
    while true {
      if !(n - i).digits.contains(0) {
        return [i, n - i]
      }

      repeat {
        i += 1
      } while
        i.digits.contains(0)
    }
  }
}

private extension Int {
  var digits: Set<Int> {
    var digits: Set<Int> = []
    var remainder = self

    while remainder > 0 {
      digits.insert(remainder % 10)
      remainder /= 10
    }

    return digits
  }
}

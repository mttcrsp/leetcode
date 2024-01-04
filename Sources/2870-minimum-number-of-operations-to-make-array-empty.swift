/// https://leetcode.com/problems/minimum-number-of-operations-to-make-array-empty/
struct MinimumNumberOfOperationsToMakeArrayEmpty {
  func minOperations(_ nums: [Int]) -> Int {
    var frequencies: [Int: Int] = [:]
    for num in nums {
      frequencies[num, default: 0] += 1
    }

    var operations = 0
    for (_, frequency) in frequencies {
      if frequency == 1 {
        return -1
      } else if frequency.isMultiple(of: 3) {
        operations += frequency/3
      } else if (frequency-2).isMultiple(of: 3) {
        operations += 1+((frequency-2)/3)
      } else {
        operations += 2+((frequency-4)/3)
      }
    }

    return operations
  }
}

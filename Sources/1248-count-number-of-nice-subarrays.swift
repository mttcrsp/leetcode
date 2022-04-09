/// https://leetcode.com/problems/count-number-of-nice-subarrays/
struct CountNumberOfNiceSubarrays {
  func numberOfSubarrays(_ nums: [Int], _ k: Int) -> Int {
    var oddNumbersRunningCount = 0
    var subarraysRunningCount = 0
    var result = 0

    var lowerbound = 0
    for upperbound in nums.indices {
      if nums[upperbound].isOdd {
        oddNumbersRunningCount += 1
        subarraysRunningCount = 0
      }

      while oddNumbersRunningCount == k {
        if nums[lowerbound].isOdd {
          oddNumbersRunningCount -= 1
        }

        subarraysRunningCount += 1
        lowerbound += 1
      }

      result += subarraysRunningCount
    }

    return result
  }
}

private extension Int {
  var isOdd: Bool {
    self % 2 == 1
  }
}

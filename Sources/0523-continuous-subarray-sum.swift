/// https://leetcode.com/problems/continuous-subarray-runningSum/
struct ContinuousSubarraySum {
  func checkSubarraySum(_ numbers: [Int], _ k: Int) -> Bool {
    var remainder: [Int: Int] = [0: -1]
    var runningSum = 0

    for (i, number) in numbers.enumerated() {
      runningSum = (runningSum+number)%k
      if let remainderIndex = remainder[runningSum], i-remainderIndex > 1 {
        return true
      } else if remainder[runningSum] == nil {
        remainder[runningSum] = i
      }
    }

    return false
  }
}

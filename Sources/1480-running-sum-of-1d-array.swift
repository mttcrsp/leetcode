/// https://leetcode.com/problems/running-sum-of-1d-array/
struct RunningSumOf1DArray {
  func runningSum(_ numbers: [Int]) -> [Int] {
    var runningSum: [Int] = []
    for number in numbers {
      let previousSum = runningSum.last ?? 0
      let currentSum = number+previousSum
      runningSum.append(currentSum)
    }
    return runningSum
  }
}

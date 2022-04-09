/// https://leetcode.com/problems/maximize-sum-of-array-after-k-negations/
struct MaximizeSumOfArrayAfterKNegations {
  func largestSumAfterKNegations(_ A: [Int], _ K: Int) -> Int {
    guard !A.isEmpty else { return 0 }

    var values = A.sorted()
    var toggles = K
    var i = 0

    // Toggle as many negative numbers as possible
    while toggles > 0, i < values.count, values[i] < 0 {
      values[i] *= -1; toggles -= 1; i += 1
    }

    // Consume remaining toggles on the smallest element
    if toggles > 0, toggles % 2 == 1 {
      values.sort(); values[0] *= -1
    }

    var sum = 0
    for value in values {
      sum += value
    }
    return sum
  }
}

/// https://leetcode.com/problems/smallest-range-i/
struct SmallestRangeI {
  func smallestRangeI(_ A: [Int], _ K: Int) -> Int {
    var min = A[0]
    var max = A[0]

    for a in A {
      if a < min { min = a }
      if a > max { max = a }
    }

    return Swift.max(0, max-min-(2*K))
  }
}

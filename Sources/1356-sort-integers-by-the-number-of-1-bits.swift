/// https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits/
struct SortIntegersByTheNumberOf1Bits {
  func sortByBits(_ numbers: [Int]) -> [Int] {
    numbers.sorted { lhs, rhs in
      if lhs.nonzeroBitCount == rhs.nonzeroBitCount {
        lhs < rhs
      } else {
        lhs.nonzeroBitCount < rhs.nonzeroBitCount
      }
    }
  }
}

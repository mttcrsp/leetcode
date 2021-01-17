struct SortIntegersByTheNumberOf1Bits {
  func sortByBits(_ numbers: [Int]) -> [Int] {
    numbers.sorted { lhs, rhs in
      if lhs.nonzeroBitCount == rhs.nonzeroBitCount {
        return lhs < rhs
      } else {
        return lhs.nonzeroBitCount < rhs.nonzeroBitCount
      }
    }
  }
}

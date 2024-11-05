/// https://leetcode.com/problems/minimum-number-of-changes-to-make-binary-string-beautiful/
struct MinimumNumberOfChangesToMakeBinaryStringBeautiful {
  func minChanges(_ s: String) -> Int {
    var result = 0
    var index = s.startIndex
    while index < s.endIndex {
      let rhsIndex = s.index(after: index)
      let lhs = s[index]
      let rhs = s[rhsIndex]
      if lhs != rhs { result += 1 }
      index = s.index(after: rhsIndex)
    }

    return result
  }
}

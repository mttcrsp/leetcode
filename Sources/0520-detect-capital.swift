/// https://leetcode.com/problems/detect-capital/
struct DetectCapital {
  func detectCapitalUse(_ word: String) -> Bool {
    for (offset, (lhs, rhs)) in zip(word, word.dropFirst()).enumerated() {
      switch (offset, lhs.isUppercase, rhs.isUppercase) {
      case (0, true, false), (_, true, true), (_, false, false):
        break
      case (_, _, _):
        return false
      }
    }
    return true
  }
}

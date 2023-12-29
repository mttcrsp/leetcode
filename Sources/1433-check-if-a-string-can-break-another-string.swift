/// https://leetcode.com/problems/check-if-a-string-can-break-another-string/
struct CheckIfAStringCanBreakAnotherString {
  func checkIfCanBreak(_ s1: String, _ s2: String) -> Bool {
    let sorted1 = s1.sorted()
    let sorted2 = s2.sorted()
    return sorted1.breaks(sorted2) || sorted2.breaks(sorted1)
  }
}

private extension [Character] {
  func breaks(_ other: [Character]) -> Bool {
    zip(self, other).allSatisfy { lhs, rhs in
      lhs.asciiValue! >= rhs.asciiValue!
    }
  }
}

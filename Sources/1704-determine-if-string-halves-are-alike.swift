/// https://leetcode.com/problems/determine-if-string-halves-are-alike/
struct DetermineIfStringHalvesAreAlike {
  func halvesAreAlike(_ s: String) -> Bool {
    let vowels: Set<Character> =
      ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
    var lhsCount = 0
    var rhsCount = 0
    var lhs = s.startIndex
    var rhs = s.index(before: s.endIndex)
    while lhs < rhs {
      let lhsCharacter = s[lhs]
      let rhsCharacter = s[rhs]
      if vowels.contains(lhsCharacter) { lhsCount += 1 }
      if vowels.contains(rhsCharacter) { rhsCount += 1 }
      lhs = s.index(after: lhs)
      rhs = s.index(before: rhs)
    }
    return lhsCount == rhsCount
  }
}

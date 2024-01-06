/// https://leetcode.com/problems/reverse-vowels-of-a-string/
struct ReverseVowelsOfAString {
  func reverseVowels(_ s: String) -> String {
    let vowels: Set<Character> = [
      "a", "e", "i", "o", "u",
      "A", "E", "I", "O", "U",
    ]

    var s = s
    var lhs = s.startIndex
    var rhs = s.index(before: s.endIndex)
    while lhs < rhs {
      let lhsChar = s[lhs]
      let rhsChar = s[rhs]
      guard vowels.contains(lhsChar)
      else { lhs = s.index(after: lhs); continue }
      guard vowels.contains(rhsChar)
      else { rhs = s.index(before: rhs); continue }
      s.replaceSubrange(lhs ... lhs, with: [rhsChar])
      s.replaceSubrange(rhs ... rhs, with: [lhsChar])
      lhs = s.index(after: lhs)
      rhs = s.index(before: rhs)
    }

    return s
  }
}

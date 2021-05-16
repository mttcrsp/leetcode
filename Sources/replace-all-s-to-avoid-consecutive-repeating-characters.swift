struct ReplaceAllSToAvoidConsecutiveRepeatingCharacters {
  func modifyString(_ s: String) -> String {
    var s = s

    for index in s.indices {
      let lhs: Character = index == s.startIndex ? "z" : s[s.index(before: index)]
      let rhs: Character = index == s.index(before: s.endIndex) ? "z" : s[s.index(after: index)]
      if s[index] == "?" {
        s.replaceSubrange(index ... index, with: replacement(withLhs: lhs, rhs: rhs))
      }
    }

    return s
  }

  private func replacement(withLhs lhs: Character, rhs: Character) -> String {
    var replacements: Set<Character> = ["a", "b", "c"]
    replacements.remove(lhs)
    replacements.remove(rhs)
    return String(replacements.first!)
  }
}

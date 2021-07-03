struct LongestSubstringWithoutRepeatingCharacters {
  func lengthOfLongestSubstring(_ s: String) -> Int {
    let characters = Array(s)

    var max = 0
    var rhs = 0

    for lhs in characters.indices {
      while rhs < characters.count, Set(characters[lhs ... rhs]).count >= rhs - lhs + 1 {
        max = Swift.max(max, rhs - lhs + 1)
        rhs += 1
      }
    }

    return max
  }
}

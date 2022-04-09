struct LongestSubstringWithoutRepeatingCharacters {
  func lengthOfLongestSubstring(_ s: String) -> Int {
    var previousIndex: [Character: Int] = [:]
    var max = 0, start = 0

    for (i, char) in s.enumerated() {
      if let j = previousIndex[char] {
        start = Swift.max(start, j + 1)
      }

      previousIndex[char] = i
      max = Swift.max(max, i - start + 1)
    }

    return max
  }
}

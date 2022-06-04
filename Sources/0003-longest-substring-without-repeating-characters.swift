/// https://leetcode.com/problems/longest-substring-without-repeating-characters/
struct LongestSubstringWithoutRepeatingCharacters {
  func lengthOfLongestSubstring(_ s: String) -> Int {
    var lastCharacterIndices: [Character: Int] = [:]
    var lastRepetitionIndex = -1
    var maxLength = 0

    for (index, character) in s.enumerated() {
      if let repetitionIndex = lastCharacterIndices[character] {
        lastRepetitionIndex = repetitionIndex
      }

      maxLength = max(maxLength, index - lastRepetitionIndex)
      lastCharacterIndices[character] = index
    }

    return maxLength
  }
}

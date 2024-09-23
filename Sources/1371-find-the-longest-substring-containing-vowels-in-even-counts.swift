/// https://leetcode.com/problems/find-the-longest-substring-containing-vowels-in-even-counts/
struct FindTheLongestSubstringContainingVowelsInEvenCounts {
  func findTheLongestSubstring(_ s: String) -> Int {
    let masks: [Character: Int] = ["a": 1 << 1, "e": 1 << 2, "i": 1 << 3, "o": 1 << 4, "u": 1 << 5]

    var result = 0
    var prefix = 0
    var prefixIndices: [Int: Int] = [0: -1]
    for (i, c) in s.enumerated() {
      prefix ^= masks[c, default: 0]
      let prefixIndex = prefixIndices[prefix, default: i]
      prefixIndices[prefix] = prefixIndex
      result = max(result, i-prefixIndex)
    }

    return result
  }
}

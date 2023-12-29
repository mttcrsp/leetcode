/// https://leetcode.com/problems/largest-substring-between-two-equal-characters/
struct LargestSubstringBetweenTwoEqualCharacters {
  func maxLengthBetweenEqualCharacters(_ s: String) -> Int {
    var max = -1
    var firstOccurrences: [Character: Int] = [:]
    for (index, character) in Array(s).enumerated() {
      if let firstOccurrence = firstOccurrences[character] {
        max = Swift.max(max, index-firstOccurrence-1)
      } else {
        firstOccurrences[character] = index
      }
    }
    return max
  }
}

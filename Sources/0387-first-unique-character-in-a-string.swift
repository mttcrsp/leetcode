/// https://leetcode.com/problems/first-unique-character-in-a-string/
struct FirstUniqueCharacterInAString {
  func firstUniqChar(_ s: String) -> Int {
    var occurrences: [Character: Int] = [:]
    for character in s {
      occurrences[character, default: 0] += 1
    }

    for (offset, character) in s.enumerated() {
      if occurrences[character] == 1 {
        return offset
      }
    }

    return -1
  }
}

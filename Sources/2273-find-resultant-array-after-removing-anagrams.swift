/// https://leetcode.com/problems/find-resultant-array-after-removing-anagrams/
struct FindResultantArrayAfterRemovingAnagrams {
  func removeAnagrams(_ words: [String]) -> [String] {
    var result: [String] = []
    var previous: [Character: Int] = [:]
    for word in words {
      var current: [Character: Int] = [:]
      for character in word {
        current[character, default: 0] += 1
      }

      if previous != current {
        result.append(word)
        previous = current
      }
    }

    return result
  }
}

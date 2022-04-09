/// https://leetcode.com/problems/check-if-all-characters-have-equal-number-of-occurrences/
struct CheckIfAllCharactersHaveEqualNumberOfOccurrences {
  func areOccurrencesEqual(_ s: String) -> Bool {
    var countForCharacter: [Character: Int] = [:]
    for character in s {
      countForCharacter[character, default: 0] += 1
    }

    let counts = countForCharacter.values
    return counts.allSatisfy { count in
      count == counts.first
    }
  }
}

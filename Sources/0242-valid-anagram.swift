/// https://leetcode.com/problems/valid-anagram/
struct ValidAnagram {
  func isAnagram(_ s: String, _ t: String) -> Bool {
    guard s.count == t.count else { return false }

    var occurrences = [Int](repeating: 0, count: 26)
    for character in s {
      occurrences[character.alphabeticalValue] += 1
    }

    for character in t {
      occurrences[character.alphabeticalValue] -= 1
      if occurrences[character.alphabeticalValue] < 0 {
        return false
      }
    }
    return true
  }
}

private extension Character {
  var alphabeticalValue: Int {
    Int(asciiValue!-97)
  }
}

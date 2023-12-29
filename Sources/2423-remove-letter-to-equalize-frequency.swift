/// https://leetcode.com/problems/remove-letter-to-equalize-frequency/
struct RemoveLetterToEqualizeFrequency {
  func equalFrequency(_ word: String) -> Bool {
    var frequencies: [Character: Int] = [:]
    for character in word {
      frequencies[character, default: 0] += 1
    }

    for character in word {
      frequencies[character]! -= 1
      if Set(frequencies.values.filter { $0 != 0 }).count == 1 {
        return true
      }
      frequencies[character]! += 1
    }

    return false
  }
}

struct FindAllAnagramsInAString {
  func findAnagrams(_ string: String, _ pattern: String) -> [Int] {
    if string.count < pattern.count {
      return []
    }

    var counts: [Character: Int] = [:]
    for character in pattern {
      counts.increment(character)
    }

    let patternLength = pattern.count
    let s = Array(string)

    var anagramIndices: [Int] = []
    for (i, character) in s.enumerated() {
      counts.decrement(character)

      if i - patternLength >= 0 {
        counts.increment(s[i - patternLength])
      }

      if i - patternLength + 1 >= 0, counts.count == 0 {
        anagramIndices.append(i - patternLength + 1)
      }
    }

    return anagramIndices
  }
}

extension Dictionary where Key == Character, Value == Int {
  mutating func increment(_ key: Character) {
    let oldValue = self[key, default: 0]
    let newValue = oldValue + 1
    self[key] = newValue == 0 ? nil : newValue
  }

  mutating func decrement(_ key: Character) {
    let oldValue = self[key, default: 0]
    let newValue = oldValue - 1
    self[key] = newValue == 0 ? nil : newValue
  }
}

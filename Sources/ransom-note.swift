struct RansomNote {
  func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    guard !ransomNote.isEmpty else {
      return true
    }

    var occurrences: [Character: Int] = [:]
    for character in ransomNote {
      occurrences[character, default: 0] += 1
    }

    for character in magazine {
      guard let count = occurrences[character] else {
        continue
      }

      switch (count, occurrences.count) {
      case (1, 1):
        return true
      case (1, _):
        occurrences.removeValue(forKey: character)
      case (_, _):
        occurrences[character] = count - 1
      }
    }

    return false
  }
}

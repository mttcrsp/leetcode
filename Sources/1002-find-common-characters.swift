/// https://leetcode.com/problems/find-common-characters/
struct FindCommonCharacters {
  func commonChars(_ words: [String]) -> [String] {
    guard let first = words.first else { return [] }

    var commonFreqs = frequencies(in: first)
    for word in words.dropFirst() {
      commonFreqs.intersect(frequencies(in: word))
    }

    var commonChars: [String] = []
    for (character, count) in commonFreqs {
      for _ in 0 ..< count {
        commonChars.append(String(character))
      }
    }

    return commonChars
  }

  private func frequencies(in word: String) -> [Character: Int] {
    var frequencies: [Character: Int] = [:]
    for character in word {
      frequencies[character, default: 0] += 1
    }

    return frequencies
  }
}

private extension [Character: Int] {
  mutating func intersect(_ other: [Character: Int]) {
    for (character, characterCount) in self {
      let otherCount = other[character, default: 0]
      if otherCount > 0 {
        self[character] = Swift.min(characterCount, otherCount)
      } else {
        self[character] = nil
      }
    }
  }
}

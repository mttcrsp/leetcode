struct BuddyStrings {
  func buddyStrings(_ a: String, _ b: String) -> Bool {
    guard a.count == b.count else {
      return false
    }

    enum State: Equatable {
      case initial
      case foundMismatch1(charA: Character, charB: Character)
      case foundMismatch2
    }

    var characterSet: Set<Character> = []
    var state: State = .initial
    for (charA, charB) in zip(a, b) {
      characterSet.insert(charA)

      guard charA != charB else {
        continue
      }

      switch state {
      case .initial:
        state = .foundMismatch1(charA: charA, charB: charB)
      case let .foundMismatch1(previousCharA, previousCharB):
        if previousCharA == charB, previousCharB == charA {
          state = .foundMismatch2
        } else {
          return false
        }
      case .foundMismatch2:
        return false
      }
    }

    switch state {
    case .initial:
      return characterSet.count < a.count
    case .foundMismatch1:
      return false
    case .foundMismatch2:
      return true
    }
  }
}

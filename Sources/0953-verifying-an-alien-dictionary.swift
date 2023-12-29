/// https://leetcode.com/problems/verifying-an-alien-dictionary/
struct VerifyingAnAlienDictionary {
  func isAlienSorted(_ words: [String], _ order: String) -> Bool {
    var alphabeticalIndex: [Character: Int] = [:]
    for (i, character) in order.enumerated() {
      alphabeticalIndex[character] = i
    }

    outer: for i in words.indices.dropLast() {
      let lhsWord = words[i], rhsWord = words[i+1]

      for (lhsCharacter, rhsCharacter) in zip(lhsWord, rhsWord) where lhsCharacter != rhsCharacter {
        guard
          let lhsIndex = alphabeticalIndex[lhsCharacter],
          let rhsIndex = alphabeticalIndex[rhsCharacter]
        else {
          preconditionFailure("Unknown character found")
        }

        if lhsIndex < rhsIndex {
          continue outer
        } else if lhsIndex > rhsIndex {
          return false
        }
      }

      if lhsWord.count > rhsWord.count {
        return false
      }
    }

    return true
  }
}

/// https://leetcode.com/problems/redistribute-characters-to-make-all-strings-equal/
struct RedistributeCharactersToMakeAllStringsEqual {
  func makeEqual(_ words: [String]) -> Bool {
    var frequencies: [Character: Int] = [:]
    for word in words {
      for character in word {
        frequencies[character, default: 0] += 1
      }
    }

    return frequencies.values.allSatisfy { frequency in
      frequency.isMultiple(of: words.count)
    }
  }
}

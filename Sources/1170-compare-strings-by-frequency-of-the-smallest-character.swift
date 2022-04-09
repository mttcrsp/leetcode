/// https://leetcode.com/problems/compare-strings-by-frequency-of-the-smallest-character/
struct CompareStringsByFrequencyOfTheSmallestCharacter {
  func numSmallerByFrequency(_ queries: [String], _ words: [String]) -> [Int] { // [UInt]
    let queriesFrequencies = queries.map(frequencyOfSmallestCharacter)

    var wordsFrequenciesCounts: [Int: Int] = [:]
    for word in words {
      let frequency = frequencyOfSmallestCharacter(in: word)
      let oldCount = wordsFrequenciesCounts[frequency] ?? 0
      let newCount = oldCount + 1
      wordsFrequenciesCounts[frequency] = newCount
    }

    var result: [Int] = []

    for queryFrequency in queriesFrequencies {
      var number = 0
      for (frequency, count) in wordsFrequenciesCounts where queryFrequency < frequency { // Use of a sorted dictionary would further optimize this as you could save up on a lot of unnecessary comparisons.
        number += count
      }
      result.append(number)
    }

    return result
  }

  private func frequencyOfSmallestCharacter(in word: String) -> Int { // UInt
    guard let firstCharacter = word.first else { return 0 }

    var smallestCharacter = firstCharacter
    var frequency = 1

    for character in word.dropFirst() {
      if character == smallestCharacter {
        frequency += 1
      } else if character < smallestCharacter {
        frequency = 1
        smallestCharacter = character
      }
    }

    return frequency
  }
}

/// https://leetcode.com/problems/minimum-number-of-pushes-to-type-word-i/
struct MinimumNumberOfPushesToTypeWordI {
  func minimumPushes(_ word: String) -> Int {
    var frequencies: [Character: Int] = [:]
    for character in word {
      frequencies[character, default: 0] += 1
    }

    let sortedFrequencies = frequencies.sorted {
      $0.value > $1.value
    }

    var costs: [Character: Int] = [:]
    var i = 0
    for (character, _) in sortedFrequencies {
      costs[character] = (i/8)+1
      i += 1
    }

    var cost = 0
    for character in word {
      cost += costs[character, default: 0]
    }
    return cost
  }
}

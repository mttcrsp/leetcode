/// https://leetcode.com/problems/find-common-characters/
struct FindCommonCharacters {
  func commonChars(_ strings: [String]) -> [String] {
    var occurrencesInStrings = [[Character: Int]](repeating: [:], count: strings.count)
    for (index, string) in strings.enumerated() {
      for character in string {
        occurrencesInStrings[index][character, default: 0] += 1
      }
    }

    var charactersCounts: [Character: [Int]] = [:]
    for occurrences in occurrencesInStrings {
      for (character, count) in occurrences {
        charactersCounts[character, default: []].append(count)
      }
    }

    var result: [String] = []
    for (character, counts) in charactersCounts {
      if counts.count == strings.count, let min = counts.min() {
        result.append(contentsOf: [String](repeating: "\(character)", count: min))
      }
    }
    return result
  }
}

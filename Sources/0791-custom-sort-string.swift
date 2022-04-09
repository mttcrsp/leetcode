/// https://leetcode.com/problems/custom-sort-string/
struct CustomSortString {
  func customSortString(_ S: String, _ T: String) -> String {
    guard !S.isEmpty else { return T }

    var counts: [Character: Int] = [:]
    for character in T {
      counts[character, default: 0] += 1
    }

    var result = ""
    for character in S {
      if let count = counts[character] {
        counts.removeValue(forKey: character)
        result += String(repeating: character, count: count)
      }
    }
    for (character, count) in counts {
      result += String(repeating: character, count: count)
    }
    return result
  }
}

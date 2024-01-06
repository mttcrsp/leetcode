/// https://leetcode.com/problems/unique-number-of-occurrences/
struct UniqueNumberOfOccurrences {
  func uniqueOccurrences(_ arr: [Int]) -> Bool {
    let occurrences = arr.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    return occurrences.values.count == Set(occurrences.values).count
  }
}

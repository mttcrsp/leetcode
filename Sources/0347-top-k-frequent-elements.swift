/// https://leetcode.com/problems/top-k-frequent-elements/
struct TopKFrequentElements {
  func topKFrequent(_ numbers: [Int], _ k: Int) -> [Int] {
    var counts: [Int: Int] = [:]
    for number in numbers {
      counts[number, default: 0] += 1
    }

    var results: [Int] = []
    for _ in 0 ..< k {
      let (key, _) = counts.max(by: { lhs, rhs in lhs.value < rhs.value })!
      results.append(key)
      counts.removeValue(forKey: key)
    }
    return results
  }
}

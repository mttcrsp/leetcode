/// https://leetcode.com/problems/top-k-frequent-elements/
struct TopKFrequentElements {
  func topKFrequent(_ numbers: [Int], _ k: Int) -> [Int] {
    var occurrences: [Int: Int] = [:]
    for number in numbers {
      occurrences[number, default: 0] += 1
    }

    var counts = [[Int]](repeating: [], count: numbers.count)
    for (number, count) in occurrences {
      counts[count - 1].append(number)
    }

    var result: [Int] = []
    for numbers in counts.reversed() where !numbers.isEmpty {
      for number in numbers where result.count < k {
        result.append(number)
      }
    }
    return result
  }
}

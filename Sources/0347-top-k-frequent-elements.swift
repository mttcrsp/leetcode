import Collections

/// https://leetcode.com/problems/top-k-frequent-elements/
struct TopKFrequentElements {
  func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var counts: [Int: Int] = [:]
    for num in nums {
      counts[num, default: 0] += 1
    }

    var heap: Heap<Count> = []
    for (num, count) in counts {
      heap.insert(.init(num: num, count: count))
      if heap.count > k {
        _ = heap.removeMin()
      }
    }

    var result: [Int] = []
    while let count = heap.popMax() {
      result.append(count.num)
    }

    return result
  }

  struct Count: Comparable {
    let num: Int
    let count: Int
    static func < (_ lhs: Count, _ rhs: Count) -> Bool {
      lhs.count < rhs.count
    }
  }
}

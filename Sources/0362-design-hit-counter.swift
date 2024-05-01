import Collections

/// https://leetcode.com/problems/design-hit-counter/
class HitCounter {
  private var queue: Deque<Int> = []

  init() {}

  func hit(_ timestamp: Int) {
    queue.append(timestamp)
  }

  func getHits(_ timestamp: Int) -> Int {
    while let min = queue.first, timestamp-min >= 300 {
      queue.removeFirst()
    }
    return queue.count
  }
}

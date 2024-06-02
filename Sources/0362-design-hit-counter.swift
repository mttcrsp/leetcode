import Collections

/// https://leetcode.com/problems/design-hit-counter/
class HitCounter {
  private var count = 0
  private var queue: Deque<(timestamp: Int, count: Int)> = []

  init() {}

  func hit(_ timestamp: Int) {
    count += 1
    if queue.last?.timestamp == timestamp {
      queue[queue.count-1].count += 1
    } else {
      queue.append((timestamp, 1))
    }
  }

  func getHits(_ timestamp: Int) -> Int {
    while let min = queue.first, timestamp-min.timestamp >= 300 {
      count -= min.count
      queue.removeFirst()
    }
    return count
  }
}

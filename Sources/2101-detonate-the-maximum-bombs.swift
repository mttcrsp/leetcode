import Collections

/// https://leetcode.com/problems/detonate-the-maximum-bombs/
struct DetonateTheMaximumBombs {
  func maximumDetonation(_ bombs: [[Int]]) -> Int {
    func distance(_ a: [Int], _ b: [Int]) -> Double {
      let xa = a[0], ya = a[1]
      let xb = b[0], yb = b[1]
      let dx2 = Double((xa-xb)*(xa-xb))
      let dy2 = Double((ya-yb)*(ya-yb))
      return (dx2+dy2).squareRoot()
    }

    var graph: [Int: [Int]] = [:]
    for i in 0 ..< bombs.count-1 {
      for j in i+1 ..< bombs.count {
        let distance = distance(bombs[i], bombs[j])
        if distance <= Double(bombs[i][2]) { graph[i, default: []].append(j) }
        if distance <= Double(bombs[j][2]) { graph[j, default: []].append(i) }
      }
    }

    var result = 0
    for i in bombs.indices {
      var count = 0
      var visited: Set<Int> = []
      var queue: Deque<Int> = [i]
      while let index = queue.popFirst() {
        guard !visited.contains(index) else { continue }
        visited.insert(index)

        count += 1

        for neighbor in graph[index, default: []] {
          queue.append(neighbor)
        }
      }

      result = max(result, count)
    }

    return result
  }
}

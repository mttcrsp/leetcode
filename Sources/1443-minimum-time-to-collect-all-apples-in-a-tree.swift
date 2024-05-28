/// https://leetcode.com/problems/minimum-time-to-collect-all-apples-in-a-tree/
struct MinimumTimeToCollectAllApplesInATree {
  func minTime(_ n: Int, _ edges: [[Int]], _ hasApple: [Bool]) -> Int {
    var graph: [Int: [Int]] = [:]
    for edge in edges {
      graph[edge[0], default: []].append(edge[1])
      graph[edge[1], default: []].append(edge[0])
    }

    func visit(_ node: Int = 0, _ parent: Int = -1) -> Int {
      var time = 0
      for child in graph[node, default: []] where child != parent {
        let childTime = visit(child, node)
        if childTime > 0 || hasApple[child] {
          time += 2+childTime
        }
      }

      return time
    }

    return visit()
  }
}

/// https://leetcode.com/problems/minimum-height-trees/
struct MinimumHeightTrees {
  func findMinHeightTrees(_ n: Int, _ edges: [[Int]]) -> [Int] {
    guard n > 1 else { return [0] }

    var neighbors: [Int: Set<Int>] = [:]
    for edge in edges {
      neighbors[edge[0], default: []].insert(edge[1])
      neighbors[edge[1], default: []].insert(edge[0])
    }

    var frontier: Set<Int> = []
    for (node, neighbors) in neighbors {
      if neighbors.count == 1 {
        frontier.insert(node)
      }
    }

    while neighbors.count > 2 {
      var newFrontier: Set<Int> = []
      for node in frontier {
        for neighbor in neighbors[node, default: []] {
          neighbors[neighbor, default: []].remove(node)
          if neighbors[neighbor, default: []].count == 1 {
            newFrontier.insert(neighbor)
          }
        }
        neighbors[node] = nil
      }

      frontier = newFrontier
    }

    return Array(frontier)
  }
}

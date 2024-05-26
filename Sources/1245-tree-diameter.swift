import Collections

/// https://leetcode.com/problems/tree-diameter/
class TreeDiameter {
  func treeDiameter(_ edges: [[Int]]) -> Int {
    var neighbors: [Int: [Int]] = [:]
    for edge in edges {
      neighbors[edge[0], default: []].append(edge[1])
      neighbors[edge[1], default: []].append(edge[0])
    }

    func visit(_ node: Int) -> (node: Int, distance: Int) {
      var result = (node, 0)
      var visited: Set<Int> = [node]
      var frontier = [node]
      var distance = 1
      while !frontier.isEmpty {
        var newFrontier: [Int] = []
        for node in frontier {
          for neighbor in neighbors[node, default: []] {
            guard !visited.contains(neighbor) else { continue }
            visited.insert(neighbor)
            result = (neighbor, distance)
            newFrontier.append(neighbor)
          }
        }

        frontier = newFrontier
        distance += 1
      }

      return result
    }

    let (farthest, _) = visit(0)
    let (_, distance) = visit(farthest)
    return distance
  }
}

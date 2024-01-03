/// https://leetcode.com/problems/find-if-path-exists-in-graph/
struct FindIfPathExistsInGraph {
  func validPath(_ n: Int, _ edges: [[Int]], _ source: Int, _ destination: Int) -> Bool {
    var adjacency: [Int: Set<Int>] = [:]
    for edge in edges {
      adjacency[edge[0], default: []].insert(edge[1])
      adjacency[edge[1], default: []].insert(edge[0])
    }

    var visited: Set<Int> = []
    var frontier: Set<Int> = [source]
    while let vertex = frontier.popFirst() {
      visited.insert(vertex)

      if vertex == destination {
        return true
      }

      for neighbour in adjacency[vertex, default: []] {
        if !visited.contains(neighbour) {
          frontier.insert(neighbour)
        }
      }
    }

    return false
  }
}

/// https://leetcode.com/problems/minimum-number-of-vertices-to-reach-all-nodes/
struct MinimumNumberOfVerticesToReachAllNodes {
  func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
    var nodes = Set<Int>(0 ... n - 1)

    for edge in edges {
      let reachableNode = edge[1]
      nodes.remove(reachableNode)
    }

    return Array(nodes)
  }
}

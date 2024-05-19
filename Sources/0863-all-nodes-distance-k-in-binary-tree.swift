/// https://leetcode.com/problems/all-nodes-distance-k-in-binary-tree/
struct AllNodesDistanceKInBinaryTree {
  func distanceK(_ root: TreeNode?, _ target: TreeNode?, _ k: Int) -> [Int] {
    guard let root, let target
    else { return [] }

    var graph: [Int: [Int]] = [:]
    func populategraph(_ node: TreeNode = root) {
      for child in [node.left, node.right] {
        if let child {
          graph[child.val, default: []].append(node.val)
          graph[node.val, default: []].append(child.val)
          populategraph(child)
        }
      }
    }
    populategraph()

    var k = k
    var visited: Set<Int> = []
    var frontier: Set<Int> = [target.val]
    while !frontier.isEmpty, k > 0 {
      var newFrontier: Set<Int> = []
      for element in frontier {
        for neighbour in graph[element, default: []] {
          if !visited.contains(neighbour) {
            newFrontier.insert(neighbour)
          }
        }
      }

      visited.formUnion(frontier)
      frontier = newFrontier
      k -= 1
    }

    return Array(frontier)
  }
}

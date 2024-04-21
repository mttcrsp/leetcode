/// https://leetcode.com/problems/find-largest-value-in-each-tree-row/
struct FindLargestValueInEachTreeRow {
  func largestValues(_ root: TreeNode?) -> [Int] {
    guard let root else { return [] }

    var result: [Int] = []
    var frontier = [root]
    while !frontier.isEmpty {
      var max: Int!
      defer { result.append(max) }

      var nextFrontier: [TreeNode] = []
      defer { frontier = nextFrontier }

      for node in frontier {
        if max == nil || max < node.val {
          max = node.val
        }
        if let child = node.left {
          nextFrontier.append(child)
        }
        if let child = node.right {
          nextFrontier.append(child)
        }
      }
    }

    return result
  }
}

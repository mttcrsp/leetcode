/// https://leetcode.com/problems/two-sum-iv-input-is-a-bst/
struct TwoSumIvInputIsABst {
  func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
    guard let root else { return false }

    var frontier = [root]
    var integers: Set<Int> = []
    while !frontier.isEmpty {
      var newFrontier: [TreeNode] = []
      defer { frontier = newFrontier }

      for node in frontier {
        if integers.contains(k-node.val) {
          return true
        }

        integers.insert(node.val)
        if let child = node.left {
          newFrontier.append(child)
        }
        if let child = node.right {
          newFrontier.append(child)
        }
      }
    }

    return false
  }
}

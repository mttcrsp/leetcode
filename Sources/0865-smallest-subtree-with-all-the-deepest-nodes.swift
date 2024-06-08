/// https://leetcode.com/problems/smallest-subtree-with-all-the-deepest-nodes/
struct SmallestSubtreeWithAllTheDeepestNodes {
  func subtreeWithAllDeepest(_ root: TreeNode?) -> TreeNode? {
    guard let root else { return nil }

    func findDeepest(_ node: TreeNode = root, _ depth: Int = 1) -> (node: TreeNode, depth: Int) {
      switch (node.left, node.right) {
      case (nil, nil):
        return (node, depth)
      case (let child?, nil), (nil, let child?):
        return findDeepest(child, depth+1)
      case let (lhs?, rhs?):
        let lhs = findDeepest(lhs, depth+1)
        let rhs = findDeepest(rhs, depth+1)
        if lhs.depth == rhs.depth {
          return (node, lhs.depth)
        } else {
          return lhs.depth > rhs.depth ? lhs : rhs
        }
      }
    }

    return findDeepest().node
  }
}

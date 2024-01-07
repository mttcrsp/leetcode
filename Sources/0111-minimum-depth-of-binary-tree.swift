import Collections

/// https://leetcode.com/problems/minimum-depth-of-binary-tree/
struct MinimumDepthOfBinaryTree {
  func minDepth(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }

    var list: Deque = [(root, 1)]
    while true {
      let (node, depth) = list.removeFirst()
      if node.left == nil, node.right == nil {
        return depth
      }
      if let node = node.left {
        list.append((node, depth+1))
      }
      if let node = node.right {
        list.append((node, depth+1))
      }
    }
  }
}

/// https://leetcode.com/problems/count-good-nodes-in-binary-tree/
struct CountGoodNodesInBinaryTree {
  func goodNodes(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }

    var count = 0
    var stack = [(root, Int.min)]
    while let (node, pathMax) = stack.popLast() {
      if pathMax <= node.val {
        count += 1
      }

      let newPathMax = max(pathMax, node.val)
      for child in [node.left, node.right] {
        if let child {
          stack.append((child, newPathMax))
        }
      }
    }

    return count
  }
}

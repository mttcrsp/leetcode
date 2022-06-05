/// https://leetcode.com/problems/count-good-nodes-in-binary-tree/
struct CountGoodNodesInBinaryTree {
  func goodNodes(_ root: TreeNode?) -> Int {
    var stack: [(TreeNode?, Int)] = [(root, Int.min)]
    var count = 0

    while !stack.isEmpty {
      let (node, pathMax) = stack.removeLast()

      guard let node = node else {
        continue
      }

      if pathMax <= node.val {
        count += 1
      }

      let newPathMax = max(pathMax, node.val)
      stack.append((node.left, newPathMax))
      stack.append((node.right, newPathMax))
    }

    return count
  }
}

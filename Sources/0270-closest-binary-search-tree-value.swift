import Collections

/// https://leetcode.com/problems/closest-binary-search-tree-value/
struct ClosestBinarySearchTreeValue {
  func closestValue(_ root: TreeNode?, _ target: Double) -> Int {
    guard let root else {
      preconditionFailure("Empty tree is not allowed")
    }

    var closest = root.val
    var next: TreeNode? = root
    while let node = next {
      let closestDistance = abs(Double(closest)-target)
      let currentDistance = abs(Double(node.val)-target)
      if currentDistance < closestDistance {
        closest = node.val
      } else if closestDistance == currentDistance, node.val < closest {
        closest = node.val
      }

      if Double(node.val) > target {
        next = node.left
      } else if Double(node.val) < target {
        next = node.right
      } else {
        break
      }
    }

    return closest
  }
}

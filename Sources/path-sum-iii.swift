extension Solution {
  func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
    var sums: [Int] = []
    var count = 0

    func visit(_ node: TreeNode) {
      for i in sums.indices {
        sums[i] += node.val

        if sums[i] == sum {
          count += 1
        }
      }

      sums.append(node.val)
      if node.val == sum {
        count += 1
      }

      if let left = node.left {
        visit(left)
      }

      if let right = node.right {
        visit(right)
      }

      sums.removeLast()

      for i in sums.indices {
        sums[i] -= node.val
      }
    }

    if let node = root {
      visit(node)
    }

    return count
  }
}

struct SumOfLeftLeaves {
  func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
    guard let root = root else { return 0 }

    var result = 0
    var stack: [(TreeNode, Bool)] = [(root, false)]

    while !stack.isEmpty {
      let (node, isLeft) = stack.removeLast()

      if node.left == nil, node.right == nil {
        if isLeft {
          result += node.val
        }
      } else {
        if let left = node.left {
          stack.append((left, true))
        }
        if let right = node.right {
          stack.append((right, false))
        }
      }
    }

    return result
  }
}

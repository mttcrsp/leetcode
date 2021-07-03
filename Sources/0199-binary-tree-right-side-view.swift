struct BinaryTreeRightSideView {
  func rightSideView(_ root: TreeNode?) -> [Int] {
    var rightSideView: [Int] = []

    func postOrderVisit(_ node: TreeNode?, at level: Int) {
      guard let node = node else { return }

      if level < rightSideView.count {
        rightSideView[level] = node.val
      } else {
        rightSideView.insert(node.val, at: level)
      }
      postOrderVisit(node.left, at: level + 1)
      postOrderVisit(node.right, at: level + 1)
    }

    postOrderVisit(root, at: 0)

    return rightSideView
  }
}

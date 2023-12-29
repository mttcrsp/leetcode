/// https://leetcode.com/problems/binary-tree-tilt/
struct BinaryTreeTilt {
  func findTilt(_ root: TreeNode?) -> Int {
    var result = 0
    _ = solveFindTilt(root, result: &result)
    return result
  }

  private func solveFindTilt(_ node: TreeNode?, result: inout Int) -> Int {
    guard let node else {
      return 0
    }

    let lhsSum = solveFindTilt(node.left, result: &result)
    let rhsSum = solveFindTilt(node.right, result: &result)
    result += abs(lhsSum-rhsSum)

    return node.val+lhsSum+rhsSum
  }
}

/// https://leetcode.com/problems/validate-binary-search-tree/
struct ValidateBinarySearchTree {
  func isValidBST(_ root: TreeNode?) -> Bool {
    var stack: [(TreeNode?, Int, Int)] = [(root, Int.min, Int.max)]

    while !stack.isEmpty {
      let (node, lowerbound, upperbound) = stack.removeLast()
      guard let node else { continue }

      if lowerbound+1 <= upperbound-1, lowerbound+1 ... upperbound-1 ~= node.val {
        stack.append((node.left, lowerbound, node.val))
        stack.append((node.right, node.val, upperbound))
      } else {
        return false
      }
    }

    return true
  }
}

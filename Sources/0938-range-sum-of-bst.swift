/// https://leetcode.com/problems/range-sum-of-bst/
struct RangeSumOfBst {
  func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
    let range = low ... high
    var sum = 0
    func visit(_ node: TreeNode?) {
      guard let node else { return }
      sum += range.contains(node.val) ? node.val : 0
      visit(node.left)
      visit(node.right)
    }
    visit(root)
    return sum
  }
}

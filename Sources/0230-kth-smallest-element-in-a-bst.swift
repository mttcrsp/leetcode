/// https://leetcode.com/problems/kth-smallest-element-in-a-bst/
struct KthSmallestElementInABst {
  func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
    var counter = 1
    var value: Int!

    func visit(_ node: TreeNode?) {
      guard let node = node, value == nil else { return }

      visit(node.left)
      if counter == k {
        value = node.val
      }
      counter += 1
      visit(node.right)
    }

    visit(root)

    return value
  }
}

/// https://leetcode.com/problems/count-complete-tree-nodes/
struct CountCompleteTreeNodes {
  func countNodes(_ root: TreeNode?, _ count: Int = 0) -> Int {
    if let root {
      countNodes(root.left)+countNodes(root.right)+1
    } else {
      count
    }
  }
}

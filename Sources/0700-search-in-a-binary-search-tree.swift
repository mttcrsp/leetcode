/// https://leetcode.com/problems/search-in-a-binary-search-tree/
struct SearchInABinarySearchTree {
  func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
    guard let root = root else { return nil }

    if root.val == val {
      return root
    } else if root.val < val {
      return searchBST(root.right, val)
    } else {
      return searchBST(root.left, val)
    }
  }
}

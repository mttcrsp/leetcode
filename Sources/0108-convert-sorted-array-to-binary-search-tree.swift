/// https://leetcode.com/problems/convert-sorted-array-to-binary-search-tree/
struct ConvertSortedArrayToBinarySearchTree {
  func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    func visit(_ lhs: Int, _ rhs: Int) -> TreeNode? {
      guard lhs <= rhs else { return nil }
      let mid = (lhs+rhs)/2
      let node = TreeNode(nums[mid])
      node.left = visit(lhs, mid-1)
      node.right = visit(mid+1, rhs)
      return node
    }

    return visit(0, nums.count-1)
  }
}

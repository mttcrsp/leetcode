/// https://leetcode.com/problems/range-sum-of-bst/
struct RangeSumOfBst {
  func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
    guard let root else { return 0 }

    var sum = 0
    if low ... high ~= root.val {
      sum += root.val
    }
    if root.val > low {
      sum += rangeSumBST(root.left, low, high)
    }
    if root.val < high {
      sum += rangeSumBST(root.right, low, high)
    }
    return sum
  }
}

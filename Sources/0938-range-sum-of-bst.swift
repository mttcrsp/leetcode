/// https://leetcode.com/problems/range-sum-of-bst/
struct RangeSumOfBst {
  func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
    guard let root else { return 0 }

    var sum = 0
    var unvisited = [root]
    while !unvisited.isEmpty {
      let node = unvisited.removeLast()
      if node.val >= low, node.val <= high {
        sum += node.val
      }
      if let left = node.left {
        unvisited.append(left)
      }
      if let right = node.right {
        unvisited.append(right)
      }
    }

    return sum
  }
}

/// https://leetcode.com/problems/kth-smallest-element-in-a-bst/
struct KthSmallestElementInABst {
  func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
    guard let root else {
      preconditionFailure("The number of nodes in is expected to be >= 1")
    }

    var index = 1
    var stack: [TreeNode] = []
    var current: TreeNode? = root
    while current != nil || !stack.isEmpty {
      if let node = current {
        stack.append(node)
        current = node.left
      } else {
        let node = stack.removeLast()
        if index == k {
          return node.val
        }
        index += 1
        current = node.right
      }
    }

    preconditionFailure("The number of nodes is expected to be >= k")
  }
}

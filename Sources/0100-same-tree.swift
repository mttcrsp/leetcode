/// https://leetcode.com/problems/same-tree/
struct SameTree {
  func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    var stack = [(p, q)]

    while !stack.isEmpty {
      let (p, q) = stack.removeLast()
      if p != nil || q != nil {
        if p?.val != q?.val {
          return false
        } else {
          stack.append((p?.left, q?.left))
          stack.append((p?.right, q?.right))
        }
      }
    }

    return true
  }
}

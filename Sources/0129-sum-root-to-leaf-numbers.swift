/// https://leetcode.com/problems/sum-root-to-leaf-numbers/
struct SumRootToLeafNumbers {
  func sumNumbers(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }

    var sum = 0
    var stack = [(root, root.val)]
    while let (node, path) = stack.popLast() {
      let children = [node.left, node.right].compactMap { $0 }
      if children.isEmpty {
        sum += path
      } else {
        for child in children {
          stack.append((child, (path*10)+child.val))
        }
      }
    }

    return sum
  }
}

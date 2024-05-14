import Collections

/// https://leetcode.com/problems/binary-tree-right-side-view/
struct BinaryTreeRightSideView {
  func rightSideView(_ root: TreeNode?) -> [Int] {
    guard let root else { return [] }

    var result: [Int] = []
    var queue: Deque = [root]
    while !queue.isEmpty {
      let levelCount = queue.count
      for i in 0 ..< levelCount {
        let node = queue.removeFirst()
        if i == levelCount-1 {
          result.append(node.val)
        }
        if let child = node.left {
          queue.append(child)
        }
        if let child = node.right {
          queue.append(child)
        }
      }
    }

    return result
  }
}

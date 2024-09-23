/// https://leetcode.com/problems/even-odd-tree/
struct EvenOddTree {
  func isEvenOddTree(_ root: TreeNode?) -> Bool {
    guard let root else { return true }

    var levelIndex = 0
    var level: [TreeNode] = [root]
    while !level.isEmpty {
      var nextLevel: [TreeNode] = []
      for index in level.indices {
        let node = level[index]
        if let left = node.left { nextLevel.append(left) }
        if let right = node.right { nextLevel.append(right) }
        if levelIndex%2 == node.val%2 { return false }
        guard index > 0 else { continue }
        if levelIndex%2 == 0, level[index-1].val >= level[index].val {
          return false
        } else if levelIndex%2 != 0, level[index-1].val <= level[index].val {
          return false
        }
      }

      level = nextLevel
      levelIndex += 1
    }

    return true
  }
}

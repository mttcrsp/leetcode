/// https://leetcode.com/problems/average-of-levels-in-binary-tree/
struct AverageOfLevelsInBinaryTree {
  func averageOfLevels(_ root: TreeNode?) -> [Double] {
    guard let root else { return [] }

    var levels: [(sum: Int, count: Int)] = []
    var frontier = [(root, 0)]
    while let (node, level) = frontier.popLast() {
      if levels.count == level {
        levels.append((node.val, 1))
      } else {
        levels[level].count += 1
        levels[level].sum += node.val
      }

      for child in [node.left, node.right] {
        guard let child else { continue }
        frontier.append((child, level+1))
      }
    }

    return levels.map { sum, count in
      Double(sum)/Double(count)
    }
  }
}

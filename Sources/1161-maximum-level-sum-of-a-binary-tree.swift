/// https://leetcode.com/problems/maximum-level-sum-of-a-binary-tree/
struct MaximumLevelSumOfABinaryTree {
  func maxLevelSum(_ root: TreeNode?) -> Int {
    var levelSums: [Int: Int] = [:]
    var stack = [(root, 1)]
    while let (node, level) = stack.popLast() {
      guard let node else { continue }
      levelSums[level, default: 0] += node.val
      stack.append((node.left, level+1))
      stack.append((node.right, level+1))
    }

    var max: (level: Int, sum: Int) = (.max, .min)
    for (level, sum) in levelSums {
      if sum == max.sum, level < max.level {
        max.level = level
      } else if sum > max.sum {
        max.level = level
        max.sum = sum
      }
    }

    return max.level
  }
}

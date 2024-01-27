/// https://leetcode.com/problems/find-largest-value-in-each-tree-row/
struct FindLargestValueInEachTreeRow {
  func largestValues(_ root: TreeNode?) -> [Int] {
    guard let root else { return [] }

    var largestValues: [Int] = []
    var stack = [(root, 0)]
    while let (node, row) = stack.popLast() {
      if row < largestValues.count {
        largestValues[row] = max(largestValues[row], node.val)
      } else {
        largestValues.append(node.val)
      }

      for child in [node.left, node.right] {
        guard let child else { continue }
        stack.append((child, row+1))
      }
    }

    return largestValues
  }
}

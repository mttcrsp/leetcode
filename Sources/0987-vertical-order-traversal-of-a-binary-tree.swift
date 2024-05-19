/// https://leetcode.com/problems/vertical-order-traversal-of-a-binary-tree/
struct VerticalOrderTraversalOfABinaryTree {
  func verticalTraversal(_ root: TreeNode?) -> [[Int]] {
    var minColumn = Int.max
    var maxColumn = Int.min
    var columns: [Int: [(val: Int, row: Int)]] = [:]
    func visit(_ node: TreeNode? = root, _ row: Int = 0, _ col: Int = 0) {
      guard let node else { return }
      columns[col, default: []].append((node.val, row))
      minColumn = min(minColumn, col)
      maxColumn = max(maxColumn, col)
      visit(node.left, row+1, col-1)
      visit(node.right, row+1, col+1)
    }
    visit()

    var result: [[Int]] = []
    for column in minColumn ... maxColumn {
      if let values = columns[column] {
        let sortedValues = values.sorted {
          $0.row == $1.row
            ? $0.val < $1.val
            : $0.row < $1.row
        }
        result.append(sortedValues.map(\.val))
      }
    }

    return result
  }
}

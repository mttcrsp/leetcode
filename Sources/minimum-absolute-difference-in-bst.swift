extension Solution {
  func getMinimumDifference(_ root: TreeNode?) -> Int {
    Solver().getMinimumDifference(root)
  }
}

private final class Solver {
  private var sortedValues: [Int] = []

  func getMinimumDifference(_ root: TreeNode?) -> Int {
    guard let root = root else {
      preconditionFailure("A BST with less than two nodes was provided")
    }

    fillSortedValues(startingFrom: root)

    var min = Int.max
    for (x, y) in zip(sortedValues, sortedValues.dropFirst()) {
      if y - x < min {
        min = y - x

        if min == 0 {
          return 0
        }
      }
    }

    return min
  }

  private func fillSortedValues(startingFrom node: TreeNode) {
    if let left = node.left {
      fillSortedValues(startingFrom: left)
    }

    sortedValues.append(node.val)

    if let right = node.right {
      fillSortedValues(startingFrom: right)
    }
  }
}

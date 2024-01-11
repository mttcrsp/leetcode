/// https://leetcode.com/problems/maximum-difference-between-node-and-ancestor/
struct MaximumDifferenceBetweenNodeAndAncestor {
  func maxAncestorDiff(_ root: TreeNode?) -> Int {
    guard let root else { return 0 }

    var maxDifference = 0
    func visit(_ node: TreeNode) -> ClosedRange<Int> {
      let childrenRange: ClosedRange<Int>
      switch (node.left, node.right) {
      case (nil, nil):
        return node.val ... node.val
      case (let child?, nil),
           (nil, let child?):
        childrenRange = visit(child)
      case let (lhs?, rhs?):
        let lhsRange = visit(lhs)
        let rhsRange = visit(rhs)
        childrenRange = min(lhsRange.lowerBound, rhsRange.lowerBound) ...
          max(lhsRange.upperBound, rhsRange.upperBound)
      }

      maxDifference = max(
        maxDifference,
        abs(node.val-childrenRange.lowerBound),
        abs(node.val-childrenRange.upperBound)
      )

      return min(node.val, childrenRange.lowerBound) ...
        max(node.val, childrenRange.upperBound)
    }
    _ = visit(root)

    return maxDifference
  }
}

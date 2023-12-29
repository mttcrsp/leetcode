/// https://leetcode.com/problems/find-elements-in-a-contaminated-binary-tree/
class FindElements {
  private var values: Set<Int> = []

  init(_ root: TreeNode?) {
    func visit(_ node: TreeNode) {
      let x = node.val

      if let left = node.left {
        let value = 2*x+1
        left.val = value
        values.insert(value)
        visit(left)
      }

      if let right = node.right {
        let value = 2*x+2
        right.val = value
        values.insert(value)
        visit(right)
      }
    }

    if let node = root {
      node.val = 0
      visit(node)
    }
  }

  func find(_ target: Int) -> Bool {
    values.contains(target)
  }
}

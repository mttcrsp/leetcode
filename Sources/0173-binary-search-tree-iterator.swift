/// https://leetcode.com/problems/binary-search-tree-iterator/
class BSTIterator {
  private var array: [Int] = []

  init(_ root: TreeNode?) {
    func visit(_ node: TreeNode?) {
      if let node {
        visit(node.left)
        array.append(node.val)
        visit(node.right)
      }
    }

    visit(root)

    array.reverse()
  }

  func next() -> Int {
    array.removeLast()
  }

  func hasNext() -> Bool {
    !array.isEmpty
  }
}

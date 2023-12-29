/// https://leetcode.com/problems/delete-nodes-and-return-forest/
struct DeleteNodesAndReturnForest {
  func delNodes(_ root: TreeNode?, _ toDelete: [Int]) -> [TreeNode?] {
    guard let firstToDelete = toDelete.first else { return [root] }

    var forest: [TreeNode?] = []
    let toDelete = Set(toDelete)

    func collectForest(_ node: TreeNode?, parentVal: Int) {
      guard let node else { return }

      if toDelete.contains(parentVal), !toDelete.contains(node.val) {
        forest.append(node)
      }

      collectForest(node.left, parentVal: node.val)
      collectForest(node.right, parentVal: node.val)
    }

    func removeDeleted(_ node: TreeNode?) {
      guard let node else { return }

      if let left = node.left, toDelete.contains(left.val) {
        node.left = nil
      } else {
        removeDeleted(node.left)
      }

      if let right = node.right, toDelete.contains(right.val) {
        node.right = nil
      } else {
        removeDeleted(node.right)
      }
    }

    collectForest(root, parentVal: firstToDelete)
    for tree in forest {
      removeDeleted(tree)
    }

    return forest
  }
}

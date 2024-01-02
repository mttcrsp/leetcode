/// https://leetcode.com/problems/leaf-similar-trees/
struct LeafSimilarTrees {
  func leafSimilar(_ root1: TreeNode?, _ root2: TreeNode?) -> Bool {
    func leafValue(_ node: TreeNode?) -> [Int] {
      guard let node else {
        return []
      }

      guard node.left != nil || node.right != nil else {
        return [node.val]
      }

      var result: [Int] = []
      result.append(contentsOf: leafValue(node.left))
      result.append(contentsOf: leafValue(node.right))
      return result
    }

    let leafValue1 = leafValue(root1)
    let leafValue2 = leafValue(root2)
    return leafValue1 == leafValue2
  }
}

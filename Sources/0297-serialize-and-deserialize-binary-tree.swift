/// https://leetcode.com/problems/serialize-and-deserialize-binary-tree/
class Codec {
  func serialize(_ root: TreeNode?) -> String {
    var values: [String] = []

    func visit(_ node: TreeNode?) {
      guard let node = node else {
        return values.append("n")
      }

      values.append(node.val.description)
      visit(node.left)
      visit(node.right)
    }

    visit(root)

    return values.joined(separator: ",")
  }

  func deserialize(_ serialized: String) -> TreeNode? {
    let values = serialized.components(separatedBy: ",").map(Int.init)
    var index = 0

    func visit() -> TreeNode? {
      guard let value = values[index] else {
        index += 1
        return nil
      }

      index += 1
      let node = TreeNode(value)
      node.left = visit()
      node.right = visit()
      return node
    }

    return visit()
  }
}

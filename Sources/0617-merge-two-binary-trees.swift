/// https://leetcode.com/problems/merge-two-binary-trees/
struct MergeTwoBinaryTrees {
  func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
    if t1 == nil { return t2 }
    if t2 == nil { return t1 }
    walk(t1!, t2!)
    return t2!
  }

  private func walk(_ a: TreeNode, _ b: TreeNode) {
    if let leftA = a.left, let leftB = b.left { walk(leftA, leftB) }
    if let rightA = a.right, let rightB = b.right { walk(rightA, rightB) }
    if b.left == nil, a.left != nil { b.left = a.left }
    if b.right == nil, a.right != nil { b.right = a.right }
    b.val += a.val
  }
}

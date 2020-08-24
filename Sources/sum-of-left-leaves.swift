extension Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        var result = 0

        func visit(_ node: TreeNode?, isLeft: Bool) {
            guard let node = node else { return }

            if node.left == nil, node.right == nil {
                if isLeft {
                    result += node.val
                }
            } else {
                visit(node.left, isLeft: true)
                visit(node.right, isLeft: false)
            }
        }

        visit(root, isLeft: false)

        return result
    }
}

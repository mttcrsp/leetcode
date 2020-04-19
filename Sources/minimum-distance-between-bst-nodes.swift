extension Solution {
    func minDiffInBST(_ root: TreeNode?) -> Int {
        var values: [Int] = []

        func visit(_ node: TreeNode?) {
            guard let node = node else { return }
            visit(node.left)
            values.append(node.val)
            visit(node.right)
        }

        visit(root)

        var min = Int.max
        for (lhs, rhs) in zip(values, values.dropFirst()) {
            let distance = rhs - lhs
            if distance < min { min = distance }
        }
        return min
    }
}

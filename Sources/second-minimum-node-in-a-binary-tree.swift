extension Solution {
    func findSecondMinimumValue(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return -1
        }

        var values: [Int] = []

        func populateValues(_ node: TreeNode) {
            if let lhs = node.left { populateValues(lhs) }
            if let rhs = node.right { populateValues(rhs) }
            if node.val != root.val { values.append(node.val) }
        }

        populateValues(root)

        if let result = values.sorted().first {
            return result
        } else {
            return -1
        }
    }
}

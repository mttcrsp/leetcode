extension Solution {
    func flipMatchVoyage(_ root: TreeNode?, _ voyage: [Int]) -> [Int] {
        guard let node = root else { return voyage.isEmpty ? [] : [-1] }

        var index: Int = 0
        var swaps: [Int] = []
        swaps.reserveCapacity(voyage.count / 2)

        func visit(_ node: TreeNode) -> Bool {
            guard index < voyage.count, node.val == voyage[index] else { return false }
            index += 1

            if index < voyage.count, let b = node.left?.val, voyage[index] != b {
                swap(&node.left, &node.right)
                swaps.append(node.val)
            }

            if let left = node.left, !visit(left) { return false }
            if let right = node.right, !visit(right) { return false }
            return true
        }

        return visit(node) ? swaps : [-1]
    }
}

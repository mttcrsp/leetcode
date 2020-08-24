extension Solution {
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        return root?.visit(isLeft: false) ?? 0
    }
}

private extension TreeNode {
    func visit(isLeft: Bool) -> Int {
        if left == nil, right == nil {
            return isLeft ? val : 0
        }
        
        var count = 0
        count += left?.visit(isLeft: true) ?? 0
        count += right?.visit(isLeft: false) ?? 0
        return count
    }
}

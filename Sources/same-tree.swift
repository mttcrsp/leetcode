extension Solution {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        guard let unwrappedP = p, let unwrappedQ = q else {
            return p == nil && q == nil
        }

        let val = unwrappedP.val == unwrappedQ.val
        let lhs = isSameTree(unwrappedP.left, unwrappedQ.left)
        let rhs = isSameTree(unwrappedP.right, unwrappedQ.right)
        return val && lhs && rhs
    }
}

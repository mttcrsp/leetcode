extension Solution {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else { return nil }

        if root.val == val {
            return root
        } else if root.val < val {
            return searchBST(root.right, val)
        } else {
            return searchBST(root.left, val)
        }
    }
}

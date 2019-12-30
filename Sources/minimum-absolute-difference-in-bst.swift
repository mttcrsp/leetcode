/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        guard let root = root else {
            preconditionFailure("A BST with less than two nodes was provided")
        }

        fillSortedValues(startingFrom: root)

        var min = Int.max
        for (x, y) in zip(sortedValues, sortedValues.dropFirst()) {
            if y - x < min {
                min = y - x

                if min == 0 {
                    return 0
                }
            }
        }

        return min
    }

    private var sortedValues: [Int] = []

    private func fillSortedValues(startingFrom node: TreeNode) {
        if let left = node.left {
            fillSortedValues(startingFrom: left)
        }

        sortedValues.append(node.val)

        if let right = node.right {
            fillSortedValues(startingFrom: right)
        }
    }
}

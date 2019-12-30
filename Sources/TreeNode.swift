// Copyright © 2019 Matteo Crespi. All rights reserved.

final class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?

    init(_ val: Int) {
        left = nil
        right = nil
        self.val = val
    }
}

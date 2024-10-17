@testable
import Leetcode
import Testing

@Suite
struct TrimABinarySearchTreeTests {
  @Test func testTrimBST1() {
    let input = (TreeNode([1, 0, 2]), 1, 2)
    let output = TreeNode([1, nil, 2])
    #expect(TrimABinarySearchTree().trimBST(input.0, input.1, input.2) == output)
  }

  @Test func testTrimBST2() {
    let input = (TreeNode([3, 0, 4, nil, 2, nil, nil, 1]), 1, 3)
    let output = TreeNode([3, 2, nil, 1])
    #expect(TrimABinarySearchTree().trimBST(input.0, input.1, input.2) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct ValidateBinarySearchTreeTests {
  @Test func testIsValidBST1() {
    let input = TreeNode([2, 1, 3])
    let output = true
    #expect(ValidateBinarySearchTree().isValidBST(input) == output)
  }

  @Test func testIsValidBST2() {
    let input = TreeNode([5, 1, 4, nil, nil, 3, 6])
    let output = false
    #expect(ValidateBinarySearchTree().isValidBST(input) == output)
  }
}

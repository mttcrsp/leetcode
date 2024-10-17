@testable
import Leetcode
import Testing

@Suite
struct ConvertSortedArrayToBinarySearchTreeTests {
  @Test func testSortedarraytobst1() {
    let input = [-10, -3, 0, 5, 9]
    let output = TreeNode([0, -10, 5, nil, -3, nil, 9])
    #expect(ConvertSortedArrayToBinarySearchTree().sortedArrayToBST(input) == output)
  }

  @Test func testSortedarraytobst2() {
    let input = [1, 3]
    let output = TreeNode([1, nil, 3])
    #expect(ConvertSortedArrayToBinarySearchTree().sortedArrayToBST(input) == output)
  }
}

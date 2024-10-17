@testable
import Leetcode
import Testing

@Suite
struct CheckCompletenessOfABinaryTreeTests {
  @Test func testIsCompleteTree1() {
    let input = TreeNode([1, 2, 3, 4, 5, 6])
    let output = true
    #expect(CheckCompletenessOfABinaryTree().isCompleteTree(input) == output)
  }

  @Test func testIsCompleteTree2() {
    let input = TreeNode([1, 2, 3, 4, 5, nil, 7])
    let output = false
    #expect(CheckCompletenessOfABinaryTree().isCompleteTree(input) == output)
  }

  @Test func testIsCompleteTree3() {
    let input = TreeNode([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, nil, nil, 15])
    let output = false
    #expect(CheckCompletenessOfABinaryTree().isCompleteTree(input) == output)
  }
}

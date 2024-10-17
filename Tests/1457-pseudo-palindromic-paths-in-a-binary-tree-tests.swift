@testable
import Leetcode
import Testing

@Suite
struct PseudoPalindromicPathsInABinaryTreeTests {
  @Test func testPseudopalindromicpaths1() {
    let input = TreeNode([2, 3, 1, 3, 1, nil, 1])
    let output = 2
    #expect(PseudoPalindromicPathsInABinaryTree().pseudoPalindromicPaths(input) == output)
  }

  @Test func testPseudopalindromicpaths2() {
    let input = TreeNode([2, 1, 1, 1, 3, nil, nil, nil, nil, nil, 1])
    let output = 1
    #expect(PseudoPalindromicPathsInABinaryTree().pseudoPalindromicPaths(input) == output)
  }

  @Test func testPseudopalindromicpaths3() {
    let input = TreeNode([9])
    let output = 1
    #expect(PseudoPalindromicPathsInABinaryTree().pseudoPalindromicPaths(input) == output)
  }
}

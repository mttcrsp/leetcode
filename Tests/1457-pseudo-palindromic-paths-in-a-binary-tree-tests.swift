@testable
import Leetcode
import XCTest

final class PseudoPalindromicPathsInABinaryTreeTests: XCTestCase {
  func testPseudopalindromicpaths1() {
    let input = TreeNode([2, 3, 1, 3, 1, nil, 1])
    let output = 2
    XCTAssertEqual(PseudoPalindromicPathsInABinaryTree().pseudoPalindromicPaths(input), output)
  }

  func testPseudopalindromicpaths2() {
    let input = TreeNode([2, 1, 1, 1, 3, nil, nil, nil, nil, nil, 1])
    let output = 1
    XCTAssertEqual(PseudoPalindromicPathsInABinaryTree().pseudoPalindromicPaths(input), output)
  }

  func testPseudopalindromicpaths3() {
    let input = TreeNode([9])
    let output = 1
    XCTAssertEqual(PseudoPalindromicPathsInABinaryTree().pseudoPalindromicPaths(input), output)
  }
}

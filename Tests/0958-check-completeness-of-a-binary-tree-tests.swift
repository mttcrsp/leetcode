@testable
import Leetcode
import XCTest

final class CheckCompletenessOfABinaryTreeTests: XCTestCase {
  func testIsCompleteTree1() {
    let input = TreeNode([1, 2, 3, 4, 5, 6])
    let output = true
    XCTAssertEqual(CheckCompletenessOfABinaryTree().isCompleteTree(input), output)
  }

  func testIsCompleteTree2() {
    let input = TreeNode([1, 2, 3, 4, 5, nil, 7])
    let output = false
    XCTAssertEqual(CheckCompletenessOfABinaryTree().isCompleteTree(input), output)
  }

  func testIsCompleteTree3() {
    let input = TreeNode([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, nil, nil, 15])
    let output = false
    XCTAssertEqual(CheckCompletenessOfABinaryTree().isCompleteTree(input), output)
  }
}

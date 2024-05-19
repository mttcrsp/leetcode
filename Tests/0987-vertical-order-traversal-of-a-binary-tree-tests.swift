@testable
import Leetcode
import XCTest

final class VerticalOrderTraversalOfABinaryTreeTests: XCTestCase {
  func testVerticalTraversal1() {
    let input = TreeNode([3, 9, 20, nil, nil, 15, 7])
    let output = [[9], [3, 15], [20], [7]]
    XCTAssertEqual(VerticalOrderTraversalOfABinaryTree().verticalTraversal(input), output)
  }

  func testVerticalTraversal2() {
    let input = TreeNode([1, 2, 3, 4, 5, 6, 7])
    let output = [[4], [2], [1, 5, 6], [3], [7]]
    XCTAssertEqual(VerticalOrderTraversalOfABinaryTree().verticalTraversal(input), output)
  }

  func testVerticalTraversal3() {
    let input = TreeNode([1, 2, 3, 4, 6, 5, 7])
    let output = [[4], [2], [1, 5, 6], [3], [7]]
    XCTAssertEqual(VerticalOrderTraversalOfABinaryTree().verticalTraversal(input), output)
  }

  func testVerticalTraversal4() {
    let input = TreeNode([3, 1, 4, 0, 2, 2])
    let output = [[0], [1], [3, 2, 2], [4]]
    XCTAssertEqual(VerticalOrderTraversalOfABinaryTree().verticalTraversal(input), output)
  }
}

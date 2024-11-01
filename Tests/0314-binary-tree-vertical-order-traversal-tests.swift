@testable
import Leetcode
import XCTest

final class BinaryTreeVerticalOrderTraversalTests: XCTestCase {
  func testVerticalOrder1() {
    let input = TreeNode([3, 9, 20, nil, nil, 15, 7])
    let output = [[9], [3, 15], [20], [7]]
    XCTAssertEqual(BinaryTreeVerticalOrderTraversal().verticalOrder(input), output)
  }

  func testVerticalOrder2() {
    let input = TreeNode([3, 9, 8, 4, 0, 1, 7])
    let output = [[4], [9], [3, 0, 1], [8], [7]]
    XCTAssertEqual(BinaryTreeVerticalOrderTraversal().verticalOrder(input), output)
  }

  func testVerticalOrder3() {
    let input = TreeNode([3, 9, 8, 4, 0, 1, 7, nil, nil, nil, 2, 5])
    let output = [[4], [9, 5], [3, 0, 1], [8, 2], [7]]
    XCTAssertEqual(BinaryTreeVerticalOrderTraversal().verticalOrder(input), output)
  }
}

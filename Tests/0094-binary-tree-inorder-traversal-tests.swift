@testable
import Leetcode
import XCTest

final class BinaryTreeInorderTraversalTests: XCTestCase {
  func testInordertraversal1() {
    let input = TreeNode([1, nil, 2, 3])
    let output = [1, 3, 2]
    XCTAssertEqual(BinaryTreeInorderTraversal().inorderTraversal(input), output)
  }

  func testInordertraversal2() {
    let input = TreeNode([])
    let output = [] as [Int]
    XCTAssertEqual(BinaryTreeInorderTraversal().inorderTraversal(input), output)
  }

  func testInordertraversal3() {
    let input = TreeNode([1])
    let output = [1]
    XCTAssertEqual(BinaryTreeInorderTraversal().inorderTraversal(input), output)
  }
}

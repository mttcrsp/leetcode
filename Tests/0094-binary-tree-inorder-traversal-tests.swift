@testable
import Leetcode
import XCTest

final class BinaryTreeInorderTraversalTests: XCTestCase {
  func testTestInordertraversal1() {
    let input = TreeNode([1, 3, 2])
    let output = [3, 1, 2]
    XCTAssertEqual(BinaryTreeInorderTraversal().inorderTraversal(input), output)
  }

  func testTestInordertraversal2() {
    let input = TreeNode([])
    let output = [] as [Int]
    XCTAssertEqual(BinaryTreeInorderTraversal().inorderTraversal(input), output)
  }

  func testTestInordertraversal3() {
    let input = TreeNode([1])
    let output = [1]
    XCTAssertEqual(BinaryTreeInorderTraversal().inorderTraversal(input), output)
  }
}

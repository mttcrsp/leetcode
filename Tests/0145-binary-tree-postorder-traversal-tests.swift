@testable
import Leetcode
import XCTest

final class BinaryTreePostorderTraversalTests: XCTestCase {
  func testPostorderTraversal1() {
    let input = TreeNode([1, nil, 2, 3])
    let output = [3, 2, 1]
    XCTAssertEqual(BinaryTreePostorderTraversal().postorderTraversal(input), output)
  }

  func testPostorderTraversal2() {
    let input = TreeNode([1, 2, 3, 4, 5, nil, 8, nil, nil, 6, 7, 9])
    let output = [4, 6, 7, 5, 2, 9, 8, 3, 1]
    XCTAssertEqual(BinaryTreePostorderTraversal().postorderTraversal(input), output)
  }

  func testPostorderTraversal3() {
    let input = TreeNode([])
    let output = [] as [Int]
    XCTAssertEqual(BinaryTreePostorderTraversal().postorderTraversal(input), output)
  }

  func testPostorderTraversal4() {
    let input = TreeNode([1])
    let output = [1]
    XCTAssertEqual(BinaryTreePostorderTraversal().postorderTraversal(input), output)
  }
}

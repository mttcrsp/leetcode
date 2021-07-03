@testable
import Leetcode
import XCTest

final class BinaryTreeLevelOrderTraversalTests: XCTestCase {
  func testLevelOrder1() {
    let input = TreeNode.makeTree(with: [3, 9, 20, nil, nil, 15, 7])
    let output = [[3], [9, 20], [15, 7]]
    XCTAssertEqual(BinaryTreeLevelOrderTraversal().levelOrder(input), output)
  }

  func testLevelOrder2() {
    let input = TreeNode.makeTree(with: [1])
    let output = [[1]]
    XCTAssertEqual(BinaryTreeLevelOrderTraversal().levelOrder(input), output)
  }

  func testLevelOrder3() {
    let input = TreeNode.makeTree(with: [])
    let output = [] as [[Int]]
    XCTAssertEqual(BinaryTreeLevelOrderTraversal().levelOrder(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class CountGoodNodesInBinaryTreeTests: XCTestCase {
  func testTestGoodnodes1() {
    let input = TreeNode.makeTree(with: [3, 1, 4, 3, nil, 1, 5])
    let output = 4
    XCTAssertEqual(CountGoodNodesInBinaryTree().goodNodes(input), output)
  }

  func testTestGoodnodes2() {
    let input = TreeNode.makeTree(with: [3, 3, nil, 4, 2])
    let output = 3
    XCTAssertEqual(CountGoodNodesInBinaryTree().goodNodes(input), output)
  }

  func testTestGoodnodes3() {
    let input = TreeNode.makeTree(with: [1])
    let output = 1
    XCTAssertEqual(CountGoodNodesInBinaryTree().goodNodes(input), output)
  }

  func testTestGoodnodes4() {
    let input = TreeNode.makeTree(with: [9, nil, 3, 6])
    let output = 1
    XCTAssertEqual(CountGoodNodesInBinaryTree().goodNodes(input), output)
  }
}

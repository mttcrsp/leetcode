@testable
import Leetcode
import XCTest

final class CountGoodNodesInBinaryTreeTests: XCTestCase {
  func testGoodnodes1() {
    let input = TreeNode([3, 1, 4, 3, nil, 1, 5])
    let output = 4
    XCTAssertEqual(CountGoodNodesInBinaryTree().goodNodes(input), output)
  }

  func testGoodnodes2() {
    let input = TreeNode([3, 3, nil, 4, 2])
    let output = 3
    XCTAssertEqual(CountGoodNodesInBinaryTree().goodNodes(input), output)
  }

  func testGoodnodes3() {
    let input = TreeNode([1])
    let output = 1
    XCTAssertEqual(CountGoodNodesInBinaryTree().goodNodes(input), output)
  }

  func testGoodnodes4() {
    let input = TreeNode([9, nil, 3, 6])
    let output = 1
    XCTAssertEqual(CountGoodNodesInBinaryTree().goodNodes(input), output)
  }
}

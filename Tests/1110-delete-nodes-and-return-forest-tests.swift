@testable
import Leetcode
import XCTest

final class DeleteNodesAndReturnForestTests: XCTestCase {
  func testDelNodes1() {
    let input = (TreeNode.makeTree(with: [1, 2, 3, 4, 5, 6, 7]), [3, 5])
    let output = [
      TreeNode.makeTree(with: [1, 2, nil, 4]),
      TreeNode.makeTree(with: [6]),
      TreeNode.makeTree(with: [7]),
    ]
    XCTAssertEqual(DeleteNodesAndReturnForest().delNodes(input.0, input.1), output)
  }

  func testDelNodes2() {
    let input = (TreeNode.makeTree(with: [1, 2, 4, nil, 3]), [3])
    let output = [TreeNode.makeTree(with: [1, 2, 4])]
    XCTAssertEqual(DeleteNodesAndReturnForest().delNodes(input.0, input.1), output)
  }

  func testDelNodes3() {
    let input = (TreeNode.makeTree(with: [1, 2, 3, nil, nil, nil, 4]), [2, 1])
    let output = [TreeNode.makeTree(with: [3, nil, 4])]
    XCTAssertEqual(DeleteNodesAndReturnForest().delNodes(input.0, input.1), output)
  }
}

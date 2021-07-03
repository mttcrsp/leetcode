@testable
import Leetcode
import XCTest

final class BinaryTreeRightSideViewTests: XCTestCase {
  func testRightSideView1() {
    let input = TreeNode.makeTree(with: [1, 2, 3, nil, 5, nil, nil])
    let output = [1, 3, 5]
    XCTAssertEqual(BinaryTreeRightSideView().rightSideView(input), output)
  }

  func testRightSideView2() {
    let input = TreeNode.makeTree(with: [1, nil, 3])
    let output = [1, 3]
    XCTAssertEqual(BinaryTreeRightSideView().rightSideView(input), output)
  }

  func testRightSideView3() {
    let input = TreeNode.makeTree(with: [1, 2, nil, 4])
    let output = [1, 2, 4]
    XCTAssertEqual(BinaryTreeRightSideView().rightSideView(input), output)
  }
}

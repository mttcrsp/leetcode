@testable
import Leetcode
import XCTest

final class BinaryTreeTiltTests: XCTestCase {
  func testFindTilt1() {
    let input = TreeNode.makeTree(with: [1, 2, 3])
    let output = 1
    XCTAssertEqual(BinaryTreeTilt().findTilt(input), output)
  }

  func testFindTilt2() {
    let input = TreeNode.makeTree(with: [4, 2, 9, 3, 5, nil, 7])
    let output = 15
    XCTAssertEqual(BinaryTreeTilt().findTilt(input), output)
  }

  func testFindTilt3() {
    let input = TreeNode.makeTree(with: [21, 7, 14, 1, 1, 2, 2, 3, 3])
    let output = 9
    XCTAssertEqual(BinaryTreeTilt().findTilt(input), output)
  }
}

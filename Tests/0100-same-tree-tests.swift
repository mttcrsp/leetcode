@testable
import Leetcode
import XCTest

final class SameTreeTests: XCTestCase {
  func testIssametree1() {
    let input = ([1, 2, 3], [1, 2, 3])
    let output = true
    let lhs = TreeNode(input.0)
    let rhs = TreeNode(input.1)
    XCTAssertEqual(SameTree().isSameTree(lhs, rhs), output)
  }

  func testIssametree3() {
    let input = ([1, 2], [1, nil, 2])
    let output = false
    let lhs = TreeNode(input.0)
    let rhs = TreeNode(input.1)
    XCTAssertEqual(SameTree().isSameTree(lhs, rhs), output)
  }

  func testIssametree5() {
    let input = ([1, 2, 1], [1, 1, 2])
    let output = false
    let lhs = TreeNode(input.0)
    let rhs = TreeNode(input.1)
    XCTAssertEqual(SameTree().isSameTree(lhs, rhs), output)
  }
}

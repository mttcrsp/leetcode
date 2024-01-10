@testable
import Leetcode
import XCTest

final class KthSmallestElementInABstTests: XCTestCase {
  func testTestKthsmallest1() {
    let input = ([3, 1, 4, nil, 2], 1)
    let output = 1
    let tree = TreeNode(input.0)
    XCTAssertEqual(KthSmallestElementInABst().kthSmallest(tree, input.1), output)
  }

  func testTestKthsmallest2() {
    let input = ([5, 3, 6, 2, 4, nil, nil, 1], 3)
    let output = 3
    let tree = TreeNode(input.0)
    XCTAssertEqual(KthSmallestElementInABst().kthSmallest(tree, input.1), output)
  }
}

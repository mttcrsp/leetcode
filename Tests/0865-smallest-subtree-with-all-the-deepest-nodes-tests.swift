@testable
import Leetcode
import XCTest

final class SmallestSubtreeWithAllTheDeepestNodesTests: XCTestCase {
  func testSubtreeWithAllDeepest1() {
    let input = TreeNode([3, 5, 1, 6, 2, 0, 8, nil, nil, 7, 4])
    let output = TreeNode([2, 7, 4])
    XCTAssertEqual(SmallestSubtreeWithAllTheDeepestNodes().subtreeWithAllDeepest(input), output)
  }

  func testSubtreeWithAllDeepest2() {
    let input = TreeNode([1])
    let output = TreeNode([1])
    XCTAssertEqual(SmallestSubtreeWithAllTheDeepestNodes().subtreeWithAllDeepest(input), output)
  }

  func testSubtreeWithAllDeepest3() {
    let input = TreeNode([0, 1, 3, nil, 2])
    let output = TreeNode([2])
    XCTAssertEqual(SmallestSubtreeWithAllTheDeepestNodes().subtreeWithAllDeepest(input), output)
  }
}

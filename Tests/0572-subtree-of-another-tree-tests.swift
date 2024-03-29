@testable
import Leetcode
import XCTest

final class SubtreeOfAnotherTreeTests: XCTestCase {
  func testIssubtree1() {
    let input = ([3, 4, 5, 1, 2], [4, 1, 2])
    let output = true
    let root = TreeNode(input.0)
    let subTree = TreeNode(input.1)
    XCTAssertEqual(SubtreeOfAnotherTree().isSubtree(root, subTree), output)
  }

  func testIssubtree2() {
    let input = ([3, 4, 5, 1, 2, nil, nil, nil, nil, 0], [4, 1, 2])
    let output = false
    let root = TreeNode(input.0)
    let subTree = TreeNode(input.1)
    XCTAssertEqual(SubtreeOfAnotherTree().isSubtree(root, subTree), output)
  }
}

@testable
import Leetcode
import XCTest

final class SubtreeOfAnotherTreeTests: XCTestCase {
  func testTestIssubtree1() {
    let input = ([3, 4, 5, 1, 2], [4, 1, 2])
    let output = true
    let root = TreeNode.makeTree(with: input.0)
    let subTree = TreeNode.makeTree(with: input.1)
    XCTAssertEqual(SubtreeOfAnotherTree().isSubtree(root, subTree), output)
  }

  func testTestIssubtree2() {
    let input = ([3, 4, 5, 1, 2, nil, nil, nil, nil, 0], [4, 1, 2])
    let output = false
    let root = TreeNode.makeTree(with: input.0)
    let subTree = TreeNode.makeTree(with: input.1)
    XCTAssertEqual(SubtreeOfAnotherTree().isSubtree(root, subTree), output)
  }
}

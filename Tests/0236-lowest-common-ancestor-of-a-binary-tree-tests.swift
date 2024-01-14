@testable
import Leetcode
import XCTest

final class LowestCommonAncestorOfABinaryTreeTests: XCTestCase {
  func testTestLowestcommonancestor1() {
    let input = (TreeNode([3, 5, 1, 6, 2, 0, 8, nil, nil, 7, 4]), TreeNode(5), TreeNode(1))
    let output = 3
    XCTAssertEqual(LowestCommonAncestorOfABinaryTree().lowestCommonAncestor(input.0, input.1, input.2)?.val, output)
  }

  func testTestLowestcommonancestor2() {
    let input = (TreeNode([3, 5, 1, 6, 2, 0, 8, nil, nil, 7, 4]), TreeNode(5), TreeNode(4))
    let output = 5
    XCTAssertEqual(LowestCommonAncestorOfABinaryTree().lowestCommonAncestor(input.0, input.1, input.2)?.val, output)
  }

  func testTestLowestcommonancestor3() {
    let input = (TreeNode([1, 2]), TreeNode(1), TreeNode(2))
    let output = 1
    XCTAssertEqual(LowestCommonAncestorOfABinaryTree().lowestCommonAncestor(input.0, input.1, input.2)?.val, output)
  }
}

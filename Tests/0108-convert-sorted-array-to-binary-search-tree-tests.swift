@testable
import Leetcode
import XCTest

final class ConvertSortedArrayToBinarySearchTreeTests: XCTestCase {
  func testTestSortedarraytobst1() {
    let input = [-10, -3, 0, 5, 9]
    let output = TreeNode([0, -10, 5, nil, -3, nil, 9])
    XCTAssertEqual(ConvertSortedArrayToBinarySearchTree().sortedArrayToBST(input), output)
  }

  func testTestSortedarraytobst2() {
    let input = [1, 3]
    let output = TreeNode([1, nil, 3])
    XCTAssertEqual(ConvertSortedArrayToBinarySearchTree().sortedArrayToBST(input), output)
  }
}

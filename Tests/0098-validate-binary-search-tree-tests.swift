@testable
import Leetcode
import XCTest

final class ValidateBinarySearchTreeTests: XCTestCase {
  func testIsValidBST1() {
    let input = TreeNode([2, 1, 3])
    let output = true
    XCTAssertEqual(ValidateBinarySearchTree().isValidBST(input), output)
  }

  func testIsValidBST2() {
    let input = TreeNode([5, 1, 4, nil, nil, 3, 6])
    let output = false
    XCTAssertEqual(ValidateBinarySearchTree().isValidBST(input), output)
  }
}

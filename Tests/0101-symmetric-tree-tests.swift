@testable
import Leetcode
import XCTest

final class SymmetricTreeTests: XCTestCase {
  func testIsSymmetric1() {
    let input = TreeNode([1, 2, 2, 3, 4, 4, 3])
    let output = true
    XCTAssertEqual(SymmetricTree().isSymmetric(input), output)
  }

  func testIsSymmetric2() {
    let input = TreeNode([1, 2, 2, nil, 3, nil, 3])
    let output = false
    XCTAssertEqual(SymmetricTree().isSymmetric(input), output)
  }
}

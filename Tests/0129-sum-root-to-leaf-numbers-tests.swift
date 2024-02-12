@testable
import Leetcode
import XCTest

final class SumRootToLeafNumbersTests: XCTestCase {
  func testSumnumbers1() {
    let input = TreeNode([1, 2, 3])
    let output = 25
    XCTAssertEqual(SumRootToLeafNumbers().sumNumbers(input), output)
  }

  func testSumnumbers2() {
    let input = TreeNode([4, 9, 0, 5, 1])
    let output = 1026
    XCTAssertEqual(SumRootToLeafNumbers().sumNumbers(input), output)
  }
}

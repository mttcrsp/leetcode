@testable
import Leetcode
import XCTest

final class TwoSumIvInputIsABstTests: XCTestCase {
  func testFindTarget1() {
    let input = (TreeNode([5, 3, 6, 2, 4, nil, 7]), 9)
    let output = true
    XCTAssertEqual(TwoSumIvInputIsABst().findTarget(input.0, input.1), output)
  }

  func testFindTarget2() {
    let input = (TreeNode([5, 3, 6, 2, 4, nil, 7]), 28)
    let output = false
    XCTAssertEqual(TwoSumIvInputIsABst().findTarget(input.0, input.1), output)
  }
}

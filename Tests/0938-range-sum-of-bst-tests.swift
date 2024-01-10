@testable
import Leetcode
import XCTest

final class RangeSumOfBstTests: XCTestCase {
  func testRangeSumBST1() {
    let values: [Int?] = [10, 5, 15, 3, 7, nil, 18]
    let input = (TreeNode(values), 7, 15)
    let output = 32
    XCTAssertEqual(RangeSumOfBst().rangeSumBST(input.0, input.1, input.2), output)
  }

  func testRangeSumBST2() {
    let values: [Int?] = [10, 5, 15, 3, 7, 13, 18, 1, nil, 6]
    let input = (TreeNode(values), 6, 10)
    let output = 23
    XCTAssertEqual(RangeSumOfBst().rangeSumBST(input.0, input.1, input.2), output)
  }
}

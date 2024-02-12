@testable
import Leetcode
import XCTest

final class TargetSumTests: XCTestCase {
  func testFindtargetsumways1() {
    let input = ([1, 1, 1, 1, 1], 3)
    let output = 5
    XCTAssertEqual(TargetSum().findTargetSumWays(input.0, input.1), output)
  }

  func testFindtargetsumways3() {
    let input = ([1], 1)
    let output = 1
    XCTAssertEqual(TargetSum().findTargetSumWays(input.0, input.1), output)
  }
}

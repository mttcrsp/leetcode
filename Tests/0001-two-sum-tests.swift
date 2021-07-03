@testable
import Leetcode
import XCTest

final class TwoSumTests: XCTestCase {
  func testTwoSum1() {
    let input = ([2, 7, 11, 15], 9)
    let output = [0, 1]
    XCTAssertEqual(TwoSum().twoSum(input.0, input.1), output)
  }

  func testTwoSum2() {
    let input = ([3, 2, 4], 6)
    let output = [1, 2]
    XCTAssertEqual(TwoSum().twoSum(input.0, input.1), output)
  }

  func testTwoSum3() {
    let input = ([3, 3], 6)
    let output = [0, 1]
    XCTAssertEqual(TwoSum().twoSum(input.0, input.1), output)
  }
}

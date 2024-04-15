@testable
import Leetcode
import XCTest

final class NumberOfSubstringsWithOnly1STests: XCTestCase {
  func testNumSub1() {
    let input = "0110111"
    let output = 9
    XCTAssertEqual(NumberOfSubstringsWithOnly1S().numSub(input), output)
  }

  func testNumSub2() {
    let input = "101"
    let output = 2
    XCTAssertEqual(NumberOfSubstringsWithOnly1S().numSub(input), output)
  }

  func testNumSub3() {
    let input = "111111"
    let output = 21
    XCTAssertEqual(NumberOfSubstringsWithOnly1S().numSub(input), output)
  }
}

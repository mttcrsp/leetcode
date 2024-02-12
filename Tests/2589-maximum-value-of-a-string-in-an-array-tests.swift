@testable
import Leetcode
import XCTest

final class MaximumValueOfAStringInAnArrayTests: XCTestCase {
  func testMaximumvalue1() {
    let input = ["alic3", "bob", "3", "4", "00000"]
    let output = 5
    XCTAssertEqual(MaximumValueOfAStringInAnArray().maximumValue(input), output)
  }

  func testMaximumvalue2() {
    let input = ["1", "01", "001", "0001"]
    let output = 1
    XCTAssertEqual(MaximumValueOfAStringInAnArray().maximumValue(input), output)
  }

  func testMaximumvalue3() {
    let input = ["00002", "0a01"]
    let output = 4
    XCTAssertEqual(MaximumValueOfAStringInAnArray().maximumValue(input), output)
  }

  func testMaximumvalue4() {
    let input = ["12034"]
    let output = 12034
    XCTAssertEqual(MaximumValueOfAStringInAnArray().maximumValue(input), output)
  }
}

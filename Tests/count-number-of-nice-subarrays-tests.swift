@testable
import Leetcode
import XCTest

final class CountNumberOfNiceSubarraysTests: XCTestCase {
  func testNumberOfSubarrays1() {
    let input = ([1, 1, 2, 1, 1], 3)
    let output = 2
    XCTAssertEqual(CountNumberOfNiceSubarrays().numberOfSubarrays(input.0, input.1), output)
  }

  func testNumberOfSubarrays2() {
    let input = ([2, 4, 6], 1)
    let output = 0
    XCTAssertEqual(CountNumberOfNiceSubarrays().numberOfSubarrays(input.0, input.1), output)
  }

  func testNumberOfSubarrays3() {
    let input = ([2, 2, 2, 1, 2, 2, 1, 2, 2, 2], 2)
    let output = 16
    XCTAssertEqual(CountNumberOfNiceSubarrays().numberOfSubarrays(input.0, input.1), output)
  }
}

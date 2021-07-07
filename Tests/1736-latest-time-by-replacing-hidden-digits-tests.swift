@testable
import Leetcode
import XCTest

final class LatestTimeByReplacingHiddenDigitsTests: XCTestCase {
  func testMaximumTime1() {
    let input = "2?:?0"
    let output = "23:50"
    XCTAssertEqual(LatestTimeByReplacingHiddenDigits().maximumTime(input), output)
  }

  func testMaximumTime2() {
    let input = "0?:3?"
    let output = "09:39"
    XCTAssertEqual(LatestTimeByReplacingHiddenDigits().maximumTime(input), output)
  }

  func testMaximumTime3() {
    let input = "1?:22"
    let output = "19:22"
    XCTAssertEqual(LatestTimeByReplacingHiddenDigits().maximumTime(input), output)
  }

  func testMaximumTime4() {
    let input = "??:??"
    let output = "23:59"
    XCTAssertEqual(LatestTimeByReplacingHiddenDigits().maximumTime(input), output)
  }

  func testMaximumTime5() {
    let input = "0?:??"
    let output = "09:59"
    XCTAssertEqual(LatestTimeByReplacingHiddenDigits().maximumTime(input), output)
  }

  func testMaximumTime6() {
    let input = "1?:??"
    let output = "19:59"
    XCTAssertEqual(LatestTimeByReplacingHiddenDigits().maximumTime(input), output)
  }

  func testMaximumTime7() {
    let input = "?3:?0"
    let output = "23:50"
    XCTAssertEqual(LatestTimeByReplacingHiddenDigits().maximumTime(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class DayOfTheWeekTests: XCTestCase {
  func testDayOfTheWeek1() {
    let input = (31, 8, 2019)
    let output = "Saturday"
    XCTAssertEqual(DayOfTheWeek().dayOfTheWeek(input.0, input.1, input.2), output)
  }

  func testDayOfTheWeek2() {
    let input = (18, 7, 1999)
    let output = "Sunday"
    XCTAssertEqual(DayOfTheWeek().dayOfTheWeek(input.0, input.1, input.2), output)
  }

  func testDayOfTheWeek3() {
    let input = (15, 8, 1993)
    let output = "Sunday"
    XCTAssertEqual(DayOfTheWeek().dayOfTheWeek(input.0, input.1, input.2), output)
  }
}

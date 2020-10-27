@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testMyCalendar1() {
    let calendar = MyCalendar()
    XCTAssertTrue(calendar.book(10, 20))
    XCTAssertFalse(calendar.book(15, 25))
    XCTAssertTrue(calendar.book(20, 30))
  }
}

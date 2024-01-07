@testable
import Leetcode
import XCTest

final class NumberOfRecentCallsTests: XCTestCase {
  func testTestPing1() {
    let counter = RecentCounter()
    XCTAssertEqual(counter.ping(1), 1)
    XCTAssertEqual(counter.ping(100), 2)
    XCTAssertEqual(counter.ping(3001), 3)
    XCTAssertEqual(counter.ping(3002), 3)
  }
}

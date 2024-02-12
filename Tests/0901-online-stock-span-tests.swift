@testable
import Leetcode
import XCTest

final class OnlineStockSpanTests: XCTestCase {
  func testNext1() {
    let spanner = StockSpanner()
    XCTAssertEqual(spanner.next(100), 1)
    XCTAssertEqual(spanner.next(80), 1)
    XCTAssertEqual(spanner.next(60), 1)
    XCTAssertEqual(spanner.next(70), 2)
    XCTAssertEqual(spanner.next(60), 1)
    XCTAssertEqual(spanner.next(75), 4)
    XCTAssertEqual(spanner.next(85), 6)
  }
}

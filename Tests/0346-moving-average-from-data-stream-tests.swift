@testable
import Leetcode
import XCTest

final class MovingAverageTests: XCTestCase {
  func testMovingAverage1() {
    let movingAverage = MovingAverage(3)
    XCTAssertEqual(movingAverage.next(1), 1)
    XCTAssertEqual(movingAverage.next(10), 5.5)
    XCTAssertEqual(movingAverage.next(3), 4.66667, accuracy: 0.00001)
    XCTAssertEqual(movingAverage.next(5), 6)
  }
}

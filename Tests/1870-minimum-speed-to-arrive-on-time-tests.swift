@testable
import Leetcode
import XCTest

final class MinimumSpeedToArriveOnTimeTests: XCTestCase {
  func testTestMinspeedontime1() {
    let input = ([1, 3, 2], 6.0)
    let output = 1
    XCTAssertEqual(MinimumSpeedToArriveOnTime().minSpeedOnTime(input.0, input.1), output)
  }

  func testTestMinspeedontime2() {
    let input = ([1, 3, 2], 2.7)
    let output = 3
    XCTAssertEqual(MinimumSpeedToArriveOnTime().minSpeedOnTime(input.0, input.1), output)
  }

  func testTestMinspeedontime3() {
    let input = ([1, 3, 2], 1.9)
    let output = -1
    XCTAssertEqual(MinimumSpeedToArriveOnTime().minSpeedOnTime(input.0, input.1), output)
  }

  func testTestMinspeedontime4() {
    let input = ([1, 1, 100_000], 2.01)
    let output = 10_000_000
    XCTAssertEqual(MinimumSpeedToArriveOnTime().minSpeedOnTime(input.0, input.1), output)
  }
}

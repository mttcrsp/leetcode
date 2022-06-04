@testable
import Leetcode
import XCTest

final class DailyTemperaturesTests: XCTestCase {
  func testTestDailytemperatures1() {
    let input = [73, 74, 75, 71, 69, 72, 76, 73]
    let output = [1, 1, 4, 2, 1, 1, 0, 0]
    XCTAssertEqual(DailyTemperatures().dailyTemperatures(input), output)
  }

  func testTestDailytemperatures2() {
    let input = [30, 40, 50, 60]
    let output = [1, 1, 1, 0]
    XCTAssertEqual(DailyTemperatures().dailyTemperatures(input), output)
  }

  func testTestDailytemperatures3() {
    let input = [30, 60, 90]
    let output = [1, 1, 0]
    XCTAssertEqual(DailyTemperatures().dailyTemperatures(input), output)
  }

  func testTestDailytemperatures4() {
    let input = [30, 30, 30]
    let output = [0, 0, 0]
    XCTAssertEqual(DailyTemperatures().dailyTemperatures(input), output)
  }

  func testTestDailytemperatures5() {
    let input = [34, 33, 32, 31, 30]
    let output = [0, 0, 0, 0, 0]
    XCTAssertEqual(DailyTemperatures().dailyTemperatures(input), output)
  }
}

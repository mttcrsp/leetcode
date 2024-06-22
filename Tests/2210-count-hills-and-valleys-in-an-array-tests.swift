@testable
import Leetcode
import XCTest

final class CountHillsAndValleysInAnArrayTests: XCTestCase {
  func testCountHillValley1() {
    let input = [2, 4, 1, 1, 6, 5]
    let output = 3
    XCTAssertEqual(CountHillsAndValleysInAnArray().countHillValley(input), output)
  }

  func testCountHillValley2() {
    let input = [6, 6, 5, 5, 4, 1]
    let output = 0
    XCTAssertEqual(CountHillsAndValleysInAnArray().countHillValley(input), output)
  }
}

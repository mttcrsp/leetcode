@testable
import Leetcode
import XCTest

final class CountOddNumbersInAnIntervalRangeTests: XCTestCase {
  func testCountOdds1() {
    let input = (3, 7)
    let output = 3
    XCTAssertEqual(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1), output)
  }

  func testCountOdds2() {
    let input = (8, 10)
    let output = 1
    XCTAssertEqual(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1), output)
  }

  func testCountOdds3() {
    let input = (4, 4)
    let output = 0
    XCTAssertEqual(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1), output)
  }

  func testCountOdds4() {
    let input = (5, 7)
    let output = 2
    XCTAssertEqual(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1), output)
  }

  func testCountOdds5() {
    let input = (5, 18)
    let output = 7
    XCTAssertEqual(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1), output)
  }

  func testCountOdds6() {
    let input = (6, 17)
    let output = 6
    XCTAssertEqual(CountOddNumbersInAnIntervalRange().countOdds(input.0, input.1), output)
  }
}

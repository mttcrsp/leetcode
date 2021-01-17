@testable
import Leetcode
import XCTest

final class HowManyNumbersAreSmallerThanTheCurrentNumberTests: XCTestCase {
  func testSmallerNumbersThanCurrent1() {
    let input = [8, 1, 2, 2, 3]
    let output = [4, 0, 1, 1, 3]
    XCTAssertEqual(HowManyNumbersAreSmallerThanTheCurrentNumber().smallerNumbersThanCurrent(input), output)
  }

  func testSmallerNumbersThanCurrent2() {
    let input = [6, 5, 4, 8]
    let output = [2, 1, 0, 3]
    XCTAssertEqual(HowManyNumbersAreSmallerThanTheCurrentNumber().smallerNumbersThanCurrent(input), output)
  }

  func testSmallerNumbersThanCurrent3() {
    let input = [7, 7, 7, 7]
    let output = [0, 0, 0, 0]
    XCTAssertEqual(HowManyNumbersAreSmallerThanTheCurrentNumber().smallerNumbersThanCurrent(input), output)
  }
}

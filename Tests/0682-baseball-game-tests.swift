@testable
import Leetcode
import XCTest

final class BaseballGameTests: XCTestCase {
  func testCalPoints1() {
    let input = ["5", "2", "C", "D", "+"]
    let output = 30
    XCTAssertEqual(BaseballGame().calPoints(input), output)
  }

  func testCalPoints2() {
    let input = ["5", "-2", "4", "C", "D", "9", "+", "+"]
    let output = 27
    XCTAssertEqual(BaseballGame().calPoints(input), output)
  }
}

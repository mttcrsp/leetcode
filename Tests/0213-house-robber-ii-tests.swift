@testable
import Leetcode
import XCTest

final class HouseRobberIiTests: XCTestCase {
  func testRob1() {
    let input = [2, 3, 2]
    let output = 3
    XCTAssertEqual(HouseRobberIi().rob(input), output)
  }

  func testRob2() {
    let input = [1, 2, 3, 1]
    let output = 4
    XCTAssertEqual(HouseRobberIi().rob(input), output)
  }

  func testRob3() {
    let input = [1, 2, 3]
    let output = 3
    XCTAssertEqual(HouseRobberIi().rob(input), output)
  }
}

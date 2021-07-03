@testable
import Leetcode
import XCTest

final class HappyNumberTests: XCTestCase {
  func testIsHappy1() {
    let input = 19
    let output = true
    XCTAssertEqual(HappyNumber().isHappy(input), output)
  }

  func testIsHappy2() {
    let input = 25
    let output = false
    XCTAssertEqual(HappyNumber().isHappy(input), output)
  }

  func testIsHappy3() {
    let input = 0
    let output = false
    XCTAssertEqual(HappyNumber().isHappy(input), output)
  }

  func testIsHappy4() {
    let input = 9
    let output = false
    XCTAssertEqual(HappyNumber().isHappy(input), output)
  }

  func testIsHappy5() {
    let input = 7
    let output = true
    XCTAssertEqual(HappyNumber().isHappy(input), output)
  }
}

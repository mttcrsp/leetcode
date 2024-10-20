@testable
import Leetcode
import XCTest

final class StrobogrammaticNumberTests: XCTestCase {
  func testIsStrobogrammatic1() {
    let input = "69"
    let output = true
    XCTAssertEqual(StrobogrammaticNumber().isStrobogrammatic(input), output)
  }

  func testIsStrobogrammatic2() {
    let input = "88"
    let output = true
    XCTAssertEqual(StrobogrammaticNumber().isStrobogrammatic(input), output)
  }

  func testIsStrobogrammatic3() {
    let input = "962"
    let output = false
    XCTAssertEqual(StrobogrammaticNumber().isStrobogrammatic(input), output)
  }

  func testIsStrobogrammatic4() {
    let input = "111"
    let output = true
    XCTAssertEqual(StrobogrammaticNumber().isStrobogrammatic(input), output)
  }

  func testIsStrobogrammatic5() {
    let input = "141"
    let output = false
    XCTAssertEqual(StrobogrammaticNumber().isStrobogrammatic(input), output)
  }
}

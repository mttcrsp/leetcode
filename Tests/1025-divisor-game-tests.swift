@testable
import Leetcode
import XCTest

final class DivisorGameTests: XCTestCase {
  func testTestDivisorgame1() {
    let input = 2
    let output = true
    XCTAssertEqual(DivisorGame().divisorGame(input), output)
  }

  func testTestDivisorgame2() {
    let input = 3
    let output = false
    XCTAssertEqual(DivisorGame().divisorGame(input), output)
  }

  func testTestDivisorgame3() {
    let input = 14
    let output = true
    XCTAssertEqual(DivisorGame().divisorGame(input), output)
  }

  func testTestDivisorgame4() {
    let input = 1
    let output = false
    XCTAssertEqual(DivisorGame().divisorGame(input), output)
  }

  func testTestDivisorgame5() {
    let input = 1000
    let output = true
    XCTAssertEqual(DivisorGame().divisorGame(input), output)
  }
}

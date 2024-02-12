@testable
import Leetcode
import XCTest

final class DivisorGameTests: XCTestCase {
  func testDivisorgame1() {
    let input = 2
    let output = true
    XCTAssertEqual(DivisorGame().divisorGame(input), output)
  }

  func testDivisorgame2() {
    let input = 3
    let output = false
    XCTAssertEqual(DivisorGame().divisorGame(input), output)
  }

  func testDivisorgame3() {
    let input = 14
    let output = true
    XCTAssertEqual(DivisorGame().divisorGame(input), output)
  }

  func testDivisorgame4() {
    let input = 1
    let output = false
    XCTAssertEqual(DivisorGame().divisorGame(input), output)
  }

  func testDivisorgame5() {
    let input = 1000
    let output = true
    XCTAssertEqual(DivisorGame().divisorGame(input), output)
  }
}

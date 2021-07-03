@testable
import Leetcode
import XCTest

final class NThTribonacciNumberTests: XCTestCase {
  func testTribonacci1() {
    let input = 0
    let output = 0
    XCTAssertEqual(NThTribonacciNumber().tribonacci(input), output)
  }

  func testTribonacci2() {
    let input = 1
    let output = 1
    XCTAssertEqual(NThTribonacciNumber().tribonacci(input), output)
  }

  func testTribonacci3() {
    let input = 2
    let output = 1
    XCTAssertEqual(NThTribonacciNumber().tribonacci(input), output)
  }

  func testTribonacci4() {
    let input = 4
    let output = 4
    XCTAssertEqual(NThTribonacciNumber().tribonacci(input), output)
  }

  func testTribonacci5() {
    let input = 25
    let output = 1_389_537
    XCTAssertEqual(NThTribonacciNumber().tribonacci(input), output)
  }
}

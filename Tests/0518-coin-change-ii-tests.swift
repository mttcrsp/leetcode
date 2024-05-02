@testable
import Leetcode
import XCTest

final class CoinChangeIiTests: XCTestCase {
  func testChange1() {
    let input = (5, [1, 2, 5])
    let output = 4
    XCTAssertEqual(CoinChangeIi().change(input.0, input.1), output)
  }

  func testChange3() {
    let input = (3, [2])
    let output = 0
    XCTAssertEqual(CoinChangeIi().change(input.0, input.1), output)
  }

  func testChange5() {
    let input = (10, [10])
    let output = 1
    XCTAssertEqual(CoinChangeIi().change(input.0, input.1), output)
  }
}

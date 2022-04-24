@testable
import Leetcode
import XCTest

final class CountingBitsTests: XCTestCase {
  func testTestCountbits1() {
    let input = 2
    let output = [0, 1, 1]
    XCTAssertEqual(CountingBits().countBits(input), output)
  }

  func testTestCountbits2() {
    let input = 5
    let output = [0, 1, 1, 2, 1, 2]
    XCTAssertEqual(CountingBits().countBits(input), output)
  }

  func testTestCountbits3() {
    let input = 0
    let output = [0]
    XCTAssertEqual(CountingBits().countBits(input), output)
  }
}

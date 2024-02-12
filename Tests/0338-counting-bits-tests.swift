@testable
import Leetcode
import XCTest

final class CountingBitsTests: XCTestCase {
  func testCountbits1() {
    let input = 2
    let output = [0, 1, 1]
    XCTAssertEqual(CountingBits().countBits(input), output)
  }

  func testCountbits2() {
    let input = 5
    let output = [0, 1, 1, 2, 1, 2]
    XCTAssertEqual(CountingBits().countBits(input), output)
  }

  func testCountbits3() {
    let input = 0
    let output = [0]
    XCTAssertEqual(CountingBits().countBits(input), output)
  }
}

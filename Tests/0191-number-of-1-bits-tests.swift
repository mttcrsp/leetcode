@testable
import Leetcode
import XCTest

final class NumberOf1BitsTests: XCTestCase {
  // swiftformat:disable numberFormatting
  func testTestHammingweight1() {
    let input = 0b00000000000000000000000000001011
    let output = 3
    XCTAssertEqual(NumberOf1Bits().hammingWeight(input), output)
  }

  func testTestHammingweight2() {
    let input = 0b00000000000000000000000010000000
    let output = 1
    XCTAssertEqual(NumberOf1Bits().hammingWeight(input), output)
  }

  func testTestHammingweight3() {
    let input = 0b11111111111111111111111111111101
    let output = 31
    XCTAssertEqual(NumberOf1Bits().hammingWeight(input), output)
  }
  // swiftformat:enable numberFormatting
}

@testable
import Leetcode
import XCTest

final class MaximumSwapTests: XCTestCase {
  func testMaximumSwap1() {
    let input = 2736
    let output = 7236
    XCTAssertEqual(MaximumSwap().maximumSwap(input), output)
  }

  func testMaximumSwap2() {
    let input = 9973
    let output = 9973
    XCTAssertEqual(MaximumSwap().maximumSwap(input), output)
  }

  func testMaximumSwap3() {
    let input = 98368
    let output = 98863
    XCTAssertEqual(MaximumSwap().maximumSwap(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class CanPlaceFlowersTests: XCTestCase {
  func testCanplaceflowers1() {
    let input = ([1, 0, 0, 0, 1], 1)
    let output = true
    XCTAssertEqual(CanPlaceFlowers().canPlaceFlowers(input.0, input.1), output)
  }

  func testCanplaceflowers2() {
    let input = ([1, 0, 0, 0, 1], 2)
    let output = false
    XCTAssertEqual(CanPlaceFlowers().canPlaceFlowers(input.0, input.1), output)
  }

  func testCanplaceflowers3() {
    let input = ([1, 1, 1, 1, 1], 0)
    let output = true
    XCTAssertEqual(CanPlaceFlowers().canPlaceFlowers(input.0, input.1), output)
  }
}

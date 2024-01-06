@testable
import Leetcode
import XCTest

final class KokoEatingBananasTests: XCTestCase {
  func testTestMineatingspeed1() {
    let input = ([3, 6, 7, 11], 8)
    let output = 4
    XCTAssertEqual(KokoEatingBananas().minEatingSpeed(input.0, input.1), output)
  }

  func testTestMineatingspeed2() {
    let input = ([30, 11, 23, 4, 20], 5)
    let output = 30
    XCTAssertEqual(KokoEatingBananas().minEatingSpeed(input.0, input.1), output)
  }

  func testTestMineatingspeed3() {
    let input = ([30, 11, 23, 4, 20], 6)
    let output = 23
    XCTAssertEqual(KokoEatingBananas().minEatingSpeed(input.0, input.1), output)
  }
}

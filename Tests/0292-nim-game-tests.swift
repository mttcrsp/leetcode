@testable
import Leetcode
import XCTest

final class NimGameTests: XCTestCase {
  func testCanWinNim1() {
    let input = 4
    let output = false
    XCTAssertEqual(NimGame().canWinNim(input), output)
  }

  func testCanWinNim2() {
    let input = 1
    let output = true
    XCTAssertEqual(NimGame().canWinNim(input), output)
  }

  func testCanWinNim3() {
    let input = 2
    let output = true
    XCTAssertEqual(NimGame().canWinNim(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class NumberOfLaserBeamsInABankTests: XCTestCase {
  func testNumberofbeams1() {
    let input = ["011001", "000000", "010100", "001000"]
    let output = 8
    XCTAssertEqual(NumberOfLaserBeamsInABank().numberOfBeams(input), output)
  }

  func testNumberofbeams2() {
    let input = ["000", "111", "000"]
    let output = 0
    XCTAssertEqual(NumberOfLaserBeamsInABank().numberOfBeams(input), output)
  }

  func testNumberofbeams3() {
    let input = ["011001", "001000", "010100", "001000"]
    let output = 7
    XCTAssertEqual(NumberOfLaserBeamsInABank().numberOfBeams(input), output)
  }

  func testNumberofbeams4() {
    let input = ["0000"]
    let output = 0
    XCTAssertEqual(NumberOfLaserBeamsInABank().numberOfBeams(input), output)
  }
}

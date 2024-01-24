@testable
import Leetcode
import XCTest

final class NumberOfLinesToWriteStringTests: XCTestCase {
  func testTestNumberoflines1() {
    let input = (
      [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
      "abcdefghijklmnopqrstuvwxyz"
    )
    let output = [3, 60]
    XCTAssertEqual(NumberOfLinesToWriteString().numberOfLines(input.0, input.1), output)
  }

  func testTestNumberoflines3() {
    let input = (
      [4, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
      "bbbcccdddaaa"
    )
    let output = [2, 4]
    XCTAssertEqual(NumberOfLinesToWriteString().numberOfLines(input.0, input.1), output)
  }
}

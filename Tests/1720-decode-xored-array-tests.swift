@testable
import Leetcode
import XCTest

final class DecodeXoredArrayTests: XCTestCase {
  func testDecode1() {
    let input = ([1, 2, 3], 1)
    let output = [1, 0, 2, 1]
    XCTAssertEqual(DecodeXoredArray().decode(input.0, input.1), output)
  }

  func testDecode2() {
    let input = ([6, 2, 7, 3], 4)
    let output = [4, 2, 0, 7, 4]
    XCTAssertEqual(DecodeXoredArray().decode(input.0, input.1), output)
  }
}

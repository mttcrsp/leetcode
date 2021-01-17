@testable
import Leetcode
import XCTest

final class ImplementStrstrTests: XCTestCase {
  func testStrStr1() {
    let input = ("hello", "ll")
    let output = 2
    XCTAssertEqual(ImplementStrstr().strStr(input.0, input.1), output)
  }

  func testStrStr2() {
    let input = ("aaaaa", "bba")
    let output = -1
    XCTAssertEqual(ImplementStrstr().strStr(input.0, input.1), output)
  }

  func testStrStr3() {
    let input = ("", "")
    let output = 0
    XCTAssertEqual(ImplementStrstr().strStr(input.0, input.1), output)
  }

  func testStrStr4() {
    let input = ("aaaa", "aaaa")
    let output = 0
    XCTAssertEqual(ImplementStrstr().strStr(input.0, input.1), output)
  }
}

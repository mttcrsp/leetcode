@testable
import Leetcode
import XCTest

final class MinimumWindowSubstringTests: XCTestCase {
  func testMinWindow1() {
    let input = ("ADOBECODEBANC", "ABC")
    let output = "BANC"
    XCTAssertEqual(MinimumWindowSubstring().minWindow(input.0, input.1), output)
  }

  func testMinWindow2() {
    let input = ("a", "a")
    let output = "a"
    XCTAssertEqual(MinimumWindowSubstring().minWindow(input.0, input.1), output)
  }

  func testMinWindow3() {
    let input = ("a", "aa")
    let output = ""
    XCTAssertEqual(MinimumWindowSubstring().minWindow(input.0, input.1), output)
  }
}

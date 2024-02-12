@testable
import Leetcode
import XCTest

final class CheckWhetherTwoStringsAreAlmostEquivalentTests: XCTestCase {
  func testCheckalmostequivalent1() {
    let input = ("aaaa", "bccb")
    let output = false
    XCTAssertEqual(CheckWhetherTwoStringsAreAlmostEquivalent().checkAlmostEquivalent(input.0, input.1), output)
  }

  func testCheckalmostequivalent3() {
    let input = ("abcdeef", "abaaacc")
    let output = true
    XCTAssertEqual(CheckWhetherTwoStringsAreAlmostEquivalent().checkAlmostEquivalent(input.0, input.1), output)
  }

  func testCheckalmostequivalent5() {
    let input = ("cccddabba", "babababab")
    let output = true
    XCTAssertEqual(CheckWhetherTwoStringsAreAlmostEquivalent().checkAlmostEquivalent(input.0, input.1), output)
  }
}

@testable
import Leetcode
import XCTest

final class CheckWhetherTwoStringsAreAlmostEquivalentTests: XCTestCase {
  func testTestCheckalmostequivalent1() {
    let input = ("aaaa", "bccb")
    let output = false
    XCTAssertEqual(CheckWhetherTwoStringsAreAlmostEquivalent().checkAlmostEquivalent(input.0, input.1), output)
  }

  func testTestCheckalmostequivalent3() {
    let input = ("abcdeef", "abaaacc")
    let output = true
    XCTAssertEqual(CheckWhetherTwoStringsAreAlmostEquivalent().checkAlmostEquivalent(input.0, input.1), output)
  }

  func testTestCheckalmostequivalent5() {
    let input = ("cccddabba", "babababab")
    let output = true
    XCTAssertEqual(CheckWhetherTwoStringsAreAlmostEquivalent().checkAlmostEquivalent(input.0, input.1), output)
  }
}

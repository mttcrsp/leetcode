@testable
import Leetcode
import XCTest

final class DetermineIfTwoStringsAreCloseTests: XCTestCase {
  func testTestClosestrings1() {
    let input = ("abc", "bca")
    let output = true
    XCTAssertEqual(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1), output)
  }

  func testTestClosestrings2() {
    let input = ("a", "aa")
    let output = false
    XCTAssertEqual(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1), output)
  }

  func testTestClosestrings3() {
    let input = ("cabbba", "abbccc")
    let output = true
    XCTAssertEqual(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1), output)
  }

  func testTestClosestrings4() {
    let input = ("uau", "ssx")
    let output = false
    XCTAssertEqual(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1), output)
  }
}

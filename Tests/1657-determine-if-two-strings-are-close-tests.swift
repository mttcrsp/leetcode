@testable
import Leetcode
import XCTest

final class DetermineIfTwoStringsAreCloseTests: XCTestCase {
  func testClosestrings1() {
    let input = ("abc", "bca")
    let output = true
    XCTAssertEqual(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1), output)
  }

  func testClosestrings2() {
    let input = ("a", "aa")
    let output = false
    XCTAssertEqual(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1), output)
  }

  func testClosestrings3() {
    let input = ("cabbba", "abbccc")
    let output = true
    XCTAssertEqual(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1), output)
  }

  func testClosestrings4() {
    let input = ("uau", "ssx")
    let output = false
    XCTAssertEqual(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1), output)
  }
}

@testable
import Leetcode
import XCTest

final class ValidWordAbbreviationTests: XCTestCase {
  func testValidWordAbbreviation1() {
    let input = ("internationalization", "i12iz4n")
    let output = true
    XCTAssertEqual(ValidWordAbbreviation().validWordAbbreviation(input.0, input.1), output)
  }

  func testValidWordAbbreviation2() {
    let input = ("apple", "a2e")
    let output = false
    XCTAssertEqual(ValidWordAbbreviation().validWordAbbreviation(input.0, input.1), output)
  }

  func testValidWordAbbreviation3() {
    let input = ("s010n", "substitution")
    let output = false
    XCTAssertEqual(ValidWordAbbreviation().validWordAbbreviation(input.0, input.1), output)
  }

  func testValidWordAbbreviation4() {
    let input = ("internationalization", "i5a11o1")
    let output = true
    XCTAssertEqual(ValidWordAbbreviation().validWordAbbreviation(input.0, input.1), output)
  }
}

@testable
import Leetcode
import XCTest

final class ValidParenthesesTests: XCTestCase {
  func testIsvalid1() {
    let input = "()"
    let output = true
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }

  func testIsvalid2() {
    let input = "()[]{}"
    let output = true
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }

  func testIsvalid3() {
    let input = "(]"
    let output = false
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }

  func testIsvalid4() {
    let input = "{[()()]}"
    let output = true
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }

  func testIsvalid5() {
    let input = "())"
    let output = false
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }

  func testIsvalid6() {
    let input = "((()"
    let output = false
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }
}

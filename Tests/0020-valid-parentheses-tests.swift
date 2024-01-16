@testable
import Leetcode
import XCTest

final class ValidParenthesesTests: XCTestCase {
  func testTestIsvalid1() {
    let input = "()"
    let output = true
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }

  func testTestIsvalid2() {
    let input = "()[]{}"
    let output = true
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }

  func testTestIsvalid3() {
    let input = "(]"
    let output = false
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }

  func testTestIsvalid4() {
    let input = "{[()()]}"
    let output = true
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }

  func testTestIsvalid5() {
    let input = "())"
    let output = false
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }

  func testTestIsvalid6() {
    let input = "((()"
    let output = false
    XCTAssertEqual(ValidParentheses().isValid(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class MinimumRemoveToMakeValidParenthesesTests: XCTestCase {
  func testMinRemoveToMakeValid1() {
    let input = "lee(t(c)o)de)"
    let output = "lee(t(c)o)de"
    XCTAssertEqual(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid(input), output)
  }

  func testMinRemoveToMakeValid2() {
    let input = "a)b(c)d"
    let output = "ab(c)d"
    XCTAssertEqual(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid(input), output)
  }

  func testMinRemoveToMakeValid3() {
    let input = "))(("
    let output = ""
    XCTAssertEqual(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid(input), output)
  }

  func testMinRemoveToMakeValid4() {
    let input = "(a(b(c)d)"
    let output = "a(b(c)d)"
    XCTAssertEqual(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid(input), output)
  }

  func testMinRemoveToMakeValid5() {
    let input = "(()))()()()))"
    let output = "(())()()()"
    XCTAssertEqual(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid(input), output)
  }
}

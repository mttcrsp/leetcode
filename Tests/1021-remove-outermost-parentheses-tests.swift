@testable
import Leetcode
import XCTest

final class RemoveOutermostParenthesesTests: XCTestCase {
  func testRemoveouterparentheses1() {
    let input = "(()())(())"
    let output = "()()()"
    XCTAssertEqual(RemoveOutermostParentheses().removeOuterParentheses(input), output)
  }

  func testRemoveouterparentheses2() {
    let input = "(()())(())(()(()))"
    let output = "()()()()(())"
    XCTAssertEqual(RemoveOutermostParentheses().removeOuterParentheses(input), output)
  }

  func testRemoveouterparentheses3() {
    let input = "()()"
    let output = ""
    XCTAssertEqual(RemoveOutermostParentheses().removeOuterParentheses(input), output)
  }
}

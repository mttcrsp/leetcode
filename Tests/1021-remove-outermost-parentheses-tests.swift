@testable
import Leetcode
import XCTest

final class RemoveOutermostParenthesesTests: XCTestCase {
  func testTestRemoveouterparentheses1() {
    let input = "(()())(())"
    let output = "()()()"
    XCTAssertEqual(RemoveOutermostParentheses().removeOuterParentheses(input), output)
  }

  func testTestRemoveouterparentheses2() {
    let input = "(()())(())(()(()))"
    let output = "()()()()(())"
    XCTAssertEqual(RemoveOutermostParentheses().removeOuterParentheses(input), output)
  }

  func testTestRemoveouterparentheses3() {
    let input = "()()"
    let output = ""
    XCTAssertEqual(RemoveOutermostParentheses().removeOuterParentheses(input), output)
  }
}

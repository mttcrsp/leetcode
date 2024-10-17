@testable
import Leetcode
import Testing

@Suite
struct RemoveOutermostParenthesesTests {
  @Test func testRemoveouterparentheses1() {
    let input = "(()())(())"
    let output = "()()()"
    #expect(RemoveOutermostParentheses().removeOuterParentheses(input) == output)
  }

  @Test func testRemoveouterparentheses2() {
    let input = "(()())(())(()(()))"
    let output = "()()()()(())"
    #expect(RemoveOutermostParentheses().removeOuterParentheses(input) == output)
  }

  @Test func testRemoveouterparentheses3() {
    let input = "()()"
    let output = ""
    #expect(RemoveOutermostParentheses().removeOuterParentheses(input) == output)
  }
}

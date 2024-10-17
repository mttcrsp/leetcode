@testable
import Leetcode
import Testing

@Suite
struct MinimumRemoveToMakeValidParenthesesTests {
  @Test func testMinRemoveToMakeValid1() {
    let input = "lee(t(c)o)de)"
    let output = "lee(t(c)o)de"
    #expect(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid(input) == output)
  }

  @Test func testMinRemoveToMakeValid2() {
    let input = "a)b(c)d"
    let output = "ab(c)d"
    #expect(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid(input) == output)
  }

  @Test func testMinRemoveToMakeValid3() {
    let input = "))(("
    let output = ""
    #expect(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid(input) == output)
  }

  @Test func testMinRemoveToMakeValid4() {
    let input = "(a(b(c)d)"
    let output = "a(b(c)d)"
    #expect(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid(input) == output)
  }

  @Test func testMinRemoveToMakeValid5() {
    let input = "(()))()()()))"
    let output = "(())()()()"
    #expect(MinimumRemoveToMakeValidParentheses().minRemoveToMakeValid(input) == output)
  }
}

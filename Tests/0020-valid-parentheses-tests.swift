@testable
import Leetcode
import Testing

@Suite
struct ValidParenthesesTests {
  @Test func testIsvalid1() {
    let input = "()"
    let output = true
    #expect(ValidParentheses().isValid(input) == output)
  }

  @Test func testIsvalid2() {
    let input = "()[]{}"
    let output = true
    #expect(ValidParentheses().isValid(input) == output)
  }

  @Test func testIsvalid3() {
    let input = "(]"
    let output = false
    #expect(ValidParentheses().isValid(input) == output)
  }

  @Test func testIsvalid4() {
    let input = "{[()()]}"
    let output = true
    #expect(ValidParentheses().isValid(input) == output)
  }

  @Test func testIsvalid5() {
    let input = "())"
    let output = false
    #expect(ValidParentheses().isValid(input) == output)
  }

  @Test func testIsvalid6() {
    let input = "((()"
    let output = false
    #expect(ValidParentheses().isValid(input) == output)
  }
}

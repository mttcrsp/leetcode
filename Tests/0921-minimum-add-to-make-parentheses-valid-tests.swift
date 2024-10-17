@testable
import Leetcode
import Testing

@Suite
struct MinimumAddToMakeParenthesesValidTests {
  @Test func testMinAddToMakeValid1() {
    let input = "())"
    let output = 1
    #expect(MinimumAddToMakeParenthesesValid().minAddToMakeValid(input) == output)
  }

  @Test func testMinAddToMakeValid2() {
    let input = "((("
    let output = 3
    #expect(MinimumAddToMakeParenthesesValid().minAddToMakeValid(input) == output)
  }
}

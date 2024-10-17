@testable
import Leetcode
import Testing

@Suite
struct MinimumInsertionsToBalanceAParenthesesStringTests {
  @Test func testMinInsertions1() {
    let input = "(()))"
    let output = 1
    #expect(MinimumInsertionsToBalanceAParenthesesString().minInsertions(input) == output)
  }

  @Test func testMinInsertions2() {
    let input = "())"
    let output = 0
    #expect(MinimumInsertionsToBalanceAParenthesesString().minInsertions(input) == output)
  }

  @Test func testMinInsertions3() {
    let input = "))())("
    let output = 3
    #expect(MinimumInsertionsToBalanceAParenthesesString().minInsertions(input) == output)
  }

  @Test func testMinInsertions4() {
    let input = "(()((()(("
    let output = 12
    #expect(MinimumInsertionsToBalanceAParenthesesString().minInsertions(input) == output)
  }
}

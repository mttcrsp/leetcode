@testable
import Leetcode
import XCTest

final class MinimumInsertionsToBalanceAParenthesesStringTests: XCTestCase {
  func testMinInsertions1() {
    let input = "(()))"
    let output = 1
    XCTAssertEqual(MinimumInsertionsToBalanceAParenthesesString().minInsertions(input), output)
  }

  func testMinInsertions2() {
    let input = "())"
    let output = 0
    XCTAssertEqual(MinimumInsertionsToBalanceAParenthesesString().minInsertions(input), output)
  }

  func testMinInsertions3() {
    let input = "))())("
    let output = 3
    XCTAssertEqual(MinimumInsertionsToBalanceAParenthesesString().minInsertions(input), output)
  }

  func testMinInsertions4() {
    let input = "(()((()(("
    let output = 12
    XCTAssertEqual(MinimumInsertionsToBalanceAParenthesesString().minInsertions(input), output)
  }
}
